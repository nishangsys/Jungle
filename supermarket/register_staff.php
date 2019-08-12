
    
    
    
     <div class="row">
     <?php
 $id;
   $dm=$con->query("SELECT * FROM our_service") or die(mysqli_error($con));
while($bum=$dm->fetch_assoc()){
	 $deptss=$bum['name'];
     $id=$bum['id'];
?>
<a href="?my_staff&link=Registering Staff &type=<?php echo $deptss; ?>&link=Adding <?php echo $deptss; ?>  Staff">

        <div class="col-sm-3">
          <div class="well">
           <p style="text-align:center"><strong><?php
echo $deptss;
?></strong></p>
           <img src="../img/default.png" class="img-circle" height="55" width="55" alt="Avatar">
          </div>
        </div>
        
        <?php } ?>
        </a>
          </div>
          </div>   
          </div>
        
        </div>   
          </div>