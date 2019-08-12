
<?php
include '../../includes/dbc.php';
 $tab=$_GET['roll'];
 $area=$_GET['rec'];




?>

<!DOCTYPE html>
<html>
<head>
  
	<link href="bootstrap.min.css" rel="stylesheet">
    <script src="jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="typeahead.js"></script>
	<style>
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
<div class="col-sm-12"  >
          <div class="well" style=" background:#033; color:#fff">
 <form class="form-inline" role="form" method="post" action="">
  <div class="form-group">
    <label for="email">Search Product Name / barcode:</label>
    <input type="text" name="txtCountry"  id="txtCountry" class="typeahead" autofocus autocomplete="off" style="width:100%" placeholder=" Search Name or Barcode"/>

  </div>
  
 
     
    </form>
	</div>
</div>
    
    
    
             
    <?php
	if(isset($_POST['txtCountry'])){
	 $prod=$_POST['txtCountry'];
	$dfm=$con->query("SELECT * from finals WHERE name='$prod' or barcode='$prod' LIMIT 1 ") or die(mysqli_error($con));
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
    <input type="email" class="form-control" value="<?php echo $thepro; ?>" readonly style="color:#F00; font-weight:bold; width:350px; border:2px solid#f00" name="prod" id="email">
  </div>
  <div class="form-group">
    <label for="pwd"></label>
    <input type="text" class="form-control" style="width:70px; color:#F00; font-weight:bold; border:2px solid#f00" value="<?php echo $aviail; ?>" name="avail" readonly id="pwd">
  </div>
  
  
   <div class="form-group">
    <label for="pwd"></label>
    <input type="text" class="form-control" style="width:90px; color:#F00; font-weight:bold; border:2px solid#f00" value="<?php echo $dbprice; ?>" name="sp" readonly id="pwd">
  </div>
  
   <div class="form-group">
    <label for="pwd"></label>
    <input type="text" class="form-control" style="width:90px; color:#000; font-weight:bold; border:2px solid#00F" name="qtty" required id="pwd" >
  </div>
 
 <input type="hidden" class="form-control"  name="id" value="<?php echo $id; ?>" required id="pwd">
 
   <button type="submit" class="btn btn-primary" name="sel">SELL</button>
</form>
<br>
<br>
            <?php  } } ?>
            
    <iframe src="../../clock/clock.php" style="width:100%; height:120px; margin-top:350PX"></iframe>
    
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
	
	
    
</body>

</html>