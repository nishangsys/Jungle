 <style>
 BODY{
	 font-size:18px;
 }
 
 </style>
 
 
 <div class="row">
                    <div class="col-lg-12">
                        <div class="box">
                            <header>
                                <h5>Daily Reports for <?php 
								
								 ////Get latest time for shift change
  //date_default_timezone_set("Douala/Cameroon");
        $time1=date('Gi');	////current time	   
		 $see=date('d-m-Y');		   
$C=$con->query("SELECT * FROM overtime where id='1' order by id DESC LIMIT 1") or die(mysqli_error($con));
		    while($r=$C->fetch_assoc()){
				$TY=$r['time'];
				
			}	
		  
		////if current time is less than max shift time      
		   if($time1>=0001 and $time1<=$TY){
           $cur_date=date("d-m-Y", strtotime( '-1 days' ) ); 
		   }
		   else {
		   $cur_date=date('d-m-Y');	  
		   }
		   
		   echo $cur_date; ?> | <a href="p_daily.php?date=<?php  echo date('d-m-Y'); ?>" style="text-decoration:none" target="new">Print a Copy <i class="icon-copy "></i></a></h5>
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
                                            
                                            <th>Casheir<i class="icon-sort"></i><i class="icon-sort-down"></i> <i class="icon-sort-up"></i></th>
                                            
                                                       <th>Cash Sales<i class="icon-sort"></i><i class="icon-sort-down"></i> <i class="icon-sort-up"></i></th>
                                            <th>Sector of Sales<i class="icon-sort"></i><i class="icon-sort-down"></i> <i class="icon-sort-up"></i></th>
                                              <th>Amount Owed<i class="icon-sort"></i><i class="icon-sort-down"></i> <i class="icon-sort-up"></i></th>
                                        </tr>
                                    </thead>
                                    <tbody>


                      <?php
 $date=date('d-m-Y');
   $dm=$con->query("SELECT paidto,area FROM daily where date='".$_GET['date']."'  GROUP BY paidto") or die(mysqli_error($con));
   $i=1;
while($bum=$dm->fetch_assoc()){
	
?>  
                   <tr>
                               <td><?php echo $i++; ?></td>
                              <td><?php echo $bum['paidto']; ?></td>
                <td><?php 	$result = $con->query("SELECT SUM(rec) as sales FROM `daily`
 where paidto='".$bum['paidto']."' and date='".$_GET['date']."' ") or die(mysqli_error($con));
				while($bu=$result->fetch_assoc()){
				echo $sectors=number_format($bu['sales']);
				}; ?></td>
                  <td><?php 	$result = $con->query("SELECT name FROM `sectors`
 where area='".$bum['area']."' ") or die(mysqli_error($con));
				while($bu=$result->fetch_assoc()){
				echo $sectors=$bu['name'];
				}; ?></td>
                           <td><?php echo $bum['rec']; ?></td>
                         <td><?php echo $bum['owed']; ?></td>               </tr>

  <?php } ?>

                              
                                  <?php
 $date=date('d-m-Y');
   $dm=$con->query("SELECT SUM(rec),SUM(owed) FROM daily where date='".$_GET['date']."' GROUP BY date") or die(mysqli_error($con));
   $i=1;
while($bum=$dm->fetch_assoc()){
	
?>                     <tr>
                               <td><?php echo $i++; ?></td>
                              
                <td>TOTAL</td>
                
                           <td style="background:#060; color:#fff"><?php echo number_format($bum['SUM(rec)']); ?></td>
                                </tr>

  <?php } ?>

                                
                               </tbody>  
                                </table>
                            </div>
                        </div>
                        </div>
                        </div>