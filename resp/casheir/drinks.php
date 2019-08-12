
 <?php
 @session_start();
  $query =$con->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
 $user=$userRow['full_name'];
 
 }

	$cate=$_GET['cats'];
	$area=$_GET['area'];
		  $query = $con->query("SELECT * FROM 
		  finals where disc='$cate' and area='$area' and qty>0 order by name") or die(mysqli_error($con));
while($row = $query->fetch_assoc()) {

	?>
    
    <!---ADD CLASS OF delete to link to effect ajax
    
    add variable into id
    -->
       <a href="?product=<?php echo $row['name']; ?>&area=<?php echo $_GET['area']; ?>&temp=<?php echo $_GET['temp']; ?>&tabs=<?php echo $_GET['tabs']; ?>&wat=<?php echo $_GET['cats']; ?>" style="color:#fff"  >
     <button type="button" class="btn btn-default" style="float:left; color:#000; font-size:16px; margin:5px 10px; padding:10px 10px; border:2px solid#000; background:<?php 
	 if($_GET['temp']=='hot'){
		 echo "#FC6";
	 }
	 else {
		 echo "#fff";
		 
	 }?>">  
     
      <?php echo $row['name']; ?></button></a>
      
      <?php } ?>
      <?php
	  if(isset($_GET['product'])){
		  
	
 $code=$_GET['product'];
 $temp=$_GET['temp'];
 $tabb=$_GET['tabs'];
 $cats=$_GET['wat'];
 

		   
 if(empty($tabb)){
	   echo $message= "<div class='alert alert-danger' style='color:#fff; background:#f00;font-weight:bold'>ERROR. CHOSE A TABLE TO SELL ON</div>";

 }
 else {


  $pk=mysql_query("SELECT * FROM finals where qty>0  and  name='$code' and area='".$area."' ");
 while($ac=mysql_fetch_assoc($pk)){
			 $thepro=$ac['name'];
			$aviail=$ac['qty'];
			$tabs=$_GET['tables'];
			$cp=$ac['cp'];
			$dbprice=$ac['sp'];
			$oserial=$ac['serial'];
			$profit=$ac['price']-$ac['month'];
			$newqty=$ac['qty']-1;
			$category=$ac['disc'];
			$le;
			
			
		}
////////////// expected entry

 
		 $time=date('G:i');
		  $time1=date('Gi');		   
		   $see=date('d-m-Y');
		   
		 
  $day=date('d');
   $month=date('m');
    $year=date('Y');
 
 //db total
  $db_tot=$_POST['dbtot'];
   $total=$priz*$qty;
   //new total===>dbtotal-totalnow
  $new_total=$db_tot-$total;
 //check if the total is positive that is if stocks are left
 if($qty>$avail){
	 	echo "<script>alert('Error .You have run out of stocks so you cannot sell more ".$avail." now ')</script>";
			

 }
 
 else {

 $sesth=$con->query("UPDATE finals SET qty='$newqty' where name='".$thepro."' and area='$area' LIMIT 1 ");
		   
$update=$con->query("insert into basket set product='$thepro',category='$temp',price='$dbprice',
	total='$dbprice',qty='1',cp='$cp',status='1',tab='$tabb',ids='$youid',section='".$serial."',opening_stocks='$aviail',closing_stocks='$newqty',area='".$area."',profit='$profit',time='$time',
date='$date',day='$day',month='$month',year='$year',froms='$serial',agent='$user'") or die(mysqli_error($con)) ;


  echo '<meta http-equiv="Refresh" content="0; url=?area='.$area.'&temp='.$temp.'&tabs='.$tabb.'&cats='.$cats.'">';
  

	
   // echo "Form Submitted succesfully";
}
}
	  }
	  ?>
	  
     