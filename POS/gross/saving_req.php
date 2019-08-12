<?php
include '../includes/dbc.php';
@session_start();
$date=date('d-m-Y');

@session_start();
 $u=$_SESSION['id'];
 $ad=$con->query("SELECT * FROM users where id='$u'") or die(mysqli_error($con));
 	while($rt=$ad->fetch_assoc()){
		$who=$rt['full_name'];
	}
	
  $level=$_SESSION['banned'];
 if(empty($level)){
	 echo '<meta http-equiv="Refresh" content="1; url=../login.php">';
 }
 else {
?>

 <link rel="stylesheet" href="../search/css/style.css" />
<script type="text/javascript" src="../search/js/jquery.min.js"></script>
<script type="text/javascript" src="../search/js/script.js"></script>
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
        <input type="text" class="form-control" placeholder=" Your Name" name="name" id="country_id" onkeyup="autocomplet()" autocomplete="off" style="width:340px"  >                    <ul id="country_list_id"></ul>

    </td>
  
    
      <td>   <input type="number" class="form-control" placeholder="Qty requisited" name="qty"   style="width:145px" required > <td> </td> 
        
      
          
            <td>   <input type="text" class="form-control" placeholder="Barcode" name="barcode" value="<?php echo $_GET['date']; ?>"   > <td>  
           
              
              <input type="hidden" class="form-control" placeholder=" Sector" name="area" value="<?php echo $_GET['area']; ?>"></td>
           <td>
           <button type="submit" class="btn btn-primary btn-lg" name="ok" >Save</button></td>   
              </tr>
    </table>
            </form>
  

  
   <?php
   if(isset($_POST['ok'])){

	 $names=$_POST['name'];
		$barcode=$_POST['barcode'];
		$area=$_POST['area'];
		$sector=$_POST['sector'];
		
		 $qty=$_POST['qty'];
		
		
	 //////////Check product from product tbl//////////////
$d=$con->query("SELECT * FROM finals where  name='$names'") or die(mysqli_error($con));
	while($p=$d->fetch_assoc()){
		$old=$p['qty'];
	echo $av=$p['qty']+$qty;
		$barcode=$p['barcode'];
		 $pd=$p['name'];
		 $id=$p['id'];
		
	}

	
	$d=$con->query("UPDATE finals SET qty='$qty' where id='$id'") or die(mysqli_error($con));
	$insertd=$con->query("INSERT INTO emergency set old='$old',new='$qty',name='$names',date='$date',agent='$who'") or die(mysqli_error($con));
	
	
//echo '<meta http-equiv="Refresh" content="1; url=saving&date='.$date.'&area='.$area.'&sector='.$sector.'&m='.$m.'&y='.$y.'">';
	 
?>
   <?php }  ?>
   <h1><?php echo $who; ?> Drinks Requisition  on <?php echo $_GET['date']; ?> </h1>
   
   <?php
 $d=$con->query("SELECT * FROM  emergency order by id DESC ") or die(mysqli_error($con));
$a=1;
   
   ?>
   
   <table>
   <tr>
   <td>S/N</td><td>
   Product</td><td>Old Qty</td><td>Your Current Stock</td><td>Date</td><td>Delete</td></tr>
   <tr>
   <?php while($df=$d->fetch_assoc()){ ?>
    <td><?php echo $a++; ?></td><td>
   <?php echo $df['name']; ?></td><td><?php echo $df['old']; ?></td><td><?php echo $df['new']; ?></td><td><?php echo $df['date']; ?></td><td><a href="?del=<?php echo $df['id']; ?>&prod=<?php echo $df['name']; ?>&qty=<?php echo $df['new']; ?>&user=<?php echo $df['agent']; ?>">Delete</a></tr>
    <?php }  ?>
  
   
   
   </table>
   
   
    
   <?php
 }
 
	
  
   if(isset($_GET['del'])){
	   $id=$_GET['del'];
	   $qt=$_GET['qty'];
	   $prod=$_GET['prod'];
	   $t=date('d-m-Y');
	   
	    
		
		$ad=$con->query("SELECT * FROM emergency where id='$id'") or die(mysqli_error($con));
 	while($rt=$ad->fetch_assoc()){
		$yagent=$rt['agent'];
		$ydate=$rt['date'];
	}
	///////check product details
	$ad=$con->query("SELECT * FROM finals where name='$prod'") or die(mysqli_error($con));
 	while($rt=$ad->fetch_assoc()){
		$yprod=$rt['name'];
		$yqty=$rt['qty']-$qt;
		$yid=$rt['id'];
	}
	
	
	////if the dates are same and the users are same
	if($t==$date && $yagent==$who){
	
	$ad=$con->query("UPDATE finals SET qty='$yqty' where id='$yid'") or die(mysqli_error($con));
 	
	
$d=$con->query("delete from emergency where id='$id'") or die(mysqli_error($con));

echo '<meta http-equiv="Refresh" content="1; url=saving_req.php">';
	}
	else {
		

   }
   }
   ?>
 