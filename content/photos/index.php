<?php
$con = mysqli_connect('localhost','nishang','google1234','super_db');

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
   echo $area=$_POST['area'];	
			$result = $con->query("SELECT * FROM `sectors`
 where area='$area' ") or die(mysqli_error($con));
				while($bu=$result->fetch_assoc()){
				$sectors=$bu['name'];
				}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style>
body {
  background: rgb(204,204,204); 
  
}
page {
  background: white;
  display: block;
  margin: 0 auto;
  margin-bottom: 0.5cm;
  box-shadow: 0 0 0.5cm rgba(0,0,0,0.5);
  background:url(bg1.jpg) no-repeat center;
}
page[size="A4"] {  
  width: 21cm;
  height: 29.7cm; 
}
page[size="A4"][layout="landscape"] {
  width: 29.7cm;
  height: 21cm;  
}
page[size="A3"] {
  width: 29.7cm;
  height: 42cm;
}
page[size="A3"][layout="landscape"] {
  width: 42cm;
  height: 29.7cm;  
}
page[size="A5"] {
  width: 14.8cm;
  height: 21cm;
}
page[size="A5"][layout="landscape"] {
  width: 21cm;
  height: 14.8cm;  
}
@media print {
  body, page {
    margin: 0;
    box-shadow: 0;
	background:url(bg.jpg);
  }
}
.head{
	height:100px;
	border:1px solid#000;
}
.box{
	margin:5px 5px; 
	float:left;
	width:130px;
	height:139px;
	border:1px solid#000;
	padding:6px 5px;
	overflow:hidden;
}
.img{
	height:80px;
	margin-left:20px;
	
}
.name{
	font-family:Arial, Helvetica, sans-serif;
	font-weight:bold;
	text-align:center;
	font-size:14px;
	color:#Ff0;
	background:#000;
	padding:5px;
	 
	
}
.price{
	font-family:"Arial Black", Gadget, sans-serif;
	font-size:14px;
	color:#fff;
	background:#F00;
	text-align:center;
	padding:5px 5px;
	
}
.logo{
	float:left;
	height:100px;
	width:100px;
	border:1px dashed#fff;
	color:#fff;
}
.logo img{
	width:100px;
	height:100px;
}
.header{
	float:left;
	width:680px;
	height:100px;
	background:#000;
	border:1px dashed#fff;
	text-align:center;
}
.header h1{
	color:#fff;
	font-family:Arial, Helvetica, sans-serif;
}
.header h2{
	color:#fff;
	margin:0px;
	padding:0px;
	margin-top:-10px;
	font-family:Arial, Helvetica, sans-serif;
}
h4{
	background:#FFF;
	font-size:18px;
	font-family:"Arial Black", Gadget, sans-serif;
	text-align:center;
}
</style>
</head>

<body>
<page size="A4">
<div class="head">
	<div class="logo"><img src="logo.jpg"  /></div>
    <div class="header">
    <h1>WELCOME TO BURJKHALIFA <?php echo $sectors; ?> </h1>
        <h2>PRICE CART FOR  </h2>

    </div>

</div>
<div style="clear:both"></div>

<?php
$results = $con->query("SELECT * FROM `finals`
 where area='$area' AND disc='Wines' or disc='Whisky' or disc='Champagne' GROUP BY disc ") or die(mysqli_error($con));
	while($bus=$results->fetch_assoc()){

	?>
    <h4><?php echo $bus['disc']; ?> </h4>
<?php
$cod=$con->query("SELECT * FROM finals where area='$area' AND disc='".$bus['disc']."' order by name ") or die(mysqli_error($con));
while($rows=$cod->fetch_assoc()){
?>



<div class="box">

<div class="img"><img src="../../baragent/image/drinks/<?php echo $rows['image_name']; ?>" style="width:80px; height:80px" /></div>

<div class="name"><?php echo $rows['name']; ?></div>
<div class="price"><?php echo number_format($rows['sp']); ?> Frs</div>

</div>

<?php } ?>
<div style="clear:both"></div>

<?php } ?>

</page>

</body>
</html>