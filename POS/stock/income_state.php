 <div class="row">
                    <div class="col-lg-12">
                        <div class="box">
                            <header>
                                <h5>Income Statement for <?php echo date('m'); ?>/<?php echo date('Y'); ?> | <a href="p_incomstat.php?date=<?php  echo date('d-m-Y'); ?>" style="text-decoration:none" target="new">Print a Copy <i class="icon-copy "></i></a></h5>
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
                                            <th>Cash Sales<i class="icon-sort"></i><i class="icon-sort-down"></i> <i class="icon-sort-up"></i></th>
                                              <th>Credit Sales<i class="icon-sort"></i><i class="icon-sort-down"></i> <i class="icon-sort-up"></i></th>
                                              
                                                                                            <th>Total Profit<i class="icon-sort"></i><i class="icon-sort-down"></i> <i class="icon-sort-up"></i></th>

     
     <th>Expenditure<i class="icon-sort"></i><i class="icon-sort-down"></i> <i class="icon-sort-up"></i></th>
       
     <th>Net Balance<i class="icon-sort"></i><i class="icon-sort-down"></i> <i class="icon-sort-up"></i></th>
                                          </tr>
                                    </thead>
                                    <tbody>


                      <?php
 $date=date('m');
 $year=date('Y');
 
   $dm=$con->query("SELECT SUM(rec),SUM(owed),SUM(exp),date FROM daily  where month='$date' and year='$year' GROUP BY date") or die(mysqli_error($con));
   $i=1;
while($bum=$dm->fetch_assoc()){
	
?>                     <tr>
                               <td><?php echo $i++; ?></td>
                              <td><?php echo $bum['date']; ?></td>
                        <td><?php echo number_format($bum['SUM(rec)']); ?></td>
                         <td><?php echo number_format($bum['SUM(owed)']); ?></td> 
                         
                          <td><?php
						  
						  $a=$con->query("SELECT SUM(qty*profit) as totprofit FROM basket  where date='".$bum['date']."' and status='2'  GROUP BY date") or die(mysqli_error($con));
while($b=$a->fetch_assoc()){
	echo number_format($b['totprofit']);
}; ?></td> 
                         <td><?php echo number_format($bum['SUM(exp)']); ?></td>  
                         <td><?php echo number_format($bum['SUM(rec)']-$bum['SUM(exp)']); ?></td>
                                                        </tr>

  <?php } ?>

                              
                                  <?php
 $date=date('m');
 $year=date('Y');
   $dm=$con->query("SELECT SUM(rec),SUM(owed),SUM(exp) FROM daily where month='$date'  and year='$year' GROUP BY month") or die(mysqli_error($con));
   $i=1;
while($bum=$dm->fetch_assoc()){
	
?>                     <tr>
                               <td><?php echo $i++; ?></td>
                              <td><?php echo $bum['date']; ?></td>
                           <td style="background:#060; color:#fff"><?php echo number_format($bum['SUM(rec)']); ?> XAF</td>
                         <td style="background:#f00; color:#fff"><?php echo number_format($bum['SUM(owed)']); ?> XAF </td>
                         
                          <td style="border:2px solid#000"><?php
						  
						  $a=$con->query("SELECT SUM(qty*profit) as totprofit FROM basket   where month='$date' and year='$year' and status='2' GROUP BY month") or die(mysqli_error($con));
while($b=$a->fetch_assoc()){
	echo number_format($b['totprofit']);
}; ?> XAF</td> 
                         <td style="background:#F06; color:#fff"><?php echo number_format($bum['SUM(exp)']); ?> XAF</td>  
                         <td style="background:#033; color:#fff"><?php echo number_format($bum['SUM(rec)']-$bum['SUM(exp)']); ?> XAF</td>             </tr>

  <?php } ?>

                                
                               </tbody>  
                                </table>
                            </div>
                        </div>
                        </div>
                        </div>