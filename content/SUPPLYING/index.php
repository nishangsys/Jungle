
<?php
include '../../includes/dbc.php';
 $tab=$_GET['roll'];
 $area=$_GET['area'];
 

	@session_start();
	$query =$conn->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($conn));

 while($userRow=$query->fetch_array()){
 
 $user=$userRow['user_name'];
 
 }
 ///////////GET THE SECTOR NAME 
 
 	//// Get sector involved updated
	$query =$conn->query("SELECT name,id,area FROM sectors WHERE area='".$_GET['area']."' ") or die(mysqli_error($conn));
 while($userRow=$query->fetch_array()){  
 $sector=$userRow['name'];

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

 


?>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<script src="script/jquery.min.js"></script>
<script src="script/bootstrap.min.js"></script>










<script src="bootstrap3-typeahead.min.js"></script>
<script type="text/javascript" src="script/script.js"></script>
<style>
body{
	font-size:22px;
}
</style>
<h3 style="color:#F00; text-align:center; border:1px solid#00F"> Supplying 
<span style="color:#00F"><?php echo $sector; ?></span> From Warehouse</h3>

	<div class="row">
		<div class="col-xs-12">    	
		<form method="post" action="">
			<label>Search a Product Name from Warehouse </label>
			<input class="typeahead form-control" type="text" placeholder="Search Name...." name="search" autocomplete="off" autofocus style="padding:5px 20px; ">
            </form>
		</div>
	</div>
    
    
    
              
    <?php
	 if(isset($_POST['search'])){
		
		$prod=$_POST['search'];
	 
	
	 
		$dfm=$con->query("SELECT * from warehouse WHERE name='$prod' ") or die(mysqli_error($con));
while($ac=$dfm->fetch_assoc())
		{
			
			 $thepro=$ac['name'];
			 $id=$ac['id'];
			$aviails=$ac['qty'];			
			$dbprice=$ac['sp'];
			$dbcp=$ac['cost'];
			$disc=$ac['disc'];
		}
	 
	 
	?>
   
   
   <form method="post"  class="form-inline" role="form" action="">
  <div class="form-group">
    <label for="email"></label>
    <input type="email" class="form-control" value="<?php echo $prod; ?>" readonly="readonly" style="color:#F00; font-weight:bold; width:350px" name="prod" id="email">
  </div>
  <div class="form-group">
    <label for="pwd"></label>
    <input type="text" class="form-control" style="width:70px; color:#F00; font-weight:bold" value="<?php echo $aviails; ?>" name="avail" readonly="readonly" id="pwd">
  </div>
  
  
   <div class="form-group">
    <label for="pwd"></label>
    <input type="text" class="form-control" style="width:90px; color:#F00; font-weight:bold" value="<?php echo $dbprice; ?>" name="sp" readonly="readonly" id="pwd">
  </div>
  
   <div class="form-group">
    <label for="pwd"></label>
    <input type="text" class="form-control" style="width:110px; color:#000; font-weight:bold" placeholder="Qty Supplied" name="qtty" required="required" id="pwd">
  </div>
 
 <input type="hidden" class="form-control"  name="id" value="<?php echo $id; ?>" required="required" id="pwd">
 <input type="hidden" class="form-control"  name="cp" value="<?php echo $dbcp; ?>" required="required" id="pwd">
  <input type="hidden" class="form-control"  name="cate" value="<?php echo $disc; ?>" required="required" id="pwd">
 
 
   <button type="submit" class="btn btn-primary" name="sel">SAVE</button>
</form>
            <?php  }    ?>
            
         
    
    <?php
	
	if(isset($_POST['sel'])){
  $pid=$_POST['id'];
  $avqty=$_POST['avail'];
  $product=$_POST['prod'];
  $sold=$_POST['qtty'];
  $sp=$_POST['sp'];
  $cp=$_POST['cp'];
  $cate=$_POST['cate'];
  $inwarehouse=$avqty-$sold;
   $date=date('d-m-Y');
  $month=date('m');
  $year=date('Y');
  
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
		 
  $units=date('G:i:s');
   $dflm=$con->query("SELECT * from truck WHERE stock='$product' and  month='$date' and receiver='$area' ") or die(mysqli_error($con));
   $hm=$dflm->num_rows;
   if($hm>0){
   }
 else if($sold>$avqty){
	 echo "<script>alert('ERROR.Only $avqty can be supllied now')</script>";
 }
 else{
	 
	  //////////check if product exist in the shop
	 $sh=$con->query("SELECT * from finals WHERE name='$product' and area='$area'  ") or die(mysqli_error($con));
	  $num=$sh->num_rows;
	  
	  if($num<1){
		  
			  $sql =$con->query( "INSERT INTO truck  set stock='$avqty',item='$product', taken='2',current='$sold',discribe='$inwarehouse',date='$sp',month='$cur_date',year='$month',status='$year',time='$units' ,sentby='$user',sentto='$pid',receiver='$area'" ) or die(mysqli_error($con))  ;
			  /////////update warehouse
			$check=$con->query("UPDATE warehouse set qty='$inwarehouse' WHERE id='$pid' ") or die(mysqli_error($con));
			
			/////////update warehouse
			$check2=$con->query("INSERT INTO finals set qty='$sold',sp='$sp',cost='$cp',disc='$cate',area='$area',name='$product'  ") or die(mysqli_error($con));
			 	echo '<meta http-equiv="Refresh" content="0; url= index.php?area='.$area.' ">';
	
	  }
	  else {
	
  $dfp=$con->query("SELECT * from finals WHERE name LIKE '%$product%' and area='$area' LIMIT 1 ") or die(mysqli_error($con));
while($ac=$dfp->fetch_assoc())
		{
			
		 $thepro=$ac['name'];
			 $id=$ac['id'];
			 $instock=$ac['qty'];			
			
		 $newqty=$sold+$instock;
			
		
		
			  $sql =$con->query( "INSERT INTO truck  set stock='$avqty',item='$product', taken='2',current='$sold',discribe='$inwarehouse',date='$sp',month='$cur_date',year='$month',status='$year',time='$units' ,sentby='$user',sentto='$pid',receiver='$area'" ) or die(mysqli_error($con))  ;
			  /////////update warehouse
			$check=$con->query("UPDATE warehouse set qty='$inwarehouse' WHERE id='$pid' ") or die(mysqli_error($con));
			
			/////////update warehouse
			$check2=$con->query("UPDATE finals set qty='$newqty',sp='$sp',cost='$cp' WHERE id='$id' ") or die(mysqli_error($con));
	
		 	echo '<meta http-equiv="Refresh" content="0; url= index.php?area='.$area.' ">';	 
		   
		}///closing else

		}
		
 }////////////////////////close else
	
	
	
	
	}
	?>
    
      
     <table class="table table-bordered">
    <thead>
      <tr>
        <th>#</th>
        <th>Product</th>
        <th>Old Stock</th>
         <th>Qty Inputed</th>
        <th>Stock After Update</th>
        <th>Done By</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
    <?php
	$date=date('d-m-Y');
	$dfmm=$con->query("SELECT * from truck where sentby like '%$who%' and  month='$cur_date' and receiver='$area' order by id DESC ") or die(mysqli_error($con));
	$a=1;
while($ac=$dfmm->fetch_assoc())
		{
	?>
      <tr>
        <td><?php  echo $a++; ?></td>
        <td><?php echo $ac['item']; ?></td>
        <td><?php echo $ac['stock']; ?></td>
         <td><?php echo $ac['current']; ?></td>
        <td><?php echo $ac['discribe']; ?></td>
        <td><?php echo $ac['sentby']; ?></td>
        <td><!--<a href="?delete=<?php echo $ac['id']; ?>&qty=<?php echo $ac['current']; ?>&prod=<?php echo $ac['stock']; ?>&old=<?php echo $ac['item']; ?>ws=">Delete</a>
     ---> ## </tr>
      <?php } ?>
      
    </tbody>
  </table>
  <?php
  if(isset($_GET['delete'])){
	  $id=$_GET['delete'];
	  
	  $n=$con->query("SELECT * from truck WHERE id='$id' ") or die(mysqli_error($con));
while($ac=$n->fetch_assoc())
		{
		
	  $qty=$ac['current'];
	  $pro=$ac['item'];
	  $old=$ac['stock'];
	  $wid=$ac['sentto'];
	  $ppid=$ac['receiver'];
	  $ws=$ac['ws'];
		}
		
		 $dfp=$con->query("SELECT * from finals WHERE name='%$pro%' and area='$area' LIMIT 1 ") or die(mysqli_error($con));
while($ac=$dfp->fetch_assoc())

		{
			 $ppid=$ac['id'];
		}
		
		///if product id is empty
		if(empty($ppid)){
			echo "<script>alert('Sorry there is no Such Product')</script>";
	  	echo '<meta http-equiv="Refresh" content="0; url= index.php?area='.$area.' ">';
		}
		else {
		
		  /////////Delete from disburse
		$ups=$con->query("DELETE FROM truck WHERE id='$id' ") or die(mysqli_error($con));
	  /////////update warehouse
		$dels=$con->query("UPDATE warehouse set qty='$ws' WHERE id='$wid' ") or die(mysqli_error($con));
		$del2=$con->query("UPDATE finals set qty='$old' WHERE id='$ppid' ") or die(mysqli_error($con));
	  echo "<script>alert('$pro successfully deleted from list')</script>";
	  	echo '<meta http-equiv="Refresh" content="0; url= index.php?area='.$area.' ">';
  }
  }
  ?>
	
    
	
    