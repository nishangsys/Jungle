<?php
$conn = mysql_connect("localhost","nishang","google1234");
mysql_select_db("hotels",$conn);


if(isset($_POST["submit"]) && $_POST["submit"]!="") {
 echo $usersCount = count($_POST["time"]);

for($i=0;$i<$usersCount;$i++) {



	

	 $rtm=mysql_query("UPDATE daily set time='" . $_POST["time"][$i] . "',qty='" . $_POST["qty"][$i] . "',exp='" . $_POST["exp"][$i] . "' WHERE id='" . $_POST["id"][$i] . "'") ;


echo "<script>alert('Update Successfull')</script>";
echo '<meta http-equiv="Refresh" content="0; url=dashboard.php?edit_exp">';
//header("Location:list_user.php");
}
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
<td>Spending on</td><td>Qty</td><td>Amount Spent</td>
</tr>
<?php $row[$i]= mysql_fetch_array($result); ?>
<tr>
<td><?PHP  echo $rt++; ?></td>


<td><input type="hidden" name="id[]" class="txtField" value="<?php echo $row[$i]['id']; ?>"></td>
<td><input type="text" name="time[]" class="txtField" value="<?php echo $row[$i]['time']; ?>"></td>
<td><input type="text" name="qty[]" class="txtField" value="<?php echo $row[$i]['qty']; ?>" ></td>

<td><input type="text" name="exp[]" class="txtField" value="<?php echo $row[$i]['exp']; ?>" ></td>

<td><input type="hidden" name="month" class="txtField" value="<?php echo $row[$i]['month']; ?>" ></td>

<td><input type="hidden" name="year" class="txtField" value="<?php echo $row[$i]['year']; ?>" ></td>
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