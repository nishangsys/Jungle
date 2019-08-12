<?php
$month=$_POST['month'];
$month1="0".$_POST['month'];
$year=$_POST['year'];


$conn = mysql_connect("localhost","nishang","google1234");
mysql_select_db("hotels",$conn);
$result = mysql_query("SELECT * FROM daily where month='$month' or month='$month1' and year='$year' and area='123' ORDER BY id DESC ") or die(mysql_error());
?>
<html>
<head>
<title>Users List</title>
<link rel="stylesheet" type="text/css" href="styles.css" />
<script language="javascript" src="users.js" type="text/javascript"></script>
</head>
<body>
<div style="background:#1188aa; position:fixed; top:20px; z-index:-5; height:50px"></div>

<form name="frmUser" method="post" action="">
<div style="width:600px; margin:auto">
<table border="0" cellpadding="10" cellspacing="1" style="width:800px; margin:auto" class="tblListForm">
<tr class="listheader">
<td></td>
<td>Item Spent On</td>
<td>Qunatity</td>

<td>Total Cost</td>
<td>Date Posted</td>
<td>Month</td>
<td>Year</td>
</tr>
<?php
$i=1;

while($row = mysql_fetch_array($result)) {
	
if($i%2==0)
$classname="evenRow";
else
$classname="oddRow";
?>
<tr class="<?php if(isset($classname)) echo $classname;?>">
<td><input type="checkbox" name="users[]" value="<?php echo $row["id"]; ?>" ></td>
<td><?php echo $row["time"]; ?></td>
<td><?php echo $row["qty"]; ?></td>
<td><?php echo $row["exp"]; ?></td>
<td><?php echo $row["date"]; ?></td>
<td><?php echo $row["month"]; ?></td>
<td><?php echo $row["year"]; ?></td>
</tr>
<?php
$i++;
}
?>
<tr class="listheader" style="position:absolute; right:100px; top:50%">
<td colspan="4"><input type="button" name="update" value="Update" onClick="setUpdateAction();" /> <input type="button" name="delete" value="Delete"  onClick="setDeleteAction();" /></td>
</tr>
</table>
</div>
</form>
</div>
</body></html>