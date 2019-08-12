

    <style>
	a{
		text-decoration:none;
	}
	</style>

<?php
include '../includes/dbc.php';
@session_start();
 $id=$_SESSION['user_name'];

$query1 = $con->query("SELECT * FROM users where user_name='$id'") or die(mysqli_error($con));
		   while($rows = $query1->fetch_assoc()) {
			    $branch=$rows['user_level'];
				$dept=$rows['sentby'];
				$yid=$rows['id'];
		   }
		   
		   
		   
		   
$querym = $con->query("SELECT * FROM chat where sentto='$yid' order by id DESC") ;
		   while($row = $querym->fetch_assoc()) {
			   
		   

?>
<ul style="list-style:none; margin:0px; padding:0px; line-height:1.8">
<li><?php
  if($row['fax']==2){
	 echo '<i class="fa fa-circle" aria-hidden="true" style="color:#f00"></i>
';
 }
 else{
	 	 echo '<i class="fa fa-circle" aria-hidden="true" style="color:#f00"></i>
';
 }


 ?><a href="?chat&branch=<?php echo $branch; ?>&id=<?php echo $row['name']; ?>&ids=5"><?php echo $row['name']; ?></a> <span style="color:#000">(<?php echo substr($row['message'],0,50); ?>)</span></li>
</ul>
<?php } ?>