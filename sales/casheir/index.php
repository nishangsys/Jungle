
<?php
@session_start();
include '../../includes/dbc.php';
include '../../includes/functions.php';

 $query =$con->query("SELECT * FROM users WHERE id='".$_SESSION['userSession']."' ") or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
 $paidto=$userRow['user_name'];
 $level=$userRow['banned'];
 
 }
 ////Get latest time for shift change
  //date_default_timezone_set("Douala/Cameroon");
        $time1=date('Gi');	////current time	   
		 $see=date('d-m-Y');		   
$C=$con->query("SELECT * FROM overtime where id='1' order by id DESC LIMIT 1") or die(mysqli_error($con));
		    while($r=$C->fetch_assoc()){
				$TY=$r['time'];
				
			}	
		  
		////if current time is less than max shift time      
		   if($time1>=0001 and $time1<=$TY){
           $cur_date=date("d-m-Y", strtotime( '-1 days' ) ); 
		   }
		   else {
		   $cur_date=date('d-m-Y');	  
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
		padding:0px 10px;
		font-size:20px
	}
	
	.gst20{

			margin-top:20px;

		}

		#hdTuto_search{

			display: none;

		}

		.list-gpfrm-list a{

			text-decoration: none !important;

		}

		.list-gpfrm li{

			cursor: pointer;
			padding: 10px 10px;
			border-bottom:1px solid#000;

		}

		.list-gpfrm{

			list-style-type: none;

    		background: #00F;
			padding:0px 10px;

		}

		.list-gpfrm li:hover{

			color: white;

			background-color: #033;

		}

	</style>
    
    
    <script type="text/javascript">
function doCalc(form) {

  form.owed.value = ((parseInt(form.totalbill.value) - parseInt(form.paid.value)));
 
  
}
</script>

 



            
<script src="js/jquery_search.js"></script>

<script type="text/javascript">

	$(document).ready(function(){

	//Autocomplete search using PHP, MySQLi, Ajax and jQuery

		//generate suggestion on keyup

		$('#querystr').keyup(function(e){

			e.preventDefault();

			var form = $('#hdTutoForm').serialize();

			$.ajax({

				type: 'POST',

				url: 'do_search.php?area=<?php echo $_GET['area']; ?>',

				data: form,

				dataType: 'json',

				success: function(response){

					if(response.error){

						$('#hdTuto_search').hide();

					}

					else{

						$('#hdTuto_search').show().html(response.data);

					}

				}

			});

		});



		//fill the input

		$(document).on('click', '.list-gpfrm-list', function(e){

			e.preventDefault();

			$('#hdTuto_search').hide();

			var fullname = $(this).data('fullname');

			$('#querystr').val(fullname);

		});

	});

</script>

<script language="JavaScript" src="../../js/pop-up.js"></script>
</head>



<div class="container-fluid" >
  <div class="row content" style=" height:900px; overflow:scroll">
  
     <div class="well" style=" background:#033; color:#fff">
<div class="row justify-content-center gst20">
<form id="hdTutoForm" method="POST" action="">

		<div class="col-sm-6">

			
				<div class="input-gpfrm input-gpfrm-lg">

				  <table style="width:70%"><tr><td>	<input type="text" id="querystr" name="querystr" class="form-control" placeholder="Search Name"  aria-describedby="basic-addon2" autocomplete="off"></td><td>
                    
                    	<input type="hidden" id="querystr" name="names" class="form-control" value="<?php echo $name;  ?>"> <button class="btn btn-warning" name="sellit">SEARCH</button></td></tr>
                        </table>
                    


				</div>

			

			<ul class="list-gpfrm" id="hdTuto_search"></ul>
            

		</div>

     <!-- 
     <label for="email"><a href="?counter&area=<?php echo $yarea; ?>" style="color:#ff0; font-weight:bold; margin-left:20px; text-decoration:nones">SELL AT COUNTER</a></label> &nbsp;&nbsp;|  ---> 
   
     <label for="email"><a href="?table&area=<?php echo $yarea; ?>" style="color:#ff0; font-weight:bold; margin-left:20px; text-decoration:nones">SELL TO TABLE</a></label> |
     
        <a href=javascript:popcontact('my_sales.php?roll=<?php echo $_SESSION['userSession']; ?>&area=<?php echo $area; ?>') style="color:#ff0; text-decoration:blink text-align:center; font-size:14px; font-weight:bold;"> PRINT TODAY SALES
        </A>
        |
        
        <a href=javascript:popcontact('my_stock.php?roll=<?php echo $_SESSION['userSession']; ?>&area=<?php echo $yarea; ?>') style="color:#ff0; text-decoration:blink text-align:center; font-size:14px; font-weight:bold; text-transform:uppercase"> view current stock
        </A>
        
     
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
      <h4 style="border:2PX solid#00F; font-weight:bold; padding:10px 10px; color:#F00"><?php echo $paidto; ?> TOTAL SALES  :<?PHP 
	  $today=date('d-m-Y');
	  
	  $dfm=$con->query("SELECT SUM(rec) as sales from daily WHERE date='$cur_date' and paidto='$paidto'") or die(mysqli_error($con));
	$i=1;
