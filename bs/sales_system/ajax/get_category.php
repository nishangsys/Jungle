<?php include("../config/db_config.php");?>
<ul class="list-group">
<?php 
$id = $_POST['id'];
$sql = "SELECT * FROM category WHERE status = '1' AND main_cat = '$id'";
$rs = mysql_query($sql);
while($row = mysql_fetch_assoc($rs)) {
?>
  <li class="list-group-item"><button type="button" class="btn btn-primary btn-block category" data-id="<?=$row['id'];?>"><?=$row['cat_name'];?></button></li>
<?php } ?>
</ul>