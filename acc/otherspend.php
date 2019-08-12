

<?PHP


session_start();

require_once '../functions/functions.php';
if(!isset($_SESSION['user_name'])){
echo '<meta http-equiv="Refresh" content="1; url=login.php">';

}

else {
	$user=$_SESSION['user_name'];
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

    <div class="right" >
   
<!-------------------------BOX WITH THE FORM===BOX1----------------->
				  
                   

        <form method="post" action="">
        <table>
        
         <tr>
        <td>Expense Sector</td><td><select name="area" required >
        <option></option>
        <?php 
		$r=mysql_query("SELECT * FROM sectors") or die(mysql_error());	
		while ($rm=mysql_fetch_assoc($r)){
		
		 ?>
         <option value="<?php echo $rm['area']; ?>"><?php echo $rm['name']; ?></option>
        
        <?php } ?>
        </select></td></tr>
        
            
        <tr>
        <td>Expense Sector</td><td><select name="sector" >
        <?php 
		$r=mysql_query("SELECT * FROM spendingcats") or die(mysql_error());	
		while ($rm=mysql_fetch_assoc($r)){
		
		 ?>
         <option value="<?php echo $rm['cat']; ?>"><?php echo $rm['cat']; ?></option>
        
        <?php } ?>
        </select></td></tr>
        
         <tr>
        <td>Item Bought/Acquired</td>
        <td><textarea name="item" required="required" cols="8" rows="8"  >
        
        </textarea></td></tr>
        
        
     
        <tr>
        <td>Total Cost</td>
        <td><input type="number" name="total"  onBlur="doCalc(this.form)" style="width:120px" ></td></tr>      <tr>
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
        <td>Month </td><td><select name="month"  onBlur="doCalc(this.form)" required style="width:200px"/>
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
               <td>Year</td><td><select name="year" onBlur="doCalc(this.form)" style="width:120px" required>
					<option value="<?php echo $day; ?>"  onBlur="doCalc(this.form)"></option>
					<?php 
					for($day=2017;$day<=2020;$day++)
					{
					echo "<option value='$day'>$day</option>";
					}
					?>
				</select></td></tr>
       
        <tr>
        <td></td>
        <td><button type="submit" name="spend" >SAVE </button></td></tr> 
        
        </table>
        </form>
          <?php
	
		  if(isset($_POST['spend'])){
		  $area=$_area['area'];
		  $sector=$_POST['sector'];
		  $qty=$_POST['quantity'];
		   $item=nl2br($_POST['item']);
		  $price=$_POST['price'];
		  $total=$_POST['total'];
		  $date=date('d-m-Y');
		  $month=$_POST['month'];
		  if($month<10){
			  $months="0".$month;
		  }
		  else {
			  $months=$month;
		  }
		  $year=$_POST['year'];;
		  $time=date('h:i:s');
		  $you=$_SESSION['user_name'];
		  
		  	$day=$_POST['day'];

if($day<10){
	$dayy="0".$day;
}
else {
	$dayy=$day;
}

 $date=$dayy."-".$month."-".$year;

	 $daily=mysql_query("INSERT INTO daily set cust_id='general',qty='$qty',reason='$sector ',purpose='$item', date='$date',exp='$total',month='$month',year='$year',area='$area',time='$sector',room='".$_GET['name']."',paidto='$user'")
	 or die(mysql_error());
	 
	
			echo "<script>alert(' Spending Saved. Thank You')</script>";
		}
		  
		  
	 ?>
        
   
    </div>
	</div>
    </td>
    </td>
    </td>
    </td>
  		

   
			
		 	
</body>
</html>

<?php } ?>