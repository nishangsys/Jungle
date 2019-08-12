<?php 
include('config.php');

$parent_cat = $_GET['parent_cat'];

$query = mysql_query("SELECT * FROM finals WHERE id = {$parent_cat}");
while($row = mysql_fetch_array($query)) {
	echo "<option value='$row[sp]'>$row[sp]</option>";
}
?>