<?PHP


@session_start();

require_once '../functions/functions.php';
if(!isset($_SESSION['user_name'])){
echo '<meta http-equiv="Refresh" content="1; url=login.php">';

}
$level=$_SESSION['banned'];
 if($level=='20' or $level=='100'){	
		
?>
    

<!DOCTYPE html>
<html>
	
<head>
	<title>New Student</title>
		<meta charset="utf-8">
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
			<META HTTP-EQUIV="REFRESH" CONTENT="10">

        <link href="style.css" rel="stylesheet" type="text/css" />
		<!--//webfonts-->
</head>




<body>

<div class="right">

    <?php
	$today=date('Y');
	$cust="SELECT * from finances where otherbal>0 and status='2' order by id DESC ";
	$run=mysql_query($cust) or die (mysql_error());
	$num=1;
	
	
	?>
    <table>
    <tr style="background:#D7E2E6; padding:10PX 0PX; height:30px; color:#1188aa; text-align:center; font-weight:bold">
    <td>S/N</td>
    <td> NAME</td>
    <td>CHECKEDIN</td>
    <TD>CHECKED OUT</TD>
    <td> ROOM</td>
    <TD>AMT OWED</TD>
        <TD>CANCEL DEBT</TD>

    <?php while($row=mysql_fetch_assoc($run)){
		
		 ?>
    <tr>
    <?PHP
	if($num%2==0){
		echo "<tr style='background:#eee;height:30px'>";		
	}
	else {
		echo "<tr style='background:#FFF; height:30px'>";
	}
	?>
    <td><?php echo $num++; ?></td>
    <td><?php echo $row['name']; ?></td>
    <td><?php echo  $row['date'];?></td>
    <td><?php echo  $row['level'];?></td>
        <td>Room <?php echo  $row['room'];?></td>

       <td><?php echo  number_format($row['otherbal']);?> FCFA</td>

    <td>
      <a href=javascript:popcontact('canceldebt.php?out=<?php echo $row['id'] ?>') style="color:#F00">Cancel debt!</a></td>
    
    </tr>
    
    <?php } ?>
    </table>
   
    </div>
    
    
   
    </div>
	
    
   
			
		 		
</body>
</html>
<?php }  ?>