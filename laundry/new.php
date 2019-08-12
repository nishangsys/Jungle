 <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Pill Tabs
                        </div>
                        <div class="panel-body">
                            <ul class="nav nav-pills">
                                <li class="active"><a href="#home-pills" data-toggle="tab">Existing Clients</a>
                                </li>
                                <li><a href="#profile-pills" data-toggle="tab" style="background:#033; color:#fff">New Client</a>
                                
                                 <li><a href="#messages" data-toggle="tab" style="background:#903; color:#fff">Today's Jobs</a>
                                </li>
                             
                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="home-pills">
                                    <h4>Home Tab</h4>
                                    
  <link rel="stylesheet" href="search/css/style.css" />
<script type="text/javascript" src="search/js/jquery.min.js"></script>
<script type="text/javascript" src="search/js/script.js"></script>
        <script src="../js/pop-up.js"></script>

 
    
      
      
      <form class="form-horizontal" action="" method="post">
      
      <div class="form-group">
       <label class="control-label col-sm-2" for="email"> Student's Names:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" placeholder=" Your Name" name="names" id="country_id" onkeyup="autocomplet()" autocomplete="off">                    <ul id="country_list_id"></ul>
<button type="submit" class="btn btn-primary btn-lg" name="search" >Search</button>
      </div>
    </div>
       
            </form>
  

  
   <?php
   if(isset($_POST['search'])){
 $matric=$_POST['names'];
 $level=$_POST['level'];
 $date=date('d-m-Y');
			$m=date('m');
			$dy=date('Y');
			$t=date('G:i:s');
  //////////select academic year//////////////
  
  
  $d=$con->query("SELECT * FROM codes where id='1'  ") or die(mysqli_error($con));
  while($v=$d->fetch_assoc()){
	  $l=$v['l']+1;
	  $code="NIS".$l."".$dy;
  }
  
  
  
$d1=$con->query("SELECT * FROM names where name='$matric'  ") or die(mysqli_error($con));


$d=$con->query("SELECT * FROM customers where name='$matric' and reg_date='$date' and status!='2'  ") or die(mysqli_error($con));


	if(mysqli_num_rows($d)>0){
	
	}
	else {
		while($v=$d1->fetch_assoc()){
			$name=$v['name'];
			$tel=$v['sector'];
			$from=$v['dept'];
			$nic=$v['nic'];
			$yid=$v['id'];
		}
			
			
$insert=$con->query("INSERT INTO customers set name='$name',year='$dy',reg_date='$date',month='$m',yid='$yid',address='$from',tel='$tel',nic='$nic',time='$t',code='$code' ") or die(mysqli_error($con));

$dm=$con->query("UPDATE codes set l='$l' where id='1'  ") or die(mysqli_error($con));
	
	echo "<script>alert('Action Successfull. Go to Todays Job to Continue ')</script>";

	}
   }
?>

 
         
  
                                </div>
                                <div class="tab-pane fade" id="profile-pills">
                                    <h4>New Client</h4>
                                   
                                   
                                   
        
         
    <?php
	$_POST = array_map("ucwords", $_POST);
	
	////////////////insert item

if(isset($_POST['OK'])){
$shape=$_POST['name'];
$disc=$_POST['tel'];
$cost=$_POST['cost'];
$nic=$_POST['nic'];
$add=$_POST['addr'];

$df122=$con->query("DELETE FROM names where name='$shape' and sector='$disc' ") or die(mysqli_error($con));




$do=$con->query("INSERT INTO names SET name='$shape',sector='$disc',dept='$add',nic='$nic'  ") or die(mysqli_error($con));
$message= "<div class='alert alert-success'>".$_POST['name']." Successfully Registered. Thank You</div>";
	echo '<meta http-equiv="Refresh" content="0; url=?new&link=New Job">';
	 
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

                              
                                   <div class="tab-pane fade" id="messages">
                                    <h4>TODAYS CLIENTS</h4>  <table class="table table-striped table-bordered table-hover" id="dataTables-example" style="margin-top:20px">
                                
        </h3>
      
 <thead>
                                        <tr>
                                          <th>S/N</th>
                                          <th> Name</th>
        <th>Tel</th>
        <th>Code</th>
      
      
        <th>Action</th>
      
                                        </tr>
                                    </thead>
                                    <tbody>
  <?PHP
	
								$ab= mysql_query("select * from customers where reg_date='$date' and status!='2' order by id DESC" ) or die (mysql_error());
								$i=1;
								while ($df= mysql_fetch_array ($ab) ){
							?>                                    
   
  

      <tr>
       
            <td><?php  echo $i++; ?></td>
         <td ><?php echo $df['name']; ?></td>

        <td><?php echo $name=$df['tel']; ?></td>
        <td><?php echo $name=$df['code']; ?></td>
     
<td><a href="?continue&nid=<?php echo $df['code']; ?>"><button class="btn btn-primary"><i class="icon-cross icon-white"></i> Continue.....</button></a></td>

       
      
                                            
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                </table>
                                <table>
                                </div>
                               
                            </div>
                        </div>
                           </div>
                        </div>
                 </div>
                        </div>
              
              