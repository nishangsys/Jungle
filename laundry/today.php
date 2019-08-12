
<div class="alert alert-info">
  <strong>All Pending Today Jobs</strong>
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