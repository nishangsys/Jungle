
  
  
   <div class="row" >
 
        <div class="col-sm-12">
        
 





      
<script src="../modal/js1/jquery1.js" type="text/javascript"></script>
<script src="../modal/js1/bootstrap1.js" type="text/javascript"></script>


     
   
<script src="../js/jquery.js" type="text/javascript"></script>
<script src="../js/bootstrap.js" type="text/javascript"></script>

<script type="text/javascript" charset="utf-8" language="javascript" src="../js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf-8" language="javascript" src="../js/DT_bootstrap.js"></script>


         <link href="bootstrap.css" rel="stylesheet" type="text/css" media="screen">

	 
  <?php 
$today=date('d-m-Y');
$d=$con->query("SELECT * FROM customers where reg_date='$today' and status!='2' order by client_id DESC LIMIT 2  ") or die(mysqli_error($con));
$i=1;
?>

       <table class="table table-bordered">
    <thead>
      <tr>
              <th>#</th>

        <th>Names</th>
        <th>Contact</th>
         <th>Action</th>
        
      </tr>
    </thead>
    <tbody>
    
      <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
         <?php
		if($i%2==0)
 {
     echo '<tr bgcolor="Bisque">';
 }
 else
 {
    echo '<tr bgcolor="White">';
 }
		
		?>
           <td><?php  echo $i++; ?></td>
                                            <td><?php echo $bu['stu_name']; ?></td>  
                                            <td><?php echo $bu['tel']; ?></td>  
                                              <td>
                                              
                                              
                                              
                                              <a href="index.php?my_client&link=Chosing My clients Hair style&serve=<?php echo $bu['stu_name']; ?>&tel=<?php  echo $bu['tel']; ?>&addr=<?php  echo $bu['address']; ?>&id=<?php echo $bu['client_id']; ?>" style="font-weight:bold; color:#033" target="_self"><button class="btn btn-success"><i class="icon-briefcase icon-white"></i> Service  Client</button></a></td>
                   
      </tr>
        <?php } ?>
       
   <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                            
                           <thead>
                                        <tr>
                                            <th>#</th>
                                             <th>Name</th>
        <th>Contact</th> 
         <th>Adrees</th> 
          <th>Action</th> 
        
                                        </tr>
                                    </thead>                                          
                            <tbody>
								<?php
								//$date=date('d-m-Y');
								$supp;
								
							$today=date('d-m-Y');
$d=$con->query("SELECT * FROM names order by id DESC ") or die(mysqli_error($con));
$i=1;
while($bu=$d->fetch_assoc()){
								?>
								<tr>
                            <td > <?php echo $i++; ?></td>
  <td><?php  echo $bu['name']; ?></td>
                                            <td><?php  echo $bu['sector']; ?></td>
                                            <td><?php  echo $bu['dept']; ?></td>
                                           
       <td> 
       <a href="?chose_clients&link=Add Client&s=<?php echo $bu['name']; ?>&tel=<?php  echo $bu['sector']; ?>&addr=<?php  echo $bu['dept']; ?>&id=<?php echo $bu['id']; ?>"><button class="btn btn-primary"   >Service <?php  echo $bu['name']; ?> </button></a>
       
       </td>
                             
					</tr>		
                           
								
								<?php } ?>
                              <tbody>
                              
                           
                              
                        </table>
    <a href="?add_clients&link=Add Clients">
<button class="btn btn-danger" style="float:right"><i class="icon-plus icon-white"></i> ADD CLIENT</button></a>

          
        </div>
        </div>
        
        
        </div>
    </div>
    
      <?php
	 if(isset($_GET['s'])){
	 $name=$_GET['s'];
	 $tel=$_GET['tel'];
	 $addr=$_GET['addr'];
	 $date=date('d-m-Y');
	 $yaer=date('Y');
	 $yid=$_GET['id'];
	 $dfG=$con->query("insert into customers set stu_name='$name',tel='$tel',reg_date='$date',address='$addr',year='$yaer',yourid='$yid'") or die(mysqli_error($con));
	  	  	echo '<meta http-equiv="Refresh" stock="0; url= ?chose_clients&link=Serve a Client">';
	 
	 

  }
  
  
  
  
  
  
  
  
  
  
  
	?>
    
    
    
    
    
    
    