while($ac=$dfm->fetch_assoc())
		{
			echo number_format($ac['sales']);
		}?> Frs  <BR
        > ON &nbsp;&nbsp; &nbsp;  <?PHP echo $cur_date; ?></h4>
        
        <ul class="list-group">
         
  <?php
  if(isset($_GET['table'])){
	  $vb=$con->query("SELECT * FROM bar_tables where sector='$yarea'") or die(mysqli_error($con));
	  while($dfl=$vb->fetch_assoc()){
  ?>  
  <li class="list-group-item" style="background:#033; border:1px solid#fff; color:#fff; font-weight:bold" >Table  <?php echo $dfl['num']; ?> 
  
 <a href="rounds.php?tab=<?php echo $dfl['id']; ?>&area=<?php echo $yarea; ?>" class="btn-warning"><button type="button" class="btn btn-warning" style="float:right">Create Round</button>
        </A>  |
        
        
      
  </li>  
    
    
     <?php 
	 
	 $today=date('d-m-Y');
	 $acg=$con->query("SELECT * FROM rounds where  num='".$dfl['num']."'   and who='".$_SESSION['userSession']."' and area='".$_GET['area']."' and date='$cur_date' ") or die(mysqli_error($con));
	  while($bcg=$acg->fetch_assoc()){
		  ?>
          
  <a href="?table&area=<?php echo $yarea; ?>&tabs=<?php echo $dfl['id']; ?>&tname=<?php echo $dfl['num']; ?>&oname=<?php echo $bcg['oname']; ?>" style="color:#fff; font-weight:bold; font-size:18px">
           <li class="list-group-item" style="background:#09C; margin-left:30px; font-weight:bold; border:1px solid#fff"><?php echo $dfl['num']; ?> <?php echo $bcg['oname']; ?> </a>
           
           
        <a href="?close=<?php echo $bcg['id']; ?>&table" class="btn-info"><button type="button" class="btn btn-danger" style="float:right">Close Command</button>
        </A>      
           </li>
          
          <?php } ?>

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
    $dfm=$con->query("SELECT * from daily WHERE date='$cur_date' and paidto='$paidto' order by id DESC") or die(mysqli_error($con));
	$i=1;
while($ac=$dfm->fetch_assoc())
		{
			?>
      <tr>
        <td><?php echo $i++; ?></td>
       
        <td><?php echo number_format($ac['rec']); ?></td>
        <td><?php echo $ac['time']; ?></td>
                <td> <!--<a href=javascript:popcontact('swapping.php?roll=<?php echo $ac['idds']; ?>&tab=<?php echo $ac['idds']; ?>&area=<?php echo $ac['area']; ?>') style="color:#00F; text-decoration:blink text-align:center; font-weight:bold;">   
         
       Swapping</a>---> </td>

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
	if(isset($_POST['sellit'])){
	 $prod=mysql_real_escape_string($_POST['querystr']);
	 $sp=$_POST['sp'];
	$dfm=$con->query("SELECT * from finals WHERE name='$prod'  and area='$yarea' and qty>0 ") or die(mysqli_error($con));
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
  
  <input type="hidden" class="form-control" style="width:110px; color:#F00; font-weight:bold; border:2px solid#f00" value="<?php echo $_GET['oname']; ?>" name="oname" required id="pwd">
  
   <div class="form-group">
    <label for="pwd"></label>
    
    <select class="form-control" id="sel1" name="qtty" onBlur="doCalc(this.form)" required>
        <option value="<?php echo $day; ?>"  onBlur="doCalc(this.form)"></option>
    <?php 
					for($day=1;$day<=400;$day++)
					{
					echo "<option value='$day'>$day</option>";
					}
					?>
  </select>
    <!--<input type="text" class="form-control" style="width:90px; color:#000; font-weight:bold; border:2px solid#00F" name="qtty" required id="pwd" value="1" >-->
  </div>
  
  
  <div class="form-group">
    <label for="pwd"></label>
    
    <select class="form-control" id="sel1" name="temp" onBlur="doCalc(this.form)" required>
        <option value="Hot"  onBlur="doCalc(this.form)"> Hot </option>
   <option value="Cold"  onBlur="doCalc(this.form)"> Cold </option>
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
<h2>SELLING TO TABLE <span style="color:#f00; font-weight:bold"><?php echo $tn; ?>  </span> COMMAND NAME <span style="color:#f00; font-weight:bold"><?php echo $oname=$_GET['oname'];; ?>  </span></h2>
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
        <td><a href="index.php?area=<?php echo $yarea; ?>&del=<?php echo $ac['id']; ?>"><img src="../cross.png"></a></td>
        <td><a href="index.php?area=<?php echo $_GET['area']; ?>&roll=<?php echo $_GET['roll']; ?>&qty=<?php echo $ac['qty']; ?>&sub=<?php echo $ac['id']; ?>"><img src="../delete.png"></a></td>
        
         <td><a href="index.php?area=<?php echo $_GET['area']; ?>&roll=<?php echo $_GET['roll']; ?>&qty=<?php echo $ac['qty']; ?>&add=<?php echo $ac['id']; ?>"><img src="../plus.png"></a></td>
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
   $oname=$_POST['oname'];
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
			 $new_instock=$aviail-$sold;
			
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
				$temp=$_POST['temp'];			
				$status=$_POST['status'];
				
				
  $kk=$con->query("SELECT * from bar_tables WHERE id='$tab' ") or die(mysqli_error($con));
while($mm=$kk->fetch_assoc()){
		$t_name=$mm['num'];
             }
			 if($new_instock<0){
				 echo "<script>alert('Sorry only ".$aviail." can be sold now. ')</script>";
			 }
			 else if(empty($oname)){
				 echo "<script>alert('Create a Command to sell to')</script>";
			 }
			 else {
			
			/////////check if it has been sold
			$check=$con->query("DELETE FROM basket WHERE product='$thepro' and area='$yarea' and agent='$paidto'  AND tab='$tab' AND status='0'  ") or die(mysqli_error($con));
			
			/////////check if it has been sold
			$check=$con->query("UPDATE finals set qty='$new_instock' WHERE id='$id' ") or die(mysqli_error($con));
	
		    $update=$con->query("insert into basket  set product='$thepro',category='$category',price='$sp',
	total='$total',qty='$sold',cp='$sp',status='$status',tab='$t_name',ids='".$oname."',opening_stocks='$aviail',closing_stocks='$newqty',area='$yarea',profit='$profit',time='$time',
date='$cur_date',day='$day',month='$month',year='$year',froms='',agent='".$_SESSION['userSession']."', type='drinks' ,product_id='$id',comment='$temp' ")  or die(mysqli_error($con));


/*echo "<script>window.open('recg.php?area=".$yarea."&br=".$_GET['name']."&change=".$change."','_new')</script>";*/
		//if selling to table
		if($status==5){
				 
	echo '<meta http-equiv="Refresh" content="0; url=?area='.$yarea.'&table&tabs='.$tab.'&oname='.$oname.' ">';
		}
		else {
		 
	echo '<meta http-equiv="Refresh" content="0; url=?area='.$yarea.'&oname='.$_GET['oname'].'">';
		}
		}///closing else

		}
 }
	
	
	
	}
	
	
	/////delete item
	if(isset($_GET['del'])){
		$DESLETE=$con->query("DELETE FROM basket WHERE id='".$_GET['del']."'   ") or die(mysqli_error($con));	
			echo '<meta http-equiv="Refresh" content="0; url=index.php?area='.$yarea.'">'; 
	
	}
	
	
	if(isset($_GET['sub'])){
		$qty=$_GET['qty'];
		$new_qty=$qty-1;
		
		$DESLETE=$con->query("UPDATE basket SET qty='$new_qty' WHERE id='".$_GET['sub']."'   ") or die(mysqli_error($con));	
			echo '<meta http-equiv="Refresh" content="0; url=index.php?area='.$yarea.'&roll='. $_GET['roll'].'">'; 
	
	}
	
	
	
	
	if(isset($_GET['add'])){
		$qty=$_GET['qty'];
		$new_qty=$qty+1;
		
		$DESLETE=$con->query("UPDATE basket SET qty='$new_qty' WHERE id='".$_GET['add']."'   ") or die(mysqli_error($con));	
			echo '<meta http-equiv="Refresh" content="0; url=index.php?area='.$yarea.'&roll='. $_GET['roll'].'">'; 
	
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
			owed='',date='$cur_date',month='$month',year='$year',area='$yarea',time='$time',paidto='".$paidto."',purpose='Bills' ,idds='',discount='$discoun',staffname='$name',rec='$tot',paidtou='$change' ") or die(mysqli_error($con));
	


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
if(isset($_GET['close'])){
	
  $dfm=$con->query("DELETE from rounds WHERE id='".$_GET['close']."' ") or die(mysqli_error($con));
  echo '<meta http-equiv="Refresh" content="0; url=index.php ">'; 
			
}
?> 
