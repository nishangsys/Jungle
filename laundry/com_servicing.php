
<?php

   $dm=$con->query("SELECT * FROM customers where id='".$_GET['nid']."'  ") or die(mysqli_error($con));
while($bum=$dm->fetch_assoc()){
	  $names=$bum['name'];
}
?>


<?php

   $dm=$con->query("SELECT * FROM clothes where id='".$_GET['type']."'  ") or die(mysqli_error($con));
while($bum=$dm->fetch_assoc()){
	  $type=$bum['name'];
	  $price=$bum['code'];
}
?>

 <style>
 h3{
	background:#FFF;
	color:#000;
	text-align:center;
	font-size:24px;
	padding:10px 10px;
	margin-top:-31px;
}
</style>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    
	$("#parent_cat").change(function() {
		$(this).after('<div id="loader"><img src="img/loading.gif" alt="loading subcategory" /></div>');
		$.get('loadsubcat.php?parent_cat=' + $(this).val(), function(data) {
			$("#sub_cat").html(data);
			$('#loader').slideUp(200, function() {
				$(this).remove();
			});
		});	
    });

});
</script>
 
 <?php
 ///////get name from customer tbl where code is nid
 $d=$con->query("SELECT * FROM customers where code='".$_GET['nid']."' order by name ") or die(mysqli_error($con));
while($bu=$d->fetch_assoc()){
	$yname=$bu['name'];
}

//////Get total bill of a customer
 $d=$con->query("SELECT SUM(tc) as tot from service_offered where code='".$_GET['nid']."' and status!='2'  ") or die(mysqli_error($con));
while($bu=$d->fetch_assoc()){
	$total=$bu['tot'];
}
	?>
    <h3>Client: <span style="color:#f00; font-weight:bold"><?php echo $names; ?></span> | Cloth Type: <span style="color:#f00; font-weight:bold"><?php echo $type; ?></span> | Total Bill: <span style="color:#f00; font-weight:bold"><?php echo number_format($total); ?> Frs</span>  </h3>
 
 <div class="col-sm-5">
          <div class="well">
           
           
            <form class="form-horizontal" role="form" method="post" action="" enctype="multipart/form-data">
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Service Name</label>
    <div class="col-sm-10"> 
  
  
  
  <select name="prod" id="parent_cat" class="form-control">
  <option></option>
        <?php
	

$d=$con->query("SELECT * FROM clothes WHERE type='".$_GET['type']."' order by name ") or die(mysqli_error($con));	
		 while($row =$d->fetch_assoc()): ?>
        <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
        <?php endwhile; ?>
    </select>
   
    </div>
  </div>
  
  
  
  
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> Price </label>
    <div class="col-sm-10"> 
    <select name="cost"  class="form-control">
    <option value="0">0</option>
    </select>
    </div>
  </div>
  
  


   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Qty</label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd"  name="qty"  placeholder="Quantity:" required="required" >
    </div>
  </div>
  
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Color</label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php echo $address; ?>" name="comment"  placeholder="Comment:" >
    </div>
  </div>
 
 <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> </label>
    <div class="col-sm-10"> 
  <button type="submit" name="save" class="btn btn-info">SAVE</button>
  </div>
  </div>
 
  </form>
          </div>
        </div>




<!-------------right box------------->
 <div class="col-sm-7">
          <div class="well">
            <div class="table-responsive" >
            
            
            
            
            
           <!-- Trigger the modal with a button -->
           <a href="?validate&code=<?php echo $_GET['nid']; ?>&nid=<?php echo $_GET['nid']; ?>">
<button type="button" class="btn btn-primary " >Validate Request</button></a>



<!-- Trigger the modal with a button -->
           <a href="?servicing&nid=<?php echo $_GET['nid']; ?>&type=<?php echo $_GET['type']; ?>&exp&&nishangcoded">
