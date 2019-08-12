
<?php
session_start();
include '../../includes/dbc.php';
include '../../includes/functions.php';
echo $_SESSION['id'];


$query =$con->query("SELECT * FROM users WHERE id=".$_GET['sid']) or die(mysqli_error($con));
 


 while($userRow=$query->fetch_array()){
 
 $paidto=$userRow['user_name'];
 $level=$userRow['banned'];
 
 }
 /////if the active user is admin, get the session user_level
 if($level==20){
 $yarea=$_GET['area'];	 
 }
 else {
	 $yarea=$level;
 }

 

 if(empty($level) or empty($yarea) ){
    header("Location: ../../login.php");

$ar=$level;


}
else{
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
		padding:0px 0px;
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
                    url: "server.php?area=<?php echo $_GET['area']; ?>",
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

<script language="JavaScript" src="../../js/pop-up.js"></script>
</head>



<div class="container-fluid" >
  <div class="row content" style=" height:900px; overflow:scroll">
  
     <div class="well" style=" background:#033; color:#fff">
 <form class="form-inline" role="form" method="post" action="">
  <div class="form-group">
    <label for="email">Search Product Name / barcode:</label>
    <input type="text" name="txtCountry"  id="txtCountry" class="typeahead" autofocus autocomplete="off" style="width:100%;  padding:5px 20px" placeholder=" Search Name or Barcode"/>
     <label for="email"><a href="?counter&area=<?php echo $yarea; ?>" style="color:#ff0; font-weight:bold; margin-left:20px; text-decoration:nones">SELL AT COUNTER</a></label> &nbsp;&nbsp;|   <label for="email"><a href="?table&area=<?php echo $yarea; ?>" style="color:#ff0; font-weight:bold; margin-left:20px; text-decoration:nones">SELL TO TABLE</a></label> |
     
       <label for="email">
        &nbsp;&nbsp; <a href="../../logout.php" style="color:#fFF; text-decoration:blink text-align:center; font-size:14px; font-weight:bold;"> LOG OUT</a>
       
        
        </label>
     
     <!--
        <label for="email">
        &nbsp;&nbsp; <a href=javascript:popcontact('addebtors.php') style="color:#fff; text-decoration:blink text-align:center; font-size:14px; font-weight:bold;"> ADD DEBTOR
       
        
        </label>-->

  </div>
  
 
     
    </form>
	</div>
    <div class="col-sm-3 sidenav">
      
      <h4 style="border:2PX solid#00F; background:#FF6; font-weight:bold; color:#F00"> <?PHP
	  
	  
	    $dfm=$con->query("SELECT * from sectors WHERE  area='$yarea'") or die(mysqli_error($con));

while($ac=$dfm->fetch_assoc())
		{
		echo	$sectt=$ac['name'];
		}?> Dashboard </h4>
      
      <iframe src="../clock/clock.php" style="width:100%; height:120px; margin-top:0PX"></iframe>
      <h4 style="border:2PX solid#00F; font-weight:bold; color:#F00"><?php echo $paidto; ?> TOTAL SALES  :<?PHP 
	  $today=date('d-m-Y');
	  $dfm=$con->query("SELECT SUM(rec) as sales from daily WHERE date='$today' and paidto='$paidto'") or die(mysqli_error($con));
	$i=1;
while($ac=$dfm->fetch_assoc())
		{
			echo number_format($ac['sales']);
		}?> Frs</h4>
        
        <ul class="list-group">
         
  <?php
  if(isset($_GET['table'])){
	  $vb=$con->query("SELECT * FROM bar_tables where sector='$yarea'") or die(mysqli_error($con));
	  while($dfl=$vb->fetch_assoc()){
  ?>  
  <a href="?table&area=<?php echo $yarea; ?>&tabs=<?php echo $dfl['id']; ?>&tname=<?php echo $dfl['num']; ?>" style="color:#fff; font-weight:bold; font-size:18px">
  <li class="list-group-item" style="background:#033; border:1px solid#fff">Table  <?php echo $dfl['num']; ?></li></a>
  <?php } }?>
 
</ul>
        
 
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
 	$today=date('d-m-Y');   
    $dfm=$con->query("SELECT * from daily WHERE date='$today' and paidto='$paidto' order by id DESC") or die(mysqli_error($con));
	$i=1;
while($ac=$dfm->fetch_assoc())
		{
			?>
      <tr>
        <td><?php echo $i++; ?></td>
       
        <td><?php echo number_format($ac['rec']); ?></td>
        <td><?php echo $ac['time']; ?></td>
                <td><?php echo $ac['time']; ?></td>
                <td> <a href=javascript:popcontact('swapping.php?roll=<?php echo $ac['idds']; ?>&tab=<?php echo $ac['idds']; ?>&area=<?php echo $ac['area']; ?>') style="color:#00F; text-decoration:blink text-align:center; font-weight:bold;">   
         
       Swapping</a></td>

        <td>
               
        <a href=javascript:popcontact('../../POS/content/rec2.php?roll=<?php echo $ac['idds']; ?>&r=<?php echo $ac['idds']; ?>&area=<?php echo $ac['area']; ?>') style="color:#f00; text-decoration:blink text-align:center; font-weight:bold;">   
         
       Print</a>
        
      </tr>
     <?php } ?>
     
    
    </tbody>
  </table>
    </div>

    <div class="col-sm-9" style=" height:2000px; overflow:scroll; ">
      
             
    <?php
	if(isset($_POST['txtCountry'])){
	 $prod=mysql_real_escape_string($_POST['txtCountry']);
	 $sp=$_POST['sp'];
	$dfm=$con->query("SELECT * from finals WHERE name='$prod'  and area='$yarea' ") or die(mysqli_error($con));
while($ac=$dfm->fetch_assoc())
		{
			
			 $thepro=$ac['name'];
			$id=$ac['id'];
			$aviail=$ac['qty'];			
			$dbprice=$ac['sp'];
			
			
			
			/////end insert sales into basket
			
			} 
			
	?>
   
   
   
   
   
   <form method="post"  class="form-inline" role="form" action="?area=<?php echo $yarea; ?>">
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
    
    <select class="form-control" id="sel1" name="qtty" onBlur="doCalc(this.form)" required>
        <option value="<?php echo $day; ?>"  onBlur="doCalc(this.form)"></option>
    <?php 
					for($day=1;$day<=31;$day++)
					{
					echo "<option value='$day'>$day</option>";
					}
					?>
  </select>
    <!--<input type="text" class="form-control" style="width:90px; color:#000; font-weight:bold; border:2px solid#00F" name="qtty" required id="pwd" value="1" >-->
  </div>
 
 <input type="hidden" class="form-control"  name="id" value="<?php echo $id; ?>" required id="pwd">
 
 <input type="hidden" class="form-control"  name="status" value="<?php  if(isset($_GET['tabs'])){
	 echo $sta=5;
 }
 else {
	echo $sta=0;
 }; ?>" required id="pwd">
 
  <input type="hidden" class="form-control"  name="table" value="<?php  if(isset($_GET['tabs'])){
	 echo $tbl=$_GET['tabs'];
 }
 else {
	
 }; ?>" required id="pwd">
 
   <button type="submit" class="btn btn-primary" name="sel">SELL</button>
