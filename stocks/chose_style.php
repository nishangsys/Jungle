
<?php
 $id;
 $sector=$_GET['type'];
   $dm=$con->query("SELECT * FROM hair_style where sector like '%$sector%'") or die(mysqli_error($con));
while($bum=$dm->fetch_assoc()){
	 $deptss=$bum['name'];
     $id=$bum['id'];
?>
<a href="?define_price&link=Chosing Hair Stylist&type=<?php echo $deptss; ?>&name=<?php echo $_GET['name']; ?>&sid=<?php echo $id; ?>&yid=<?php echo $_GET['yid']; ?>&minprice=<?php echo $bum['min']; ?>&maxprice=<?php echo $bum['max']; ?>&sector=<?php echo $_GET['type']; ?>">
<div class="col-sm-3" >
          <div class="row">
        <div class="col-sm-3" style="background:none">
          <div class="well" style="background:none; border:none; overflow:hidden; width:200px">
          
           <img src="../photo/<?php echo $bum['photo']; ?>" class="img-circle" height="55" width="55" style="border:2px solid#060" >
          </div>
        </div>
        <div class="col-sm-9">
          <div class="well">
            <p style="font-weight:bold; font-size:20px; margin-top:-20px"><span  ><?php
echo $deptss;
?></span></p>
          </div>
        </div>
      </div>     
    </div>
        
        <?php } ?>
        </a>
             
        
        