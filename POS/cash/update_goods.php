
<?php
@session_start();
include '../../includes/dbc.php';
//include '../../includes/functions.php';

 $querys =$con->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($con));

 while($userRow=$querys->fetch_assoc()){
 
 $user=$userRow['full_name'];
 $level=$userRow['banned'];
 $paidto=$userRow['user_name'];
  /////if the active user is admin, get the session user_level
 if($level==20){
 $yarea=$_GET['area'];	 
 }
 else {
	 $yarea=$level;
 }
 
 $result = $con->query("SELECT * FROM sectors where area='$level'") or die(mysqli_error($con));
				while($bu=$result->fetch_assoc()){
			$sector=$bu['name'];
			$links=$bu['link'];
			//$yarea=2;
				}
 
 }
 
 if(empty($level)){
    header("Location: ../login.php");

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

  

<script language="JavaScript" src="../js/pop-up.js"></script>

 <script src="script/jquery.min.js"></script>
  <script src="script/bootstrap3-typeahead.min.js"></script>  
  <link rel="stylesheet" href="script/bootstrap.min.css" /> 
  
  
  
  
  
  
  
  
  
  
  
</head>



<div class="container-fluid">
  <div class="row content">
kk <?php echo $msg; ?> 
     <div class="well" style=" background:#033; color:#fff">
     
 <form class="form-inline" role="form" method="post" action="">
  <div class="form-group">
    <label for="email">Search Product Name / barcode:</label>
    
    
    <input type="text" name="txtCountry" id="country" class="form-control input-lg" autocomplete="off" placeholder="Search Name or Barcode" style="padding:0px 10px; width:600px"  autofocus />
  </div>
  |
     
     
 
     
    </form> 
    
    <?php
	
	if(isset($_POST['txtCountry'])){
	 $prod=mysql_real_escape_string($_POST['txtCountry']);
	 $sp=$_POST['sp'];
	 
	 ////get name and barcode first
	   $dfm=$con->query("SELECT * from smkt_whouse WHERE name='$prod' or barcode='$prod' ") or die(mysqli_error($con));
while($ac=$dfm->fetch_assoc())
		{
			 $the_product=$ac['name'];
			 $the_cost=$ac['cost'];
			 $the_sp=$ac['sp'];
			 $the_barcode=$ac['barcode'];
		}
	
	
	
	
	?>
	</div>
    
  
   

    <div class="col-sm-12">
      
    
    
             
    <?php
	//******************	formal code ***************/
			
	?>
   
   
   
   
   <form method="post"  class="form-inline" role="form" action="">
  <div class="form-group">
    <label for="email">Product</label>
    <input type="text" class="form-control" value="<?php echo $the_product; ?>" readonly style="color:#F00; font-weight:bold; width:390px; border:2px solid#f00" name="prod" id="email">
  </div>
  <div class="form-group">
    <label for="pwd">Cost Price</label>
    <input type="text" class="form-control" style="width:80px; color:#F00; font-weight:bold; border:2px solid#f00" value="<?php echo $the_cost; ?>" name="cost" id="pwd">
  </div>
  
  
   <div class="form-group">
    <label for="pwd">Selling Price</label>
    <input type="text" class="form-control" style="width:80px; color:#F00; font-weight:bold; border:2px solid#f00" value="<?php echo $the_sp; ?>" name="sp"  required id="pwd">
  </div>
  
  
   <div class="form-group">
    <label for="pwd"></label>
    <input type="text" class="form-control" style="width:220px; color:#F00; font-weight:bold; border:2px solid#f00" value="<?php echo $the_barcode; ?>" name="barcode"  id="pwd">
  </div>
 
 <input type="hidden" class="form-control"  name="id" value="<?php echo $id; ?>" required id="pwd">
 
   <button type="submit" class="btn btn-primary" name="sel">SAVE</button>
</form>
<?php } }?>

            
 </form>           
             
   
	
    </div></div>
<?PHP
  if(isset($_POST['sel'])) {
	  $barcode=$_POST['barcode'];
	  $cp=$_POST['cost'];
	  $sp=$_POST['sp'];
	  $product=$_POST['prod'];
	 
	
	$_POST = array_map("ucwords", $_POST);
	/////check product in stock>>>fin
	 
	$dfm=$con->query("UPDATE smkt_whouse set cost='$cp',sp='$sp',barcode='$barcode' WHERE name='$product'  ") or die(mysqli_error($con));
	
	$dfm=$con->query("UPDATE supermkt set cost='$cp',sp='$sp',barcode='$barcode' WHERE name='$product'   ") or die(mysqli_error($con));
	
	echo $msg = "<div class='alert alert-success' style='font-size:24px'>
					<span class='glyphicon glyphicon-info-sign'></span> &nbsp; $product Update Successfull. Thank you
				</div>";
	 
  }
?>

  
      
       
       <div style="background:#033; width:100%; position:fixed; bottom:5PX">
  
  
  
<div style="background:#033;  color:#ff0; padding:10px 10px; text-align:center; font-size:25px">
 <a href=javascript:popcontact('../gross/index.php?area=<?php echo $yarea; ?>&roll=GROSS') style="color:#fff; text-decoration:blink text-align:center; font-weight:bold; margin-left:-120px;">
        DO WHOLE SALE </a>
<?php 
		

?> 

</div>




<script>
$(document).ready(function(){
 
 $('#country').typeahead({
  source: function(query, result)
  {
   $.ajax({
    url:"fetch.php",
    method:"POST",
    data:{query:query},
    dataType:"json",
    success:function(data)
    {
     result($.map(data, function(item){
      return item;
     }));
    }
   })
  }
 });
 
});
</script>
