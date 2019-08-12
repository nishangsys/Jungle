
<?php $d=$con->query("SELECT * FROM branches order by name   ") or die(mysqli_error($con));
$i=1;
while($bu=$d->fetch_assoc()){
	$br=$bu['name'];
	$id=$bu['id'];
?>

     <a href=javascript:popcontact('supplies.php?roll=1&name=<?php echo $id; ?>') style="font-weight:bold;"> 
<div class="col-sm-3" >
          <div class="well" style=" border:1px solid#999; text-align:center" >
          <span style="font-size:18px; text-align:center; font-weight:bold">Chose 
<?php echo $br; ?> Branch
</span>          
          </div>          
        </div>     
        </a>
        <?php } ?>
  