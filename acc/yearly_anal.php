
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

<script>
        tinymce.init({selector:'textarea'});</script>

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

  
   
<!-------------------------BOX WITH THE FORM===BOX1----------------->
				  
                   

        <form method="post" action="../acc/print_year.php" target="new" >
        <table>
        
        <tr>
               <td>Year</td><td><select name="year" onBlur="doCalc(this.form)" style="width:90px" required>
					<option value="<?php echo $day; ?>"  onBlur="doCalc(this.form)"></option>
					<?php 
					for($day=2017;$day<=2020;$day++)
					{
					echo "<option value='$day'>$day</option>";
					}
					?>
				</select></td>
                
                 <td>Sector</td><td><select name="sector" onBlur="doCalc(this.form)" style="width:130px" required>
                 <option></option>
                 <?php
				  $stock=$con->query("select * from sectors  where does='2'") or die (mysqli_error($con));
				  while($cf=$stock->fetch_assoc()){
				 ?>
					<option value="<?php echo $cf['area']; ?>"  onBlur="doCalc(this.form)"> <?php echo $cf['name']; ?></option>
					<?php 
					
					}
					?>
				</select></td></tr>
                <tr>
        <td><button type="submit" name="spend" >Search</button></td></tr> 
        
        </table>
        </form>
         

   
			
		 	
</body>
</html>
