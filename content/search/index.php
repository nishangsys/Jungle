
<?php
include '../../includes/dbc.php';
?>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<script src="script/jquery.min.js"></script>
<script src="script/bootstrap.min.js"></script>










<script src="bootstrap3-typeahead.min.js"></script>
<script type="text/javascript" src="script/script.js"></script>
<style>
body{
	font-size:18px;
}
</style>

	<div class="row">
		<div class="col-xs-12">    	
		<form method="post" action="">
			<label>Search a Product Name </label>
			<input class="typeahead form-control" type="text" placeholder="Search Name...." name="search" autocomplete="off" autofocus style="padding:5px 20px">
            </form>
		</div>
	</div>
    
    <iframe src="../../clock/clock.php" style="width:100%; height:400px"></iframe>
    
    <?php
	
	if(isset($_POST['search'])){
 $code=$_POST['search'];
  $dfm=$con->query("SELECT * from finals WHERE name='$code' ") or die(mysqli_error($con));
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
		
		$DESLETE=$con->query("DELETE FROM basket WHERE product='$thepro' AND tab='1' AND status='0'  ") or die(mysqli_error($con));	   
		    $update=$con->query("insert into basket  set product='$thepro',category='$category',price='$sp',
	total='$total',qty='1',cp='$dbprice',status='',tab='1',ids='$id',opening_stocks='$aviail',closing_stocks='$newqty',area='1',profit='$profit',time='$time',
date='$date',day='$day',month='$month',year='$year',froms=''")  or die(mysqli_error($con));

		}
	}
	
	?>
	
	