<?PHP



@session_start();

if(!isset($_SESSION['user_name'])){
echo "<script>window.open('login.php','_self')</script>";
}
else {
    ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Pay Now</title>

        <link href="../style.css" rel="stylesheet" type="text/css" />
		<!--//webfonts-->
</head>
<script type="text/javascript">
function doCalc(form) {
  form.total.value = parseInt(form.quantity.value) * parseInt(form.price.value);
}

</script>
<script language="JavaScript" src="js/pop-up.js"></script>

<script>
$(document).ready(function(){
    $(".input").keyup(function(){
          var value = +$(".value1").val();
          var amount = +$(".value2").val();
          $("expect").val(val1*val2);
    });
});

</script>
<body>

   
    <h1>Add a New Table</h1>


<!-------------------------BOX WITH THE FORM===BOX1----------------->
				  
   <iframe src="fees.php" style="width:960px; height:600px;"></iframe>
  		
           <div class="clear"></div>
			
	<?php } ?>	 	
</body>
</html>