<?php 
include('../includes/dbc.php');

$parent_cat = $_GET['parent_cat'];

$query = $con->query("SELECT * FROM clothes WHERE id = {$parent_cat}");
while($row = $query->fetch_assoc()) {
	echo "<option value='$row[code]'>$row[code]</option>";
}
?>