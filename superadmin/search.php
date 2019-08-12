<?php
include('../includes/dbc.php');
if($_POST)
{
$q=$_POST['search'];
$sql_res=$con->query("select * from names where name like '%$q%' group by name  order by id LIMIT 5") or die(mysqli_error($con));
while($row=$sql_res->fetch_assoc())
{
$username=$row['name'];
$email=$row['age'];
$b_username='<strong>'.$q.'</strong>';
$b_email='<strong>'.$q.'</strong>';
$final_username = str_ireplace($q, $b_username, $username);
$final_email = str_ireplace($q, $b_email, $email);
?>
<div class="show" align="left" style="line-height:1.5">
<img src="../img/image.jpg" style="width:30px; height:30px; float:left; margin-right:6px;" /><span class="name"><?php echo $final_username; ?></span>&nbsp;<br/><?php echo $final_email; ?><br/>
</div>
<div style="clear:both"></div>
<?php
}
}
?>
