

   <?php
	$_POST = array_map("ucwords", $_POST);
	
	////////////////insert item

if(isset($_POST['OK'])){
$shape=$_POST['name'];
$disc=$_POST['tel'];
$cost=$_POST['cost'];
$nic=$_POST['nic'];
$add=$_POST['addr'];

$date=date('d-m-Y');
			$m=date('m');
			$dy=date('Y');
			$t=date('G:i:s');



$df122=$con->query("SELECT *  FROM names where name='$shape' and sector='$disc' ") or die(mysqli_error($con));
	if($df122->num_rows>0){
		
$message= "<div class='alert alert-success'>SORRY that Name alread Exists</div>";
	}
	else {
$do=$con->query("INSERT INTO names SET name='$shape',sector='$disc',dept='$add',nic='$nic'  ") or die(mysqli_error($con));


			
$insert=$con->query("INSERT INTO customers set name='$shape',year='$dy',reg_date='$date',month='$m',address='$from',tel='$disc',nic='$nic',time='$t'  ") or die(mysqli_error($con));




$message= "<div class='alert alert-success'>".$_POST['name']." Successfully Registered. Thank You</div>";
	echo '<meta http-equiv="Refresh" content="0; url=?register">';
	}
	 
}


  
?>
  <?PHP
						 echo $message;
						?>

  <form class="form-horizontal" role="form" method="post" action="" enctype="multipart/form-data">
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Customer's Names</label>
    <div class="col-sm-10"> 
      <input type="text" required class="form-control" id="pwd" value="<?php echo $sha; ?>" name="name" placeholder="Name:" >
    </div>
  </div>
  
  
  
   
  
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> Contact</label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php echo $contact; ?>" name="tel" required placeholder="Contact:" >
    </div>
  </div>
 


   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Address </label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php echo $address; ?>" name="addr"  placeholder="Address:" >
    </div>
  </div>
  
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">NIC Num </label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php echo $address; ?>" name="nic"  placeholder="NIC Num:" >
    </div>
  </div>
 
 <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> </label>
    <div class="col-sm-10"> 
  <button type="submit" name="OK" class="btn btn-info">SAVE</button>
  

  
 
  </form>
  </div>
  </div>
  </div>
  
  
  <table class="table table-striped table-bordered table-hover" id="dataTables-example" style="margin-top:20px">
                                
        </h3>
      
 <thead>
                                        <tr>
                                          <th>S/N</th>
                                          <th> Name</th>
        <th>Tel</th>
        
      
        <th>Action</th>
      
                                        </tr>
                                    </thead>
                                    <tbody>
  <?PHP
	
$date=date('d-m-Y');
								$ab= $con->query("select * from customers where reg_date='$date' and status!='2' order by id DESC LIMIT 40" ) or die (mysqli_error($con));
								$i=1;
								while ($df= $ab->fetch_assoc()) {
							?>                                    
   
  

      <tr>
       
            <td><?php  echo $i++; ?></td>
         <td ><?php echo $df['name']; ?></td>

        <td><?php echo $name=$df['tel']; ?></td>
     
<td><a href="?continue&nid=<?php echo $df['id']; ?>&nishangcoded"><button class="btn btn-primary"><i class="icon-cross icon-white"></i> Continue.....</button></a></td>

       
      
                                            
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                </table>