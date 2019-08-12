<table class="table table-bordered">
              
              <?php 
			$year=date('Y');
			  $d=$con->query("SELECT COUNT(froms),froms FROM basket where year='$year' and froms!='' and ids='inuse' group by froms order by COUNT(froms) DESC LIMIT 5 ") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                            <th>#</th>
                                             <th>Name</th>
       <th>Clients Serve</th> 
        <th>Action</th>
           
                               </tr>
                                    </thead>
                                    <tbody>
                                       <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
       
           <td><?php  echo $i++; ?></td>
                                           <td><?php  echo $bu['froms']; ?></td>
                                        
                                            <td><?php  echo $bu['COUNT(froms)']; ?></td>
                                            <td><a href="?see_more&who=<?php echo $bu['tab']; ?>&link=View Staff Records&name=<?php  echo $bu['froms']; ?>" style="font-weight:bold; color:#033"><button class="btn btn-info"><i class="icon-plus icon-white"></i> View More</button></a></td>
                                      
                                            
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                    </table>
 