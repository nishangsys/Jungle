

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
				  
                   

        <form method="post" action="../acc/print_daily.php" target="new" >
        <table>
        
        <tr>
        <td>Day</td><td>
        <select class="form-control" id="sel1" name="day" onBlur="doCalc(this.form)" required>
        <option value="<?php echo $day; ?>"  onBlur="doCalc(this.form)"></option>
    <?php 
					for($day=01;$day<=31;$day++)
					{
					echo "<option value='$day'>$day</option>";
					}
					?>
  </select></td>
        <td>Month </td><td><select name="month"  onBlur="doCalc(this.form)" required style="width:120px"/>
        <option></option>
               
              <option value="01" onBlur="doCalc(this.form)">January</option>
              <option value="02">Febuary</option>
              <option value="03">March</option>
              <option value="04">April</option>
              <option value="05">May</option>
              <option value="06">June</option>
              <option value="07">July</option>
              <option value="08">August</option>
              <option value="09">September</option>
              <option value="10">October</option>
              <option value="11">November</option>
              <option value="12">December</option>
				

               </select></td>
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

