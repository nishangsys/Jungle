 <div class="row">
                    <div class="col-lg-12">
                        <div class="box">
                            <header>
                                <h5>Income-Expense for <?php
								
								$date=date('m');
								$year=date('Y');
								 echo $date; ?> | <a href="p_daily.php?date=<?php  echo date('d-m-Y'); ?>" style="text-decoration:none" target="new">Print a Copy <i class="icon-copy "></i></a></h5>
                                <div class="toolbar">
                                    <div class="btn-group">
                                        <a href="#sortableTable" data-toggle="collapse" class="btn btn-default btn-sm accordion-toggle minimize-box">
                                            <i class="icon-chevron-up"></i>
                                        </a>
                                    </div>
                                </div>
                            </header>
                            <div id="sortableTable" class="body collapse in">
                                <table class="table table-bordered sortableTable responsive-table">
                                    <thead>
                                 
                                        <tr>
                                            <th>#<i class="icon-sort"></i><i class="icon-sort-down"></i> <i class="icon-sort-up"></i></th>
                                            <th>Date<i class="icon-sort"></i><i class="icon-sort-down"></i> <i class="icon-sort-up"></i></th>
                                            
                                            <th>Income<i class="icon-sort"></i><i class="icon-sort-down"></i> <i class="icon-sort-up"></i></th>
                                            <th>Expense<i class="icon-sort"></i><i class="icon-sort-down"></i> <i class="icon-sort-up"></i></th>
                                            <th>BALANCE<i class="icon-sort"></i><i class="icon-sort-down"></i> <i class="icon-sort-up"></i></th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>


                      <?php $date=date('m');
   $dm=$con->query("SELECT date,SUM(rec) as sales,SUM(exp) as exp  FROM daily where month='$date' and year='$year'  group by date") or die(mysqli_error($con));
   $i=1;
while($bum=$dm->fetch_assoc()){
	
?>                     <tr>
                               <td><?php echo $i++; ?></td>
                              <td><?php echo $bum['date']; ?></td>
                <td><?php echo number_format($bum['sales']); ?></td>
                <td><?php echo number_format($bum['exp']); ?></td>
                <td><?php echo number_format($bum['sales']-$bum['exp']); ?></td>
                 
                        
                                   </tr>

  <?php } ?>

                              
                                  <?php $date=date('m');
   $dm=$con->query("SELECT SUM(rec),SUM(exp) FROM daily where month='$date' and year='$year' ") or die(mysqli_error($con));
   $i=1;
while($bum=$dm->fetch_assoc()){
	
?>                     <tr>
                               <td><?php echo $i++; ?></td>
                           
                <td>TOTAL</td>
               
                           <td style="background:#060; color:#fff"><?php echo number_format($bum['SUM(rec)']); ?></td>  
                           <td style="background:#060; color:#fff"><?php echo number_format($bum['SUM(exp)']); ?></td>  
                           <td style="background:#060; color:#fff"><?php echo number_format($bum['SUM(rec)']-$bum['SUM(exp)']); ?></td>
                              </tr>

  <?php } ?>

                                
                               </tbody>  
                                </table>
                            </div>
                        </div>
                        </div>
                        </div>