<?php
$conn = mysql_connect("localhost","nishang","google1234");
mysql_select_db("hotel",$conn);
$result = mysql_query("SELECT * FROM daily  order by id DESC ");
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
<table border="0" cellpadding="10" cellspacing="1" style="width:800px; color:#fff; margin:auto" class="tblListForm">
<tr class="listheader">
<td></td>
<td>Room</td>
<td>Date</td>
<td>Month</td>
<td>Year</td>
<td>Income</td>
<td>Expenditure</td>
<td> Receive By</td>


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
<td><?php echo $row["room"]; ?></td>
<td><?php echo $row["date"]; ?></td>
<td><?php echo $row["month"]; ?></td>
<td><?php echo $row["year"]; ?></td>
<td><?php echo $row["rec"]; ?></td>
<td><?php echo $row["exp"]; ?></td>
<td><?php echo $row["paidto"]; ?></td>


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