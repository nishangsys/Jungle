 <div class="row">
                    <div class="col-lg-12">
                        <div class="box">
                            <header>
                                <h5>Monthly Reports for <?php echo date('d-m-Y'); ?> | <a href="p_daily.php?date=<?php  echo date('d-m-Y'); ?>" style="text-decoration:none" target="new">Print a Copy , <i class="icon-copy "></i></a></h5>
                                <div class="toolbar">
                                    <div class="btn-group">
                                        <a href="#sortableTable" data-toggle="collapse" class="btn btn-default btn-sm accordion-toggle minimize-box">
                                            <i class="icon-chevron-up"></i>
                                        </a>
                                    </div>
                                </div>
                            </header>
                            <div id="sortableTable" class="body collapse in">
                            
                            
                            
                            
                            
       <table class="table table-bordered">
    <thead>
      <tr>
        <th>#</th>
        <th>Sector</th>
        <th>Income</th>
         <th>Credit</th>
          <th>Expenditure</th>
           <th>Balance</th>
      </tr>
    </thead>
    <tbody>
    
    
                      <?php
 $date=date('m');
 $year=date('Y');
   $dms=$con->query("SELECT * FROM daily,sectors where daily.month='$date' and daily.year='$year'  and daily.area=sectors.area GROUP BY daily.area") or die(mysqli_error($con));
   $i=1;
while($bums=$dms->fetch_assoc()){
	
?>   
      <tr>
        <td><?php echo $i++; ?></td>
        <td><?php echo $bums['name']; ?></td>
        <td>   <?php
   $dm=$con->query("SELECT SUM(rec) as income FROM daily where daily.month='$date' and daily.year='$year'  and area='".$bums['area']."' GROUP BY month") or die(mysqli_error($con));
   
while($bum=$dm->fetch_assoc()){
	$in=$bum['income'];
	echo number_format($in);
}
	
?>  </td>


  <td>   <?php
   $dm=$con->query("SELECT SUM(owed) as income FROM daily where daily.month='$date' and daily.year='$year'  and area='".$bums['area']."' GROUP BY date") or die(mysqli_error($con));
   
while($bum=$dm->fetch_assoc()){
	echo $ow=number_format($bum['income']);
	
}
	
?>  </td>



  <td>   <?php
   $dm=$con->query("SELECT SUM(exp) as income FROM daily where daily.month='$date' and daily.year='$year'  and area='".$bums['area']."' GROUP BY month") or die(mysqli_error($con));
   
while($bum=$dm->fetch_assoc()){
	 $exp=$bum['income'];
	echo number_format($exp);
}
	
?>  </td>

<td><?php echo number_format($in-$exp); ?></td>
       
       
       
      </tr>
      
      
      
      <?php } ?>
      
      
      
      <tr style="background:#CF9; color:#000">
        <td></td>
        <td>TOTAL</td>
        <td>   <?php
   $dm=$con->query("SELECT SUM(rec) as income FROM daily where daily.month='$date' and daily.year='$year'   GROUP BY month") or die(mysqli_error($con));
   
while($bum=$dm->fetch_assoc()){
	$in=$bum['income'];
	echo number_format($in);
}
	
?>  </td>


  <td>   <?php
   $dm=$con->query("SELECT SUM(owed) as income FROM daily where daily.month='$date' and daily.year='$year'   GROUP BY month") or die(mysqli_error($con));
   
while($bum=$dm->fetch_assoc()){
	echo $ow=number_format($bum['income']);
	
}
	
?>  </td>



  <td>   <?php
   $dm=$con->query("SELECT SUM(exp) as income FROM daily where daily.month='$date' and daily.year='$year'   GROUP BY month") or die(mysqli_error($con));
   
while($bum=$dm->fetch_assoc()){
	 $exp=$bum['income'];
	echo number_format($exp);
}
	
?>  </td>

<td><?php echo number_format($in-$exp); ?></td>
       
       
       
      </tr>
      
      
    </tbody>
  </table>                      
                           
                            
                            
                            
                            
                            
                            </div>
                        </div>
                        </div>
                        </div>