
<?php
include '../includes/dbc.php';
 $tab=1;
 $area=$_GET['rec'];
 $today=date('d-m-Y');
 @session_start();
	  $paidto=$_SESSION['user_name'];
	
@session_start();
  $level=$_SESSION['banned'];
 $id=$_SESSION['id'];
 if($level=='5' or $level=='20'){
  
	  
	  
	  //check if the day differnence is more thna 365 days
$rusn=mysql_query("SELECT DATEDIFF(CURDATE(),STR_TO_DATE(new, '%Y/%m/%d')) AS DAYS,r12,new
FROM roll where roll_id='1'") or die(mysql_error());
while($rows=mysql_fetch_assoc($rusn)){
	$left=($rows['DAYS']);
	   $sp=$rows['r12'];
	  $ri=$rows['new'];
}

   if($left>15  ) {
			echo "<script>alert('This software has expired since ".$ri.". This sofwtare will be blocked Soon ')</script>";
			
			echo '<meta http-equiv="Refresh" content="0; url=../login.php">';
					
	}
	else if(empty($level)){
			echo '<meta http-equiv="Refresh" content="0; url=../login.php">';
	}
	
	else {
				
 if($left>1 && $left<15 ) {
					echo "<script>alert('This software has expired . System will be bliocked Soon')</script>";


	}
	}


?>

<!DOCTYPE html>
<html>
<head>
  
	<link href="bootstrap.min.css" rel="stylesheet">
    <script src="jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="typeahead.js"></script>
	<style>
	body{
		font-size:16px
	}
	input[type="text"],
	input[type="number"]{
		padding:0px 20px;
		font-size:20px
	}
	.typeahead { border: 2px solid #FFF;border-radius: 4px;padding: 8px 12px;max-width: 600px;min-width: 600px;background:# fff;color: #000;}
	.tt-menu { width:300px; }
	ul.typeahead{margin:0px;padding:10px 0px;}
	ul.typeahead.dropdown-menu li a {padding: 10px !important;	border-bottom:#CCC 1px solid;color:#000;}
	ul.typeahead.dropdown-menu li:last-child a { border-bottom:0px !important; }
	.bgcolor {background:; color:#f00) no-repeat center center;padding: 100px 10px 130px;border-radius:4px;text-align:center;margin:10px;}
	.demo-label {font-size:1.5em;font-weight: 500;color:#f00;}
	.dropdown-menu>.active>a, .dropdown-menu>.active>a:focus, .dropdown-menu>.active>a:hover {
		color:#fff;
		text-decoration: none;
		background-color: #FF3;
		outline: 0;
		
		font-weight:bold;
	}
	</style>
    
    <script type="text/javascript">
function doCalc(form) {

  form.owed.value = ((parseInt(form.totalbill.value) - parseInt(form.paid.value)));
 
  
}
</script>

    <script>
    $(document).ready(function () {
        $('#txtCountry').typeahead({
            source: function (query, result) {
                $.ajax({
                    url: "server.php",
					data: 'query=' + query,            
                    dataType: "json",
                    type: "POST",
                    success: function (data) {
						result($.map(data, function (item) {
							return item;
                        }));
                    }
                });
            }
        });
    });
</script>	
</head>



<div class="container-fluid">
  <div class="row content">
  
     <div class="well" style=" background:#033; color:#fff">
 <form class="form-inline" role="form" method="post" action="">
  <div class="form-group">
    <label for="email">Search Product Name / barcode:</label>
    <input type="text" name="txtCountry"  id="txtCountry" class="typeahead" autofocus autocomplete="off" style="width:100%;  padding:5px 20px" placeholder=" Search Name or Barcode"/>

  </div>
  
 
     
    </form>
	</div>
    <div class="col-sm-3 sidenav">
      
      <iframe src="../clock/clock.php" style="width:100%; height:120px; margin-top:20PX"></iframe>
      <h4 style="border:2PX solid#00F; font-weight:bold; color:#F00"><?php echo $paidto; ?> TOTAL SALES  :<?PHP $dfm=$con->query("SELECT SUM(rec) as sales from daily WHERE date='$today'") or die(mysqli_error($con));
	$i=1;
while($ac=$dfm->fetch_assoc())
		{
			echo number_format($ac['sales']);
		}?> Frs</h4>
        <table class="table table-bordered">

        <tr>
        <th>#</th>
        <th>Amount</th>
        <th>Time</th>
                <th>Receipt Num</th>

       
         <th>Print</th>
      </tr>
    </thead>
    <tbody>
 <?php    
    $dfm=$con->query("SELECT * from daily WHERE date='$today' and paidto='$paidto' order by id DESC") or die(mysqli_error($con));
	$i=1;
while($ac=$dfm->fetch_assoc())
		{
			?>
      <tr>
        <td><?php echo $i++; ?></td>
       
        <td><?php echo number_format($ac['rec']); ?></td>
        <td><?php echo $ac['time']; ?></td>
                <td><?php echo $ac['idds']; ?></td>

        <td><a href="../rec2.php?roll=<?php echo $ac['idds']; ?>&r=<?php echo $ac['idds']; ?>" target="new"><img src="pr.png"></a>
      </tr>
     <?php } ?>
     
    
    </tbody>
  </table>
    </div>

    <div class="col-sm-9">
      
    
    
             
    <?php
	if(isset($_POST['txtCountry'])){
	 $prod=$_POST['txtCountry'];
	 $sp=$_POST['sp'];
	$dfm=$con->query("SELECT * from finals WHERE name='$prod' or barcode='$prod' LIMIT 1 ") or die(mysqli_error($con));
while($ac=$dfm->fetch_assoc())
		{
			
			 $thepro=$ac['name'];
			 $id=$ac['id'];
			$aviail=$ac['qty'];			
			$dbprice=$ac['sp'];
			
			
			
			/////end insert sales into basket
			
			} 
			
	?>
   
   
   
   
   
   <form method="post"  class="form-inline" role="form" action="">
  <div class="form-group">
    <label for="email"></label>
    <input type="text" class="form-control" value="<?php echo $thepro; ?>" readonly style="color:#F00; font-weight:bold; width:450px; border:2px solid#f00" name="prod" id="email">
  </div>
  <div class="form-group">
    <label for="pwd"></label>
    <input type="text" class="form-control" style="width:70px; color:#F00; font-weight:bold; border:2px solid#f00" value="<?php echo $aviail; ?>" name="avail" readonly id="pwd">
  </div>
  
  
   <div class="form-group">
    <label for="pwd"></label>
    <input type="text" class="form-control" style="width:110px; color:#F00; font-weight:bold; border:2px solid#f00" value="<?php echo $dbprice; ?>" name="sp" required id="pwd">
  </div>
  
   <div class="form-group">
    <label for="pwd"></label>
    <input type="text" class="form-control" style="width:90px; color:#000; font-weight:bold; border:2px solid#00F" name="qtty" required id="pwd" value="1" >
  </div>
 
 <input type="hidden" class="form-control"  name="id" value="<?php echo $id; ?>" required id="pwd">
 
   <button type="submit" class="btn btn-primary" name="sel">SELL</button>
</form>
<?php } ?>

 <table class="table table-bordered">
    <thead>
     <!---TOTL BILL GOES HERE---->
     <form method="post" action="?roll=<?php echo $tab; ?>">
      <tr style="background:#9F6; color:#000">
        <td></td>
        <td>TOTA BILL</td>
        <td></td>
        <td></td>
        <td><input type="text" name="totalbill" style="color:#f00; " value="<?php
		
		  $dfm=$con->query("SELECT SUM(price*qty) as tot from basket WHERE status='0' and qty>0 ") or die(mysqli_error($con));
	$i=1;
while($ac=$dfm->fetch_assoc())
		{
			echo $tot=$ac['tot'];
		}
		 ?>" onBlur="doCalc(this.form)" > </td>
      </tr>
      
      
      <!--amount paid---->
      
      
       <tr style="color:#009; font-weight:bold">
        <td></td>
        <td>AMOUNT PAID</td>
        <td></td>
        <td></td>
        <td><input type="number" name="paid" required  onBlur="doCalc(this.form)" style="color:#039;" > </td>
      </tr>
      
      
      
       <!--amount paid---->
      
      
       <tr style="background:#9F6; color:#000">
        <td></td>
        <td>YOUR CHANGE</td>
        <td></td>
        <td></td>
        <td><input type="text" name="owed" style="width:120px"  > 
   <button type="submit" class="btn btn-danger" name="okk">SAVE RECORDS</button></td>
      </tr>
      
      
      
      <tr>
        <th>#</th>
        <th>Product</th>
        <th>Unit Cost</th>
        <th>Qty</th>
        <th>Total Cost</th>
         <th>Delete</th>
      </tr>
    </thead>
    <tbody>
 <?php    
    $dfm=$con->query("SELECT * from basket WHERE status='0' and qty>0 ") or die(mysqli_error($con));
	$i=1;
while($ac=$dfm->fetch_assoc())
		{
			?>
      <tr>
        <td><?php echo $i++; ?></td>
        <td><?php echo $ac['product']; ?></td>
        <td><?php echo number_format($ac['price']); ?></td>
        <td><?php echo $ac['qty']; ?></td>
        <td><?php echo number_format($ac['price']*$ac['qty']); ?></td>
        <td><a href="index.php?del=<?php echo $ac['id']; ?>"><img src="delete.png"></a>
      </tr>
     <?php } ?>
     
    
    </tbody>
    
    
        <?php
		
	  /////geting all items from basket 
	  
	  $query 	= mysql_query("SELECT * FROM basket  where tab='1' and status= '0' ORDER BY id ASC") or die(mysql_error()); // Select from the table
 $count 	= mysql_num_rows($query); // Get the rows count
$date=date('d-m-Y');
		$time=date('h:i:s');
		$month=date('m');
		$year=date('Y');

                // Display the rows in inputs that can be editable
                while($row = mysql_fetch_array($query))	{
                    $i = $i + 1;
            ?>
            <tr>
                             

             
                 
                <td><input type="hidden" name="product<?php echo $i; ?>" value="<?php echo $row['product']; ?>" class="input" required style="width:190px" readonly   /></td>
                 <td><input type="hidden" name="category<?php echo $i; ?>" value="<?php echo $row['category']; ?>" class="input" style="width:160px" readonly  /></td>
                  <td><input type="hidden" name="price<?php echo $i; ?>" value="<?php echo $row['price']; ?>" class="input" style="width:60px" readonly  /></td>
                   <td><input type="hidden" name="qty<?php echo $i; ?>" value="<?php echo $row['qty']; ?>" class="input" style="width:60px" readonly  /></td>
                    
                     <td><input type="hidden" name="total<?php echo $i; ?>" value="<?php echo $row['qty']*$row['price']; ?>" class="input"  style="width:60px" readonly  /></td>
                     
                      <td><input type="hidden" name="discount<?php echo $i; ?>" value="<?php echo $row['sub']; ?>" class="input"  style="width:60px" readonly  /></td>
                      
                      
               <td><input type="hidden" name="name<?php echo $i; ?>" value="<?php echo $youno; ?>"    /></td>
                 <td><input type="hidden" name="table<?php echo $i; ?>" value="<?php echo $row['tab'];   ?>"    /></td>
 
               <td><input type="hidden" name="dbqty<?php echo $i; ?>" value="<?php 
			   $s=mysql_query("SELECT *  from finals where name='".$row['product']."'
			     LIMIT 1 ") or die(mysql_error());
				while($d=mysql_fetch_assoc($s)){
					echo $d['qty'];
				}   
			   
			    ?>"    /></td>
                
                 <td><input type="hidden" name="dbid<?php echo $i; ?>" value="<?php 
			   $s=mysql_query("SELECT *  from finals where name='".$row['product']."'
			     LIMIT 1 ") or die(mysql_error());
				while($d=mysql_fetch_assoc($s)){
					echo $d['id'];
				}   
			   
			    ?>"    /></td>
                
                
                 <td><input type="hidden" name="newdbqty<?php echo $i; ?>" value="<?php 
			   $s=mysql_query("SELECT *  from finals where name='".$row['product']."'
			     LIMIT 1 ") or die(mysql_error());
				while($d=mysql_fetch_assoc($s)){
					echo $d['qty']-$row['qty'];
				}   
			   
			    ?>"    /></td>
               
                 <td><input type="hidden" name="dbprice<?php echo $i; ?>" value="<?php echo $row['cp']; ?>"    /></td>
                 <td><input type="hidden" name="profit<?php echo $i; ?>" 
                value="<?php echo $row['profit']*$row['qty']; ?>" /></td>
                                <td><input type="hidden" name="ids<?php echo $i; ?>" value="<?php echo $row['id']; ?>" /></td>
                                 <td><input type="hidden" name="date<?php echo $i; ?>" value="<?php echo $row['date']; ?>" /></td>
                                   <td colspan="5" align="center">
                <input type="hidden" name="total" value="<?php echo $i; ?>" /> <?php // Post the total rows count value ?>

 </tr>
            <?php
                }
            ?>
  </table>
            
 </form>           
             
   
    
    <?php
	
	if(isset($_POST['sel'])){
 $id=$_POST['id'];
  $avqty=$_POST['avail'];
  $sold=$_POST['qtty'];
   $ssp=$_POST['sp'];
  $tab;
 if($sold>$avqty){
	 echo "<script>alert('ERROR.Only $avqty can be sold now')</script>";
 }
 else{
  $dfm=$con->query("SELECT * from finals WHERE id='$id' ") or die(mysqli_error($con));
while($ac=$dfm->fetch_assoc())
		{
			
			 $thepro=$ac['name'];
			 $id=$ac['id'];
			$aviail=$ac['qty'];			
			$dbprice=$ac['cost'];
			$sp=$ssp;
			$profit=$sp-$dbprice;
			$newqty=$aviail-$sold;
			 $category=$ac['disc'];  
			$day=date('d');
			$month=date('m');
			$year=date('Y');
			$date=date('d-m-Y'); 
			$time=date('h:i:s');
			$total=$sp;
			@session_start();
			$user=$_SESSION['user_name'];
			
			/////////check if it has been sold
			$check=$con->query("DELETE FROM basket WHERE product='$thepro' AND tab='$tab' AND status='0'  ") or die(mysqli_error($con));
	
		    $update=$con->query("insert into basket  set product='$thepro',category='$category',price='$sp',
	total='$total',qty='$sold',cp='$sp',status='',tab='$tab',ids='$id',opening_stocks='$aviail',closing_stocks='$newqty',area='$area',profit='$profit',time='$time',
date='$date',day='$day',month='$month',year='$year',froms=''")  or die(mysqli_error($con));
	echo '<meta http-equiv="Refresh" content="0; url=?">';
		}///closing else

		}
	
	
	
	
	}
	
	
	/////delete item
	if(isset($_GET['del'])){
		$DESLETE=$con->query("DELETE FROM basket WHERE id='".$_GET['del']."'   ") or die(mysqli_error($con));	
			echo '<meta http-equiv="Refresh" content="0; url=index.php">'; 
	
	}
	?>
	
	
    
</body>

</html>

<?PHP
  if(isset($_POST['okk'])) {
	
	$_POST = array_map("ucwords", $_POST);
	 
	 
	 $change=$_POST['owed'];
	 	
	
		
	 $paid=$_POST['paid'];
	$date=date('d-m-Y');
		$time=date('h:i:s');
		$month=date('m');
		$year=date('Y');
		$who=$_GET['roll'];

	$a = $con->query("SELECT SUM(price*qty) as totbill FROM basket where tab='".$_GET['roll']."' and status='0' GROUP BY tab") or die(mysqli_error($con));
			
		while($rows = $a->fetch_assoc()) {
			 $tot=$rows['totbill'];
		}
		$change=$tot-$paid;
		 @session_start();
	  $paidto=$_SESSION['user_name'];
		
			$acv=$con->query("INSERT INTO daily set cust_id='$who',room='',amt='$amt_owed',reason=' Bill',qty='1',price='$tot',total='$tot',
			owed='',date='$date',month='$month',year='$year',area='0',time='$time',paidto='".$paidto."',purpose='Bills' ,idds='',discount='$discoun',staffname='$name',rec='$tot',paidtou='$change' ") or die(mysqli_error($con));
		


	 $amt = $_POST['total']; // Get the total rows
	for($i=1; $i<=$amt; $i++) {
		$date=date('d-m-Y');
		$time=date('h:i:s');
		$month=date('m');
		$year=date('Y');
		$status=0;
		$state=1;
		$advance=0;
		
		 $_POST['allprice$i']=$_POST["quaties$i"];
		$_POST['allptotal$i']=$_POST["dbtota$i"];
		//expected income=dbprice * qty bought
		 $_POST['expectin$i']=($_POST["dbprice$i"])*($_POST["qty$i"]);
		//actual income
		 $_POST['actualin$i']=$_POST["price$i"]*$_POST["qty$i"];
		//profit
		
		 $profit=$_POST['actualin$i']-$_POST['expectin$i'];
		
		 
	//daily records
	
 
 $up_fin =$con->query("UPDATE finals set  name='".$_POST["product$i"]."',qty='".$_POST["newdbqty$i"]."'  WHERE id='".$_POST["dbid$i"]."'") or die(mysqli_error($con));
		 
	
		
		 $update_basket =$con->query("UPDATE  basket SET `status`= '2' ,discount='$discoun',opening_stocks='".$_POST["dbqty$i"]."',closing_stocks='".$_POST["newdbqty$i"]."'  WHERE id='".$_POST["ids$i"]."' and status= '0' ") or die(mysqli_error($con));
		 
		 
		 
	


echo "<script>window.open('../rec.php?roll=".$_GET['roll']."&br=".$_GET['name']."&change=".$change."','new')</script>";
		 

echo '<meta http-equiv="Refresh" content="0; url=index.php?roll=1&name=Anonymous ">';
	
	}

}	
 
 


?>

  
      
       
       <div style="background:#033; width:100%; position:fixed; bottom:5PX">
  
  
  
<div style="background:#033;  color:#ff0; padding:10px 10px; text-align:center; font-size:25px">
<?php 
		
$rusn=mysql_query("SELECT DATEDIFF(CURDATE(),STR_TO_DATE(new, '%Y/%m/%d')) AS DAYS,r12,new
FROM roll where roll_id='1'") or die(mysql_error());
while($rows=mysql_fetch_assoc($rusn)){
	$left=($rows['DAYS']);
	$date=$rows['r12'];
	   $ab=abs($left);
}

if ($left<0){
	echo $ab."&nbsp;&nbsp;Days Left for Software to Expire ($date)";
}
else {
	echo "<span style='color:#f00; text-shadow:1px 1px#fff'>WARNING!!! Software Has Expired</span>";
}
?> 

</div>


<?php ///close if and else tatement from top
 }
 ?>