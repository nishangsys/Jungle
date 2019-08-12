<?php
$conn = mysql_connect("localhost","nishang","google1234");
mysql_select_db("hotel",$conn);


if(isset($_POST["submit"]) && $_POST["submit"]!="") {
 $usersCount = count($_POST["rec"]);

for($i=0;$i<$usersCount;$i++) {



	
}
	$rt=mysql_query("UPDATE daily set rec='" . $_POST["paid"][$i] . "',room='" . $_POST["room"][$i] . "' WHERE id='" . $_POST["id"][$i] . "'") or die(mysql_error());


echo '<meta http-equiv="Refresh" content="0; url=dashboard.php?edit_exp">';

//header("Location:list_user.php");
}
?>
<html>
<head>
<title>Edit Multiple User</title>
<link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body>
<form name="frmUser" method="post" action="">
<div style="width:800px; background:#1188aa; margin:auto">
<table border="0" cellpadding="10" cellspacing="0" width="500" align="center">
<tr class="tableheader" style="background:#E74B35; color:#fff">
<td>Edit Data</td>
</tr>
<?php
 $rowCount = count($_POST["users"]);
for($i=0;$i<$rowCount;$i++) {
$result = mysql_query("SELECT * FROM daily WHERE id='" . $_POST["users"][$i] . "'") or die(mysql_error());
$rt=1;

?>
<tr>
<td>
<table border="0" cellpadding="10" cellspacing="0" width="500" align="center" class="tblSaveForm">
<tr style="background:#94B911; color:#fff">
<td>SN</td>
<td></td>
<td>Date</td><td>Amount Paid</td><td>Room Involved</td><td>Paid to</td>
</tr>
<?php $row[$i]= mysql_fetch_array($result); ?>
<tr>
<td><?PHP  echo $rt++; ?></td>


<td><input type="hidden" name="id[]" class="txtField" value="<?php echo $row[$i]['id']; ?>"></td>
<td><input type="text" name="date[]" class="txtField" readonly value="<?php echo $row[$i]['date']; ?>" readonly></td>
<td><input type="text" name="paid[]" class="txtField" value="<?php echo $row[$i]['rec']; ?>"></td>
<td><input type="text" name="room[]" class="txtField" value="<?php echo $row[$i]['room']; ?>" ></td>

<td><input type="text" name="paidto[]" class="txtField" value="<?php echo $row[$i]['paidto']; ?>" ></td>
</tr>
</table>
</td>
</tr>
<?php
}
?>
<tr>
<td colspan="2"><input type="submit" name="submit" value="Submit" class="btnSubmit"></td>
</tr>
</table>
</div>
</form>
</body></html>