
 <link rel="stylesheet" href="searchs/css/style.css" />
<script type="text/javascript" src="searchs/js/jquery.min.js"></script>
<script type="text/javascript" src="searchs/js/script.js"></script>
        <script src="../js/pop-up.js"></script>
        <style>
		table,tr,td{
			border:1px solid#000;
			border-collapse:collapse;
		}
		</style>
<div class="right">
     
     
      <form action="" method="post">
      <table>
      <tr>
      <td> Product:</td><td>
        <input type="text" class="form-control" placeholder=" Your Name" name="names" id="country_id" onkeyup="autocomplet()" autocomplete="off" style="width:200px"  >                    <ul id="country_list_id"></ul>

    </td>
  
    
      <td>   <input type="number" class="form-control" placeholder="Qty requisited" name="qty"   style="width:200px" required > <td> </td> 
        
      
          
            <td>   <input type="text" class="form-control" placeholder="Date" name="date" value="<?php echo date('d-m-Y'); ?>"   > <td>  
           
              
              <input type="hidden" class="form-control" placeholder=" Sector" name="area" value="<?php echo $_GET['area']; ?>"></td>
           <td>
           <button type="submit" class="btn btn-primary btn-lg" name="ok" >Save</button></td>   
              </tr>
    </table>
            </form>
  

  
   <?php
   if(isset($_POST['ok'])){
   $matric=$_POST['names'];
 $qty=$_POST['qty'];
 
	$date=date('d-m-Y');
	$month=date('m');
	$year=date('Y');
		
		
		$add=$con->query("SELECT * FROM  stockreports where product='$matric' and date='$date' ") or die(mysqli_error($con));
	 $nu=mysqli_num_rows($add);
	 ////check if this product has been requisted then exit
	 $d=$con->query("SELECT * FROM  store where name='$matric' ") or die(mysqli_error($con));
	 while($rt=$d->fetch_assoc()){
		 $inss=$rt['qty'];
		 $dprice=$rt['dprice'];
		 $oid=$rt['id'];
	 }
	
	  ///if it exists do nothing else exit
	  if($qty>$inss){
		  echo "<script>alert('Only $ins can be distributed now')</script>";
	  }
	  else if($nu>0){
		   echo "<script>alert('$matric has already been supplied Today')</script>";
	  }
	  
	  ////////////else carryout functions
	  else {
		  
	 //////////Check product from finance tbl//////////////
$d=$cons->query("SELECT * FROM finals where name='$matric' ") or die(mysqli_error($cons));
			while($rt=$d->fetch_assoc()){
		 $ins=$rt['qty'];
		 $dprice=$rt['price'];
		
		 
		 $nqtyy=$ins+$qty;
		 $id=$rt['id'];
	 }
	 	$avqty=$inss-$qty;
			if(mysqli_num_rows($d)>0){
				
				$d12=$con->query("INSERT into stockreports SET qty='$qty',price='$dprice',product='$matric',news='$avqty',date='$date',month='$month',year='$year',oldstock='$inss' ") or die(mysqli_error($con));
				
				$d=$cons->query("UPDATE finals SET qty='$nqtyy' where id='$id'") or die(mysqli_error($cons));
					
					$d12=$con->query("UPDATE store SET qty='$avqty' where id='$oid'") or die(mysqli_error($con));
					echo "<script>alert('$qty SUCCESSFULLY supplied')</script>";
	
			}
			else{
				
					$d=$cons->query("INSERT  into finals SET qty='$qty',sp='$dprice',name='$matric' ") or die(mysqli_error($cons));
					
					$d12=$con->query("INSERT into stockreports SET qty='$qty',price='$dprice',product='$matric',news='$avqty',date='$date',month='$month',year='$year',oldstock='$inss' ") or die(mysqli_error($con));
					
					$d12=$con->query("UPDATE store SET qty='$avqty' where id='$oid'") or die(mysqli_error($con));
						echo "<script>alert('$qty SUCCESSFULLY supplied')</script>";
			}
	
	
		 //////////Reduce stockds by qty requisited and updatew with diff=$av //////////////
	
	
	  }
?>
   <?php }  ?>
   <h3><?php echo $who; ?> SUPPLY PASTERY  <?php echo $_GET['date']; ?> </h3>
   
   <?php
   $d=$con->query("SELECT * FROM  stockreports  where date='".date('d-m-Y')."' and sentto='".$_GET['area']."' ") or die(mysqli_error($con));
$a=1;
   
   ?>
   
   <table  style="width:100%; line-height:1.5">
   <tr>
   <td>S/N</td><td>
   Product</td><td>Qty</td><td>Your Current Stock</td><td>DELETE</td></tr>
   <tr>
   <?php while($df=$d->fetch_assoc()){ ?>
    <td><?php echo $a++; ?></td><td>
   <?php echo $df['product']; ?></td><td><?php echo $df['qty']; ?></td><td><?php echo $df['news']; ?></td><td><a href="?form&del=<?php echo $df['id']; ?>&old=<?php echo $df['oldstock']; ?>&qty=<?php echo $df['qty']; ?>&prod=<?php echo $df['product']; ?>&date=<?php echo $df['date']; ?>&month=<?php echo $df['month']; ?>&year=<?php echo $df['year']; ?>" onclick="return confirm('Are you sure you wish to Undo <?php echo $df['product']; ?> Supply ')">Undo Supply</a></tr>
    <?php } ?>
  
   
   
   </table>
   
   <?php
   if(isset($_GET['del'])){
	   $id=$_GET['del'];
	   $qqqty=$_GET['qty'];
	   $today=date('d-m-Y');
	   $d=$_GET['date'];
	   if($today!=$d){
		   echo "<script>alert('ERROR. Action cannot be Complete')</script>";
		   echo '<meta http-equiv="Refresh" content="0; url=?form&date='.$_GET['date'].'&month='.$_GET['month'].'&year='.$_GET['year'].'">';
	   }
	   else {
	   
	   /////check formal qty in pos>finals tbl and restore
	   $d=$cons->query("SELECT * FROM finals where name='".$_GET['prod']."' ") or die(mysqli_error($cons));
			while($rt=$d->fetch_assoc()){
		 $form=$rt['qty'];		
		 $ffid=$rt['id'];
	 }
	 $nfinals=$form-$qqqty;
	 
	 //////check formal qty in njeifor_bakery>>tbl store
	 $d=$con->query("SELECT * FROM  store where name='".$_GET['prod']."' ") or die(mysqli_error($con));
	 while($rt=$d->fetch_assoc()){
		 $pqty=$rt['qty'];
		 
		 $pidd=$rt['id'];
	 }
	   $npdt=$pqty+$qqqty;
	
	 ////update pos>finals tbl
	 
	 $d=$cons->query("UPDATE finals SET qty='$nfinals' where id='$ffid'") or die(mysqli_error($cons));
	 /////update njeifor_bakery>store  tbl
	 
	 $d12=$con->query("UPDATE store SET qty='$npdt' where id='$pidd'") or die(mysqli_error($con));
					
	    //////////select academic year//////////////
$d=$con->query("delete from stockreports where id='$id'") or die(mysqli_error($con));

echo '<meta http-equiv="Refresh" content="0; url=?form&date='.$_GET['date'].'&month='.$_GET['month'].'&year='.$_GET['year'].'">';
   }
   }
   ?>
   
   </div>
   </div>
		 