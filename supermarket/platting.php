<link href="../assets/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
<?php
if(isset($_POST['save'])){	
	$_POST = array_map("ucwords", $_POST);	
		
	$name=$_POST['name'];
	$pric=$_POST['price'];
	$staff=$_POST['staff'];
	$toatl=$_POST['price'];
	$product=$_POST['style'];
	$dat=date('d-m-Y');
	$now=date('Y-m-d G:i:s');
	$month=date('m');
	$min=$_POST['min'];
	$max=$_POST['max'];
	$year=date('Y');
	$id=$_GET['roll'];
	$time=date('G:i:s');
	
	
	$DESLETE=$con->query("DELETE FROM basket WHERE product='$product' AND tab='$id' AND status='0'  ") or die(mysqli_error($con));	
  $sql = $con->query("INSERT INTO basket set opening_stocks='$o_stock',product='$product',qty='1',closing_stocks='$c_stock',price='$pric',area='0',date='$dat',month='$month',year='$year',froms='$staff',time='$now',status='0',tab='$id',ids='inuse',total='$toatl',printed='0',agent='$name'") or die(mysqli_error($con))   ;

	
}


if(isset($_POST['barcode'])){
	$code=$_POST['barcode'];
  $dfm=$con->query("SELECT * from finals WHERE barcode='$code' and qty>0 ") or die(mysqli_error($con));
while($ac=$dfm->fetch_assoc())
		{
			 $thepro=$ac['name'];
			 $id=$ac['id'];
			$aviail=$ac['qty'];			
			$dbprice=$ac['cost'];
			$sp=$ac['sp'];
			$profit=$sp-$dbprice;
			$newqty=$aviail-1;
			 $category=$ac['disc'];  
			$day=date('d');
			$month=date('m');
			$year=date('Y');
			$date=date('d-m-Y'); 
			$time=date('h:i:s');
			$total=$sp;
			@session_start();
			$user=$_SESSION['user_name'];
		
		$DESLETE=$con->query("DELETE FROM basket WHERE product='$thepro' AND tab='".$_GET['roll']."' AND status='0'  ") or die(mysqli_error($con));	   
		    $update=$con->query("insert into basket  set product='$thepro',category='$category',price='$sp',
	total='$total',qty='1',cp='$dbprice',status='',tab='".$_GET['roll']."',ids='$id',opening_stocks='$aviail',closing_stocks='$newqty',area='1',profit='$profit',time='$time',
date='$date',day='$day',month='$month',year='$year',froms=''")  or die(mysqli_error($con));

	
		}
		
}

////////////////////////////



	 if(isset($_GET['addings'])){
		 $add=$_GET['addings'];
		 $un=$con->query("SELECT SUM(qty),price,qty,total,product FROM basket where id='$add'") or die(mysqli_error($con));
		 while($df=$un->fetch_assoc()){
			echo  $prodc=$df['product'];
			 $pri=$df['price'];
			 $qtyt=$df['SUM(qty)'];
			  $tota=$df['total'];
			  $nqty=$qtyt+1;
			 $newtot=($nqty*$df['price']);
			  	
		 }
	//////////////////update basket	 	
	$un1=$con->query("UPDATE 	basket set qty='$nqty' ,total='$newtot' where id='$add' limit 1") or die(mysqli_error($con));
	
	//CHECK PRODUCT TABLE	 and update		
	$a=$con->query("SELECT * FROM products where product='$prodc' and serial='$serial'") or die(mysqli_error($con));;
		 while($df=$a->fetch_assoc()){
			  $prodc=$df['product'];
			 $pri=$df['price'];
			 $ids=$df['pro_id'];
			 $qtyt=$df['quatity'];
			  $nqty=$qtyt-1;
			  	
		 }
		 //update product table
		 $un11=$con->query("UPDATE 	products set quatity='$nqty'   where pro_id='$ids' limit 1") or die(mysqli_error($con));
	
	 echo '<meta http-equiv="Refresh" content="0; url=add_oservices.php?roll=1&name=customer">';
	 


	}
	
	
	
	//reduce qty
	
	if(isset($_GET['reduce'])){
		 $add=$_GET['reduce'];
		 $un=$con->query("SELECT SUM(qty),price,qty,total,product FROM basket where id='$add'") or die(mysqli_error($con));
		 while($df=$un->fetch_assoc()){
			 $prodc=$df['product'];
			 $pri=$df['price'];
			 $qtyt=$df['SUM(qty)'];
			 $temp=$df['temp'];
			  $tota=$df['total'];
			  $nqty=$qtyt-1;
			 $newtot=($nqty*$df['price']);
			  	
		 }
		 	

		 
		 
	$un1=$con->query("UPDATE 	basket set qty='$nqty' ,total='$newtot' where id='$add' limit 1") or die(mysqli_error($con));
	
	
//CHECK PRODUCT TABLE	 and update		
	$a=$con->query("SELECT * FROM products where product='$prodc' and serial='$serial'") or die(mysqli_error($con));;
		 while($df=$a->fetch_assoc()){
			  $prodc=$df['product'];
			 $pri=$df['price'];
			 $ids=$df['pro_id'];
			 $qtyt=$df['quatity'];
			  $nqty=$qtyt+1;
			  	
		 }
		 //update product table
		 $un11=$con->query("UPDATE 	products set quatity='$nqty'   where pro_id='$ids' limit 1") or die(mysqli_error($con));
	
	  echo '<meta http-equiv="Refresh" content="0; url=index.php?what=drink&area='.$_GET['area'].'&temp='.$_GET['temp'].'&tabs='.$_GET['tabs'].'">';
	 

	
	}
	
?>

<script language="JavaScript" src="../js/pop-up.js"></script>
  <div class="row">
  
  
        <div class="col-sm-7">
          <div class="well">
		
        <h4><span style="color:#F00">Customer:</span> <?php echo $_GET['name']; ?> | <span style="color:#F00">Active Staff:</span> <?php echo $_GET['type']; ?> </h4>
        
                              <div class="col-sm-12">
          <div class="well">
          
           <form method="post" action=""  style="margin-top:-30px">
  <div class="form-group">
    <label for="email"></label>
    <input type="text" class="form-control" placeholder="search by barcode" id="email" name="barcode" autofocus style="border:2px solid#00F; background:#FF9" >
  </div>
  
  
</form>


            <form class="form-horizontal" role="form" method="post" action="" enctype="multipart/form-data">
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Customer's Names</label>
    <div class="col-sm-10"> 
      <input type="text" required="required" class="form-control" id="pwd" value="<?php echo $_GET['name']; ?>" name="name" readonly="readonly" style="border:2px solid#F00" >
    </div>
  </div>
  
  
  
   
  
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> Item</label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php echo $_GET['style']; ?>" name="style" required="required"  style="border:2px solid#F00">
    </div>
  </div>
 


  
  
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Agreed Price </label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd"  name="price" required="required" style="border:2px solid#0F0" >
    </div>
  </div>
 
 <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> </label>
    <div class="col-sm-10"> 
  <button type="submit" name="save" class="btn btn-success">Save Records</button>
  </div>
  </div>
                  </div>
                        </div>
                  
        




        </div>
        </div>
        <div class="col-sm-5">
          <div class="well">
         
        
        
         <a href=javascript:popcontact('../content/change_sales.php?tabs=<?php echo $_GET['roll']; ?>&area=0') style="color:#fff; text-decoration:blink text-align:center; font-weight:bold;">
        
     <div class="col-sm-4" style="padding:10PX 1PX; background:#006; text-align:center; font-weight:bold; border:1PX solid#fff">
        
    Update Sales
        </div></A>
        
        
        
        
        
                <a href="?validate&roll=<?php echo $_GET['roll']; ?>&name=<?php echo $_GET['name']; ?>" style="color:#fff; text-decoration:blink text-align:center; font-weight:bold;">   
        <div class="col-sm-4" style="padding:10PX 0PX; background:#300;border:1PX solid#fff ;text-align:center; font-weight:bold;">   
        
        
    Validate
        </div></A>
        
        
        
        
        
         
        <a href=javascript:popcontact('../content/add_oservices.php?roll=<?php echo $_GET['roll']; ?>&name=<?php echo $table; ?>') style="color:#fff; text-decoration:blink text-align:center; font-weight:bold;">   
        <div class="col-sm-4" style="padding:10PX 0PX; background:#300;border:1PX solid#fff ;text-align:center; font-weight:bold;">   
        
    SELL NOW
        </div></A>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
         <?php
	   include '../includes/bills.php';
	   
	   ?>
            