</form>
<?php } ?>

<?php
if(isset($_GET['tabs'])){
	
	   $dfm=$con->query("SELECT * from bar_tables WHERE  id='".$_GET['tabs']."' ") or die(mysqli_error($con));

while($ac=$dfm->fetch_assoc())
		{
			$tn=$ac['num'];
		}
	
?>
<h2>SELLING TO TABLE <span style="color:#f00; font-weight:bold"><?php echo $tn; ?></span></h2>
<?php 
} ?>
 <table class="table table-bordered" style="line-height:1">
    <thead>
     <!---TOTL BILL GOES HERE---->
     <form method="post" action="?area=<?php echo $yarea; ?>">
      <tr style="background:#9F6; color:#000">
        <td></td>
        <td>TOTA BILL</td>
        <td></td>
        <td></td>
        <td><input type="text" name="totalbill" style="color:#f00; " value="<?php
		
		  $dfm=$con->query("SELECT SUM(price*qty) as tot from basket WHERE status='0' and agent='$paidto' and qty>0 ") or die(mysqli_error($con));
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
          <th>Subtract</th>
           <th>Add</th>
      </tr>
    </thead>
    <tbody>
 <?php    
    $dfm=$con->query("SELECT * from basket WHERE area='$yarea' and status='0' and agent='$paidto'  and qty>0 ") or die(mysqli_error($con));
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
        <td><a href="index.php?area=<?php echo $yarea; ?>&del=<?php echo $ac['id']; ?>&sid=<?php echo $_GET['sid']; ?>"><img src="../cross.png"></a></td>
        <td><a href="index.php?area=<?php echo $_GET['area']; ?>&roll=<?php echo $_GET['roll']; ?>&qty=<?php echo $ac['qty']; ?>&sub=<?php echo $ac['id']; ?>&sid=<?php echo $_GET['sid']; ?>"><img src="../delete.png"></a></td>
        
         <td><a href="index.php?area=<?php echo $_GET['area']; ?>&roll=<?php echo $_GET['roll']; ?>&qty=<?php echo $ac['qty']; ?>&add=<?php echo $ac['id']; ?>&sid=<?php echo $_GET['sid']; ?>"><img src="../plus.png"></a></td>
      </tr>
     <?php } ?>
     
    
    </tbody>
    
    
        <?php
		
	  /////geting all items from basket 
	  
	  $query 	= mysql_query("SELECT * FROM basket  where  area='$yarea' and status= '0' and agent='$paidto' ORDER BY id ASC") or die(mysql_error()); // Select from the table
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
                    
                     <td><input type="hidden" name="totals<?php echo $i; ?>" value="<?php echo $row['qty']*$row['price']; ?>" class="input"  style="width:60px" readonly  /></td>
                     
                      <td><input type="hidden" name="discount<?php echo $i; ?>" value="<?php echo $row['sub']; ?>" class="input"  style="width:60px" readonly  /></td>
                      
                      
               <td><input type="hidden" name="name<?php echo $i; ?>" value="<?php echo $youno; ?>"    /></td>
                 <td><input type="hidden" name="table<?php echo $i; ?>" value="<?php echo $row['tab'];   ?>"    /></td>
 
               <td><input type="hidden" name="dbqty<?php echo $i; ?>" value="<?php 
			   $s=mysql_query("SELECT *  from supermkt where name='".$row['product']."'
			     LIMIT 1 ") or die(mysql_error());
				while($d=mysql_fetch_assoc($s)){
					echo $d['qty'];
				}   
			   
			    ?>"    /></td>
                
                 <td><input type="hidden" name="dbid<?php echo $i; ?>" value="<?php 
			   $s=mysql_query("SELECT *  from finals where name='".$row['product']."' and area='$yarea'
			     LIMIT 1 ") or die(mysql_error());
				while($d=mysql_fetch_assoc($s)){
					echo $d['id'];
				}   
			   
			    ?>"    /></td>
                
                
                 <td><input type="hidden" name="newdbqty<?php echo $i; ?>" value="<?php 
			   $s=mysql_query("SELECT *  from finals where name='".$row['product']."' and area='$yarea'
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
				$tab=$_POST['table'];			
				$status=$_POST['status'];;
			
			/////////check if it has been sold
			$check=$con->query("DELETE FROM basket WHERE product='$thepro' and area='$yarea' and agent='$paidto'  AND tab='$tab' AND status='0'  ") or die(mysqli_error($con));
	
		    $update=$con->query("insert into basket  set product='$thepro',category='$category',price='$sp',
	total='$total',qty='$sold',cp='$sp',status='$status',tab='$tab',ids='$id',opening_stocks='$aviail',closing_stocks='$newqty',area='$yarea',profit='$profit',time='$time',
date='$date',day='$day',month='$month',year='$year',froms='',agent='$paidto'")  or die(mysqli_error($con));


/*echo "<script>window.open('recg.php?area=".$yarea."&br=".$_GET['name']."&change=".$change."','_new')</script>";*/
		//if selling to table
		if($status==5){
				 
	echo '<meta http-equiv="Refresh" content="0; url=?area='.$yarea.'&table&tabs='.$tab.'&sid='.$_GET['sid'].'">';
		}
		else {
		 
	echo '<meta http-equiv="Refresh" content="0; url=?area='.$yarea.'&sid='.$_GET['sid'].'">';
		}
		}///closing else

		}
	
	
	
	
	}
	
	
	/////delete item
	if(isset($_GET['del'])){
		$DESLETE=$con->query("DELETE FROM basket WHERE id='".$_GET['del']."'   ") or die(mysqli_error($con));	
			echo '<meta http-equiv="Refresh" content="0; url=index.php?area='.$yarea.'&sid='.$_GET['sid'].'">'; 
	
	}
	
	
	if(isset($_GET['sub'])){
		$qty=$_GET['qty'];
		$new_qty=$qty-1;
		
		$DESLETE=$con->query("UPDATE basket SET qty='$new_qty' WHERE id='".$_GET['sub']."'   ") or die(mysqli_error($con));	
			echo '<meta http-equiv="Refresh" content="0; url=index.php?area='.$yarea.'&roll='. $_GET['roll'].'&sid='.$_GET['sid'].'">'; 
	
	}
	
	
	
	
	if(isset($_GET['add'])){
		$qty=$_GET['qty'];
		$new_qty=$qty+1;
		
		$DESLETE=$con->query("UPDATE basket SET qty='$new_qty' WHERE id='".$_GET['add']."'   ") or die(mysqli_error($con));	
			echo '<meta http-equiv="Refresh" content="0; url=index.php?area='.$yarea.'&roll='. $_GET['roll'].'&sid='.$_GET['sid'].'">'; 
	
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

	$a = $con->query("SELECT SUM(price*qty) as totbill FROM basket where tab='".$_GET['roll']."' and area='$yarea' and status='0' and agent='$paidto' GROUP BY tab") or die(mysqli_error($con));
			
		while($rows = $a->fetch_assoc()) {
			echo $tot=$rows['totbill'];
		}
		$change=$tot-$paid;
			if($change>0){
			echo "<script>alert('ERROR. Please the client should pay $tot')</script>";
		}
		else {
		
		$acv=$con->query("INSERT INTO daily set cust_id='$who',room='',amt='$amt_owed',reason=' Bill',qty='1',price='$tot',total='$tot',
			owed='',date='$date',month='$month',year='$year',area='$yarea',time='$time',paidto='".$paidto."',purpose='Bills' ,idds='',discount='$discoun',staffname='$name',rec='$tot',paidtou='$change' ") or die(mysqli_error($con));
	


 $amt = $_POST['total']; // Get the total rows
	for($i=1; $i<=$amt; $i++) {
		$date=date('d-m-Y');
		$time=date('h:i:s');
		$month=date('m');
		$year=date('Y');
		$status=0;
		$state=1;
		$advance=0;
		
	//daily records
	
 
 $up_fin12 =$con->query("UPDATE finals set  qty='".$_POST["newdbqty$i"]."'  WHERE id='".$_POST["dbid$i"]."' ") or die(mysqli_error($con));
		 
	
		 $update_basket =$con->query("UPDATE  basket SET `status`= '2' ,discount='$discoun',opening_stocks='".$_POST["dbqty$i"]."',closing_stocks='".$_POST["newdbqty$i"]."'  WHERE area='".$yarea."' and status= '0' and agent='$paidto' ") or die(mysqli_error($con));
		 
		 
		 
	
	//echo '<meta http-equiv="Refresh" content="0; url=?area='.$_GET['area'].'">';
	
	
echo "<script>window.open('recg.php?area=".$yarea."&br=".$_GET['name']."&change=".$change."','_self')</script>";
		 
	
	}

}	
 
 
  }



?>
<!-----INDIVIDUAL BILLS-------->



          
          
          
          
           
         <?php
 $section=$_GET['area'];
 $table=$_GET['tabs'];
 //bar area
if($section=='15'){

	$a_area='15';
	$page='../bar/restaupage.php';
	$db_table='our_tables';
	$serial='Bar';
	$db_basket='basket';
	$back='15';
	
}

 ?>
       
    
       
       
         <!----------------------->
   
   <script>
	function ajax(){
		
		var req = new XMLHttpRequest();
		
		req.onreadystatechange = function(){
		
		if(req.readyState == 4 && req.status == 200){
		
		document.getElementById('chat').innerHTML = req.responseText;
		} 
		}
		req.open('GET','billing.php?area=<?php echo $yarea; ?>',true); 
		req.send();
		
		}
		setInterval(function(){ajax()},1000);

</script>
 
    
    
    <body onLoad="ajax();">

		<div id="chat"></div>
		</div>
   
  
   


  </div>
</div>
          </div>
        </div>
        

<!-----END INDIVIDUAL------->
      
       
       
  
  

<?php 
		
}
?> 
