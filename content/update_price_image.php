
              <table class="table table-bordered">
              
              <?php 
			$year=date('d-m-Y');
			  $d=$con->query("SELECT * from warehouse order by image_name desc") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                            <th>#</th>
                      
        <th>Product</th>
              
 <th>Price</th> 
  <th>TYPE</th>
           
                               </tr>
                                    </thead>
                                    <tbody>
                                       <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
       
           <td><?php  echo $i++; ?></td>
                                            <td><?php  echo $bu['name']; ?></td>
                                        
                                          
											 <td><?php  echo $bu['cost'];
					  $d21=$con->query("update finals set cost='".$bu['cost']."' where name='".$bu['name']."' and disc='".$bu['disc']."' ") or die(mysqli_error($con));							 
											 
											  ?></td>
											  <td><img src="../baragent/image/drinks/<?php echo $bu['image_name']; ?>" style="width:80px; height:80px" /></td>
            <?php
              $d21=$con->query("update finals set image_name='".$bu['image_name']."' where name='".$bu['name']."' and disc='".$bu['disc']."' ") or die(mysqli_error($con));							 
						
            ?>                                      
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                    </table>
      
                   
                   
                   


</page>

   <?php ?>
</body>
</html>




