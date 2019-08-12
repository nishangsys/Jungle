<table class="table table-bordered">
              
              <?php 
			$year=date('Y');
			  $d=$con->query("SELECT * from basket where froms='".$_GET['name']."' and year='$year'  ") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                            <th>#</th>
                                             <th>Customer Served</th>
       <th>Date</th> 
        <th>Service</th>
        <th>Worker</th> 
           
                               </tr>
                                    </thead>
                                    <tbody>
                                       <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
       
           <td><?php  echo $i++; ?></td>
                                            <td><?php  echo $bu['agent']; ?></td>
                                        
                                            <td><?php  echo $bu['date']; ?></td>
                                                     <td><?php  echo $bu['product']; ?></td>
                                                        <td><?php  echo $bu['froms']; ?></td>
                                     
                                            
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                    </table>
 