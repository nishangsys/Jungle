
<?php
include '../../includes/dbc.php';
 $tab=$_GET['roll'];
 $area=$_GET['rec'];




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

	<div class="row">
		<div class="col-xs-12">    	
		<form method="post" action="">
			<label>Search a Product Name </label>
			<input class="typeahead form-control" type="text" placeholder="Search Name...." name="search" autocomplete="off" autofocus style="padding:5px 20px; ">
            </form>
		</div>
	</div>
    
    
    
              
    <?php
	 $prod=$_POST['search'];
	$dfm=$con->query("SELECT * from finals WHERE name='$prod' ") or die(mysqli_error($con));
while($ac=$dfm->fetch_assoc())
		{
			
			 $thepro=$ac['name'];
			 $id=$ac['id'];
			$aviail=$ac['qty'];			
			$dbprice=$ac['sp'];
	?>
   
   
   <form method="post"  class="form-inline" role="form" action="">
  <div class="form-group">
    <label for="email"></label>
    <input type="email" class="form-control" value="<?php echo $prod; ?>" readonly="readonly" style="color:#F00; font-weight:bold; width:350px" name="prod" id="email">
  </div>
  <div class="form-group">
    <label for="pwd"></label>
    <input type="text" class="form-control" style="width:70px; color:#F00; font-weight:bold" value="<?php echo $aviail; ?>" name="avail" readonly="readonly" id="pwd">
  </div>
  
  
   <div class="form-group">
    <label for="pwd"></label>
    <input type="text" class="form-control" style="width:90px; color:#F00; font-weight:bold" value="<?php echo $dbprice; ?>" name="sp" readonly="readonly" id="pwd">
  </div>
  
   <div class="form-group">
    <label for="pwd"></label>
    <input type="text" class="form-control" style="width:90px; color:#000; font-weight:bold" name="qtty" required="required" id="pwd">
  </div>
 
 <input type="hidden" class="form-control"  name="id" value="<?php echo $id; ?>" required="required" id="pwd">
 
   <button type="submit" class="btn btn-primary" name="sel">SELL</button>
</form>
            <?php  }  ?>
            
            
   
    <iframe src="../../stock/all_ourgoodss.php" style="width:100%; height:230px; margin-top:80PX"></iframe>
    
    <iframe src="../../clock/clock.php" style="width:100%; height:120px"></iframe>
    
    <?php
	
	if(isset($_POST['sel'])){
 $id=$_POST['id'];
  $avqty=$_POST['avail'];
  $sold=$_POST['qtty'];
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
			$sp=$ac['sp'];
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
		}///closing else

		}
	
	
	
	
	}
	?>
	
	