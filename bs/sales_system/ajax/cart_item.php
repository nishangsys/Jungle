<?php include("../config/db_config.php");?>
<?php 
$user_id = $_SESSION['user_id'];
if(isset($_POST['id'])) {
$id = $_POST['id'];
$qty = explode(',',$_POST['qty']);
$i = explode(',',$id);

foreach($i as $k=>$d){
	$q = $qty[$k];
	$s = "SELECT * FROM cart WHERE `user_id`='$user_id' AND `item_id`='$d'";
	$r = mysql_query($s);
	$n = mysql_num_rows($r);
	if($n > 0) {
		$rs = mysql_fetch_assoc($r);
		$q += $rs['qty'];
		$sql = "UPDATE `cart` SET `qty`='$q' WHERE `user_id`='$user_id' AND `item_id`='$d'";
	} else {
		$sql = "INSERT `cart` SET `user_id`='$user_id',`item_id`='$d',`qty`='$q'";
	}
	mysql_query($sql);
}
}
$sql_t = "SELECT SUM(item.price*cart.qty) as p FROM item,cart WHERE item.id = cart.item_id AND cart.`user_id`='$user_id'";
$r_t = mysql_query($sql_t);
$rs_t = mysql_fetch_assoc($r_t);
echo $rs_t['p'];
die;
?>