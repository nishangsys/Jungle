
<?php
 $id;
   $dm=$con->query("SELECT * FROM hair_style where name='".$_GET['type']."' ") or die(mysqli_error($con));
while($bum=$dm->fetch_assoc()){
	 $deptss=$bum['name'];
     $id=$bum['id'];
?>
<a href="?define_price&link=Chosing Hair Stylist&type=<?php echo $deptss; ?>&name=<?php echo $_GET['serve']; ?>&sid=<?php echo $id; ?>&yid=<?php echo $_GET['id']; ?>&minprice=<?php echo $bum['min']; ?>&maxprice=<?php echo $bum['max']; ?>">
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
        <div style="clear:both"></div>
             
  <form class="form-horizontal" role="form" method="post" action="?chose_stylist&name=<?php echo $_GET['name']; ?>&sid=<?php echo $_GET['sid']; ?>&yid=<?php echo $_GET['yid']; ?>&roll=<?php echo $_GET['yid']; ?>&link=Chosing Staff to Work With&type=<?php echo $_GET['type']; ?>" enctype="multipart/form-data">
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Customers Name</label>
    <div class="col-sm-10"> 
      <input type="text" required="required" class="form-control" id="pwd" value="<?php echo $_GET['name']; ?>" name="name" readonly="readonly" >
    </div>
  </div>
  
  
  
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Chosen Style</label>
    <div class="col-sm-10"> 
      <input type="text" required="required" class="form-control" id="pwd" value="<?php echo $_GET['type']; ?>" name="style" readonly="readonly" >
    </div>
  </div>
  
  
  
   
  
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> Minimum Price</label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php echo $_GET['minprice']; ?>" name="min" required="required" readonly="readonly" >
    </div>
  </div>
   
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> Maximum Price</label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php echo $_GET['maxprice']; ?>" name="max" required="required" readonly="readonly" >
    </div>
  </div>
 


   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Agred Price </label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" name="price" required="required"   >
    </div>
  </div>
 
 <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> </label>
    <div class="col-sm-10"> 
  <button type="submit" name="OK" class="btn btn-info">Submit</button>
  
    
  <?php
  if($_GET['update']!=''){
	  echo '<button type="submit" name="Update" class="btn btn-primary">UPDATE</button>';
  }
  ?>
  </div>
  </div>

  </form>
      
        