
    


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Pay Now</title>

        <link href="style.css" rel="stylesheet" type="text/css" />
		<!--//webfonts-->
</head>
<script type="text/javascript">
function doCalc(form) {
  
}
</script>


<body>

    
    


<?php
if(isset($_GET['editt'])){
	 $cust_id=$_GET['editt'];
	
 $cus="SELECT * from daily where id='".$cust_id."'  ";
	$run=mysql_query($cus) or die (mysql_error());
	while ($row=mysql_fetch_assoc($run)){
		;
		 
		 
?>
    
    
    
    
    <h1 class="he">Updating the Financial Situation of   <span style="color:#Ff0"><?php echo $namess=$row['name']; ?> </span></h1>
     <form method="post" action="" enctype="multipart/form-data" >
    
    <table>
         
       
          <tr><td></td><td><input type="hidden" name="id" value="<?php echo  $row['id']; ?>" style="width:300px" readonly="readonly" /></td></tr>          
              
                 <tr><td> Reason</td><td><input type="text" name="reason" value="<?php echo  $row['reason']; ?>"    /></td></tr>
                 <tr><td> Date</td><td><input type="text" name="date" readonly="readonly" value="<?php echo  $row['date']; ?>"    /></td></tr>
                 <tr><td> Receive</td><td><input type="text" name="old" readonly="readonly"value="<?php echo  $row['rec']; ?>"    /></td></tr>
                 <tr><td> New Figure</td><td><input type="text" name="new"    /></td></tr>    
            
                        
                  <tr><td></td><td><button type="submit" name="saves" class="myButton"> Save</button></td></tr>
            </table>
    
    </form><br /><br /><br /><br />
    
    </div>
  
	
  		
           <div class="clear"></div>
		
	<div class="foot"></div>  
   
			
	<?php } }  ?>	 	
</body>
</html>

<?php if(isset($_POST['saves'])){
		
		$id=$_POST['id'];
		$reason=$_POST['reason'];
		$new=$_POST['new'];	
		$date=$_POST['date'];
		$old=$_POST['old'];	
		$update_finances=mysql_query("UPDATE daily set rec='$new',reason='$reason' where id='".$id."'") or die(mysql_error());
		//daily records
		//$update_client=mysql_query("UPDATE ourclients set bal='".$exp."',paid='$totpaid' where yourid='".$id."'") or die(mysql_error());
$histo=mysql_query("
INSERT INTO reports set date='$date',howmuch='$old',paidin='$new',reason='edited',name='$user' ") or die(mysql_error());	
		
	
			
			echo "<script>alert('SUCCESS')</script>";
						echo '<meta http-equiv="Refresh" content="0; url=?mine">';

			
			
		
	} ?>