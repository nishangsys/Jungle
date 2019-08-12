<?php
$conn = mysql_connect("localhost","nishang","google1234");
mysql_select_db("hotel",$conn);
$rowCount = count($_POST["users"]);
for($i=0;$i<$rowCount;$i++) {
mysql_query("DELETE FROM daily WHERE id='" . $_POST["users"][$i] . "'") or die(mysql_error());
}
echo '<meta http-equiv="Refresh" content="0; url=../dashboard.php?edit_exp">';
?>