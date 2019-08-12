<table class="table table-bordered">
              
              <?php 
			$year=date('Y');
			  $d=$con->query("SELECT COUNT(agent),agent,tab FROM basket where year='$year' and agent!='' group by agent order by COUNT(agent) DESC LIMIT 10 ") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                            <th>#</th>
                                             <th>Name</th>
       <th>Number of Visits</th> 
        <th>View More</th> 
           
                               </tr>
                                    </thead>
                                    <tbody>
                                       <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
       
           <td><?php  echo $i++; ?></td>
                                            <td><?php  echo $bu['agent']; ?></td>
                                        
                                            <td><?php  echo $bu['COUNT(agent)']; ?></td>
                                            <td><a href="?view_more&who=<?php echo $bu['tab']; ?>&link=View Customers Records&name=<?php  echo $bu['agent']; ?>" style="font-weight:bold; color:#033"><button class="btn btn-info"><i class="icon-plus icon-white"></i> View More</button></a></td>
                                      
                                            
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                    </table>
 