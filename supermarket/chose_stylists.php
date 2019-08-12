  <?PHP
  $price=$_POST['price'];
  ?>        
  
  
  
  
  
  <div class="row">
    <div class="col-sm-3">
      <div class="panel panel-primary">
        <div class="panel-heading">Current Customers Names</div>
       <div class="panel-footer" style="font-size:16px; font-weight:bold"><?php echo $_GET['name']; ?></div>
      </div>
    </div>
    
    
    
      <div class="row">
    <div class="col-sm-3">
      <div class="panel panel-primary">
        <div class="panel-heading"> Customers Hair Style</div>
        <div class="panel-footer" style="font-size:24px; font-weight:bold"><?php echo $_GET['type']; ?></div>
      </div>
    </div>
    
    
    
    
      <div class="row">
    <div class="col-sm-3">
      <div class="panel panel-primary">
        <div class="panel-heading">Cost of Hair style </div>
        <div class="panel-footer" style="font-size:24px; font-weight:bold"><?php echo $price; ?></div>
      </div>
      </div>
    </div>
    
    
   </div>
   </div>
<?php
 $id;
   $dm=$con->query("SELECT * FROM hair_stylists") or die(mysqli_error($con));
while($bum=$dm->fetch_assoc()){
	 $deptss=$bum['name'];
     $id=$bum['id'];
?>
<a href="?plattnow&link=Working on my customer&type=<?php echo $deptss; ?>&name=<?php echo $_GET['name']; ?>&sid=<?php echo $_GET['sid']; ?>&yid=<?php echo $_GET['yid']; ?>&roll=<?php echo $_GET['yid']; ?>">


 <div class="col-sm-3"> 
      <div class="panel panel-info">
        <div class="panel-heading">CHOSE THIS STAFF</div>
        <div class="panel-body"><img src="../photo/<?php echo $bum['photo']; ?>" class="img-circle" height="95" width="95" style="border:2px solid#060" alt="Image"></div>
        <div class="panel-footer" style=" color:#000; font-size:18px; font-weight:bold"><?php
echo $deptss;
?></div>
      </div>
    </div>
 
        <?php } ?>
        </a>
             