<script type="text/javascript">
function doCalc(form) {

   form.owed.value = ((parseInt(form.totalbill.value) - parseInt(form.paid.value))-parseInt(form.disc.value));
    form.change.value = ((parseInt(form.paid.value) - parseInt(form.totalbill.value)));
  
  
}
</script>

<?php
 @session_start();
 

include '../../includes/dbc.php'; // include the database and server connection file
 $who=$_GET['roll'];	
 
 
	$query =$con->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
  $userm=$userRow['user_name'];
  $level=$userRow['banned']; 
 }
  if(empty($level)){
    header("Location: ../../login.php");

$ar=$level;

}


 

?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>Dashboard</title>
<meta name="keywords" content="classes insert in php, classes crud using PHP MySql, classes insert update delete using php mysql"/>
<meta name="description" content="classes insert update delete CRUD using PHP MySql. A simple way to insert, update and delete classes values at a time using PHP MySql"/>
<style>
.as_wrapper{
	margin:0 auto;
	width:960px;
	font-family:Arial;
	color:#333;
	font-size:14px;
}

.as_country_container{
	padding:20px;
	background:#eee;
	border:1px solid #333;
}

.a {
	text-decoration:none;
	color:#999;
}

.a:hover {
	text-decoration:underline;
}

.a:active {
	color:#F55925;
}
.h1 a {
	text-decoration:none;
	color:#000;
}
.h1 a:hover {
	text-decoration:underline;
}
.table {
	border:2px dashed #17A3F7;
	padding:20px;
	min-wcourse_idth:500px;
}
.table tr td{
	padding:5px;
}
.table_view {
	border:1px solcourse_id #17A3F7;
	min-wcourse_idth:400px;
	border-collapse:collapse;
}
.table_view tr.heading th {
	background:#17A3F7;
	padding:5px;
	color:#FFF;

}
.table_view tr.odd {
	background:#F7F7F7;
}
.table_view tr.even {
	background:#FFF;
}
.table_view tr.odd:hover, .table_view tr.even:hover {
	background:#FEFDE0;
}
.table_view tr td {
	padding:5px;
}
.input {
	border:#CCC solcourse_id 1px;
	padding:5px;
}

.input:focus {
	border:#999 solcourse_id 1px;
	background:#FEFDE0;
	padding:5px;
}
h1{background-color:#fcfcfc;
 filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#fcfcfc, endColorstr=#cad8de);
 background-image:-moz-linear-gradient(top, #fcfcfc 57%, #cad8de 100%);
 background-image:-webkit-linear-gradient(top, #fcfcfc 57%, #cad8de 100%);
 background-image:-ms-linear-gradient(top, #fcfcfc 57%, #cad8de 100%);
 background-image:linear-gradient(top, #fcfcfc 57%, #cad8de 100%);
 background-image:-o-linear-gradient(top, #fcfcfc 57%, #cad8de 100%);
 background-image:-webkit-gradient(linear, right top, right bottom, color-stop(57%,#fcfcfc), color-stop(100%,#cad8de));
	text-align:center;
	color:#1188AA;
	font-weight:bold;
	font-size:16px;
	padding:10px 0px;
	margin-top:-20px;
	border-bottom:1px solid#000;
}
form input[type="text"],
form input[type="email"],
form input[type="number"],
form input[type="search"],
form input[type="password"],
form textarea,
form select {
		background-color: #eee;
		border: 1px solid rgb( 186, 186, 186 );
		border-radius: 1px;
		box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.08);
		display: block;
		font-size: 1em;
		margin: 6px 0 12px 0;
		padding: .4em .55em;	
		text-shadow: 0 1px 1px rgba(255, 255, 255, 1);
		transition: all 400ms ease;
		width: 65%;
	}
	
form input[type="text"]:focus,
form input[type="email"]:focus,
form input[type="number"]:focus,
form input[type="search"]:focus,
form input[type="password"]:focus,
form textarea:focus,
form select:focus{ 
		border-color: #4195fc;/* the focus color for a input box */
		box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1), 0 0 8px #4195fc;
		width:65%;
}

form input[type="text"]:invalid:focus,
form input[type="email"]:invalid:focus,
form input[type="number"]:invalid:focus,
form input[type="search"]:invalid:focus,
form input[type="password"]:invalid:focus,
form textarea:invalid:focus,
form select:invalid:focus { 
			border-color: rgb(248,66,66);
			box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1), 0 0 8px rgb(248,66,66);
		}
</style>

</head>

<body>
<?php
	  $vb=$con->query("SELECT * FROM bar_tables where id='".$_GET['tab']."'") or die(mysqli_error($con));
	  while($dfl=$vb->fetch_assoc()){
		  $tabl_num=$dfl['num'];
		  $tabl_area=$dfl['area'];
	  }
?>
<div class="as_wrapper">
<h1 style="background:#088389; text-align:center; font-size:24px; padding:20px 0px; color:#fff;"> <span style="color:#ff0"> <span style="color:#Fff"><a href="index.php?area=<?php echo $_GET['area']; ?>" style="color:#9F0; text-decoration:none">BACK TO HOME PAGE</a> CREATE A ROUND FOR TABLE   </span> <?php echo $tabl_num; ?> 
       </span></h1>
   
	<div class="as_country_container">
   
        
	<?php
    $msg; // Display the result message generated in the above PHP actions,
    //Create form to get number of rows to be generated to insert 
	
    ?>
      
       
            <?php
			
			
        	?>
            <form action="save_rounds.php" method="post">
            <table align="center" style="width:100%">
            
            
            <tr> 
            <td>Table Number</td><td>&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="tnum" readonly class="input" onBlur="doCalc(this.form)"  value="<?php echo $tabl_num; ?>"
                    >
                  </td></tr>
                  
                  <tr> 
            <td>Order Name</td><td>&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="oname" required class="input" onBlur="doCalc(this.form)"                  >
                  </td></tr>
             <input type="hidden" name="uid" value="<?php echo $_SESSION['userSession']; ?>"                  >
                 <input type="hidden" name="area" value="<?php echo $_GET['area']; ?>"                  >
                 
           
             
          
            <tr>
                <td colspan="5" align="center">
                <input type="hidden" name="total" value="<?php echo $i; ?>" /> <?php // Post the total rows count value ?>
                <input type="submit" name="save" value="Save and Continue" style="background:#033; color:#fff; padding:10px 10px"/></td>
            </tr>
            </table>
            </form>
      
	</div>
</div>

</body>
	