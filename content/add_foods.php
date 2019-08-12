

    
    
    <?php
$_POST = array_map("ucwords", $_POST);
	
	////////////////insert item

if(isset($_POST['saves'])){
$shape=$_POST['name'];
$disc=$_POST['disc'];
$cost=$_POST['cost'];
$qty=$_POST['qty'];
$sp=$_POST['sp'];
$sector=$_POST['sector'];
$df=$con->query("DELETE FROM foods where product='$shape' and serial='$disc' ") or die(mysqli_error($con));




$do=$con->query("INSERT INTO foods SET product='$shape',serial='$disc',price='$sp',sector='RESTAURANT',area='".$_GET['area']."'  ") or die(mysqli_error($con));



$message= "<div class='alert alert-success'>".$_POST['name']." Successfully Registered. Thank You</div>";

}
///////////////delete item
if(isset($_GET['delete'])){
	 $id=$_GET['delete'];
	  $dfG=$con->query("DELETE FROM foods where pro_id='$id'") or die(mysqli_error($con));
	  
	   $message= "<div class='alert alert-success'>Item Successfully Deleted. Thank You</div>";

  }
  
  
 
 
  
?>
  <?PHP
						 echo $message;
						?>
   

                        <form class="form-inline" action="" method="post">
                                       
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"></label>
    <div class="col-sm-10"> 
      <input type="text" required class="form-control" id="pwd" value="<?php echo $_GET['product']; ?>" name="name" placeholder="Product Name"  style="width:350px" maxlength="30" >
    </div>
  </div>
  
  
  
   
  
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> </label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php echo $_GET['type']; ?>" name="disc" required placeholder="Category:" readonly style="border:2px solid#f00; width:190px" >
    </div>
  </div>
 



 





    
                         <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"></label>
    <div class="col-sm-10"> 
      <input type="text" required class="form-control" id="pwd"  name="sp" placeholder="Selling Price:" style="width:130px" >
    </div>
  </div>  
  
  
    
  
  
  
  
  
  
  
  <button type="submit" name="saves" class="btn btn-primary">Save</button>
  
  
    
  <?php
  if($_GET['update']!=''){
	  echo '<button class="btn btn-primary"><i class="icon-pencil icon-white"></i> UPDATE</button>';
  }
  ?>
  </div>
  </div>

  </form>


 <iframe src="../content/all_foods.php" allowFullScreen style="width: 100%;
			float:left;
			background: #FFF;
            border:none;
            height:900px;
            overflow:hidden;
			border-radius: 5px;
		
 "></iframe>
	 