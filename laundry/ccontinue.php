
<?php

   $dm=$con->query("SELECT * FROM customers where id='".$_GET['nid']."'  ") or die(mysqli_error($con));
while($bum=$dm->fetch_assoc()){
	  $names=$bum['name'];
}
?>
  <div class="row">
  <a href="?com_servicing&nid=<?php echo $_GET['nid']; ?>&type=0&nishnagcoded" style="font-size:18px; text-align:center; font-weight:bold">
        <div class="col-sm-12">
          <div class="well">
         RECORD <span style="color:#f00"><?php echo $names;  ?>'S</span> DRESSES UNDER COMPANY
          </div>
          </div>
          </a>
         
      



  
  <div class="row">
        <div class="col-sm-12">
          <div class="well">
        
<div class="alert alert-info">
  <strong>SINGLE DRESSES</strong>  <span style="color:#F00; float:right; font-weight:bold">Client: <span style="color:#00F"><?php echo $names;  ?></span></span>
</div>
  
          
          
        
        
        <table class="table table-striped table-bordered table-hover" id="dataTables-example" style="margin-top:20px">
                                
        </h3>
      
 <thead>
                                        <tr>
                                          <th>S/N</th>
                                          <th>Clothe Name</th>
        <th>Price </th>
      
      
                                        </tr>
                                    </thead>
                                    <tbody>
  <?PHP
	
								$ab= $con->query("select * from clothes  where type!='1' order by name " ) or die (mysqli_error($con));
								$i=1;
								while ($df=$ab->fetch_assoc()){
							?>                                    
   
  

      <tr>
       
            <td><?php  echo $i++; ?></td>
         <td ><?php echo $df['name']; ?></td>

        <td><?php echo 0; ?></td>
     
       
      
                                            
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                </table>
          </div>
        </div>
        
        
      