
  
  
   <div class="row" >
 
        <div class="col-sm-12">
        
 





      
<script src="../modal/js1/jquery1.js" type="text/javascript"></script>
<script src="../modal/js1/bootstrap1.js" type="text/javascript"></script>


     
   
<script src="../js/jquery.js" type="text/javascript"></script>
<script src="../js/bootstrap.js" type="text/javascript"></script>

<script type="text/javascript" charset="utf-8" language="javascript" src="../js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf-8" language="javascript" src="../js/DT_bootstrap.js"></script>


         <link href="bootstrap.css" rel="stylesheet" type="text/css" media="screen">

	 
    <h3><a href="../stock/printsfin.php" target="_blank">Print A 4</a> |  <a href="../stock/prec.php" target="new">Print B 4</a>  | <a href="../stock/do.php">Excel Download</a> </h3>
       
   <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                            
                           <thead>
                                        <tr>
                                            <th>#</th>
                                             <th>Product</th>
        <th>Category</th> 
         <th>Qty</th> 
                                       </tr>
                                    </thead>                                          
                            <tbody>
								<?php
								//$date=date('d-m-Y');
								$supp;
								
							$today=date('d-m-Y');
$d=$con->query("SELECT * FROM supermkt where qty<5 order by qty ASC") or die(mysqli_error($con));
$i=1;
while($bu=$d->fetch_assoc()){
								?>
								<tr>
                            <td > <?php echo $i++; ?></td>
  <td><?php  echo $bu['name']; ?></td>
                                            <td><?php  echo $bu['disc']; ?></td>
                                            <td><?php  echo $bu['qty']; ?></td>
                       
					</tr>		
                           
								
								<?php } ?>
                              <tbody>
                              
                           
                              
                        </table>
 

          
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
    
    
    
    
    
    
    