<button type="button" class="btn btn-warning " > Set as Express </button></a>

            
            
            
            
            
            
            
            
            
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example" style="margin-top:20px">
                                
        </h3>
      
 <thead>
                                        <tr>
                                          <th>S/N</th>
        <th>Service</th>
        <th>Cloth Type</th>
        <th>Cost</th>
        <th>Qty</th>
        <th>Total Cost</th>
        <th>Comment</th>
      
        <th>Action</th>
      
                                        </tr>
                                    </thead>
                                    <tbody>
  <?PHP
	
		$ab= $con->query("select * from service_offered where code='".$_GET['nid']."' and status!='2'" ) or die (mysqli_error($con));
								$i=1;
		while ($df= $ab->fetch_assoc() ){
							?>                                    
   
  

      <tr>
       
            <td><?php  echo $i++; ?></td>
         <td ><?php echo $df['serve']; ?></td>

        <td><?php echo $name=$df['types']; ?></td>
        <td><?php echo $df['cost']; ?></td>
         <td><?php echo $df['qty']; ?></td>
         <td><?php echo number_format($df['tc']); ?></td>
         <td><?php echo $df['comment']; ?></td>
        

<td><a href="?servicing&nid=<?php echo $_GET['nid']; ?>&type=<?php echo $_GET['type']; ?>&delete=<?php echo $df['id']; ?>"><button class="btn btn-danger"><i class="icon-cross icon-white"></i> DELETE</button></a></td>

       
      
                                            
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                </table>
                                
                                </div>
          </div>
        </div>




        <div class="col-sm-12">
 <iframe src="../laundry/all_services.php" allowFullScreen style="width: 97%;
			float:left;
			background: #FFF;
            border:none;
            height:900px;
            overflow:hidden;
			border-radius: 5px;
		
 "></iframe>
          </div>
          </div>
  
  <?php
  if(isset($_GET['delete'])){
	  $id=$_GET['delete'];
	   $dm=$con->query("DELETE from service_offered where id='".$id."'  ") or die(mysqli_error($con));
	   echo '<meta http-equiv="Refresh" content="0; url=?servicing&nid='.$_GET['nid'].'&type='.$_GET['type'].'">';
	  
  }
  
  if(isset($_POST['save'])){
	  $service=$_POST['prod'];
	  $cost=$_POST['cost'];
	  $qty=$_POST['qty'];
	  $comment=$_POST['comment'];
	  $tc=$cost*$qty;
	  $date=date('d-m-Y');
	  $month=date('m');
	  
	  $y=date('Y');
	  $code=$_GET['nid'];
	  $type=$_GET['type'];
	  $names=$yname;
	  if($type==0){
		  $measure='';
	  }
	  else {
		  $measure='Kg';
	  }
	  
	 
	  
	  //////Get total bill of a customer
 $d=$con->query("SELECT *  from clothes where id='$service'  ") or die(mysqli_error($con));
while($bu=$d->fetch_assoc()){
	$service=$bu['name'];
	
}

	   $d=$con->query("INSERT INTO service_offered set code='".$_GET['nid']."',name='$names',date='$date',month='$month',year='$y',tc='$tc',qty='$qty',cost='$cost',serve='$service',types='$type',comment='$comment' ,measure='$measure' ") or die(mysqli_error($con));
	   
	     echo '<meta http-equiv="Refresh" content="0; url=?servicing&nid='.$_GET['nid'].'&type='.$_GET['type'].'">';
		}
		
		
		
		
		if(isset($_GET['exp'])){
			 $date=date('d-m-Y');
	  $month=date('m');
	  
	  $y=date('Y');
			
			  $dm=$con->query("SELECT max FROM services where id='1'  ") or die(mysqli_error($con));
while($bum=$dm->fetch_assoc()){
	  $exp_cost=$bum['max'];
}

			$fdg=$con->query("SELECT * FROM service_offered where code='".$_GET['nid']."' and  serve='Express  Service'   ") or die(mysqli_error($con));
			$yes=$fdg->num_rows;
			if($yes>0){
			}
			else if(empty($exp_cost)){
				echo "<script>alert('Define the Price for Express Services')</script>";			}
			else {		
		
			 $d=$con->query("INSERT INTO service_offered set code='".$_GET['nid']."',name='$names',date='$date',month='$month',year='$y',tc='$exp_cost',qty='1',cost='$exp_cost',serve='Express  Service',types='$type',comment='2' ,measure='' ") or die(mysqli_error($con));
	   
	     echo '<meta http-equiv="Refresh" content="0; url=?servicing&nid='.$_GET['nid'].'&type='.$_GET['type'].'">';
			}
 
		}
 
  ?>