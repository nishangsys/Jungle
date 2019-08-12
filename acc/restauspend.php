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

    <div class="right">
    <h1>Buying Things for the Restaurant</h1>


<!-------------------------BOX WITH THE FORM===BOX1----------------->
				  
                   

        <form method="post" action="<?php echo $_SERVER["PHP_SELF"] ?>?restauspend">
        <table>
        
       
            
        <tr>
        <td>Item Bought</td><td><textarea name="purpose"   style="width:300px; height:200px"></textarea> </td></tr>
     
      <tr><td>Quantity Bought</td>
          <td><select name="quantity<?php echo $i; ?>" style="width:130px" />
                <option value="<?php echo $room; ?>"  onBlur="doCalc(this.form)"></option>
					<?php 
					for($room=1;$room<=80;$room++)
					{
					echo "<option value='$room'>$room</option>";
					}
					?>
				</select>
                
                </select></td></tr>
        <tr>
        <td>Unit Price</td>
        <td><input type="text" name="price"  onBlur="doCalc(this.form)" style="width:120px" ></td></tr>      
       
        <tr>        
        <td>Total Cost</td>
        <td><input type="text" name="total" style="background:red;color:white; width:120px;" required="required" readonly="readonly" ></td></tr>
       
       
        <tr>
        <td></td>
        <td><button type="submit" name="spend" >SAVE </button></td></tr> 
        
        </table>
        </form>
          <?php
	
		  if(isset($_POST['spend'])){
		  $what=nl2br($_POST['purpose']);
		  $qty=$_POST['quantity'];
		  $price=$_POST['price'];
		  $total=$_POST['total'];
		  $date=date('d-m-Y');
		  $month=date('m');
		  $year=date('Y');
		  $time=date('h:i:s');
		  $you=$_SESSION['user_name'];

	 $daily=mysql_query("INSERT INTO daily set cust_id='restau', date='$date',exp='$total',month='$month',year='$year',area='3',time='$what'")
	 or die(mysql_error());
	 
	
			echo "<script>alert(' Spending Saved. Thank You')</script>";
		}
		  
		  
	 ?>
        
   
    </div>
	</div>
  		
           <div class="clear"></div>
		
	<div class="foot"></div>  
   
			
	<?php } ?>	 	
</body>
</html>