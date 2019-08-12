
    <?php
	 $dmm=$con->query("SELECT SUM(rec),SUM(owed),SUM(exp) FROM daily where month='$mm'  and year='$yy' ") or die(mysqli_error($con));

while($bum=$dmm->fetch_assoc()){
	$totin=$bum['SUM(rec)'];
	$totexpp=$bum['SUM(exp)'];
	$nbal=$totin-$totexpp;
}
	
	?>
    
    
     <div class="row">
   

        <div class="col-sm-4" >
          <div class="well" style="background:#030">
           <p style="text-align:center; font-size:16px; color:#fff"><strong>Total Amount Received  This Month</strong></p>
           <span style="font-size:30px; color:#fff">
           <i class=" icon-briefcase  fa-2x"></i> &nbsp;&nbsp; <?php echo number_format($totin); ?> XAF</span>
          </div>
        </div>
        
     
      
      
        <div class="col-sm-4" >
          <div class="well" style="background:#C36">
           <p style="text-align:center; font-size:16px; color:#fff"><strong>Total Expenditure This Month</strong></p>
           <span style="font-size:30px; color:#fff">
           <i class=" icon-truck  fa-2x"></i> &nbsp;&nbsp; <?php echo number_format($totexpp); ?> XAF</span>
          </div>
        </div>
        
        
        <div class="col-sm-4" >
          <div class="well" style="background:#006">
           <p style="text-align:center; font-size:16px; color:#fff"><strong>Total Net balance Month</strong></p>
           <span style="font-size:30px; color:#fff">
           <i class=" icon-file-text   fa-2x"></i> &nbsp;&nbsp; <?php echo number_format($nbal); ?> XAF</span>
          </div>
        </div>
        
        
        
         <div class="col-sm-4" >
          <div class="well" style="background:#F03">
           <p style="text-align:center; font-size:16px; color:#fff"><strong>Total Amount Owed Us </strong></p>
           <span style="font-size:30px; color:#fff">
           <i class=" icon-thumbs-down    fa-2x"></i> &nbsp;&nbsp; <?php 
		   
		    $dmm=$con->query("SELECT SUM(owed) as owed FROM daily where owed>0 ") or die(mysqli_error($con));

while($bum=$dmm->fetch_assoc()){
	$owed=$bum['owed'];
	
}
		   echo number_format($owed); ?> XAF</span>
          </div>
        </div>
        
        
        
        
        
         <div class="col-sm-4" >
          <div class="well" style="background:#F93">
           <p style="text-align:center; font-size:16px; color:#000"><strong>Total Amt We Owe Suppliers</strong></p>
           <span style="font-size:30px; color:#000">
           <i class=" icon-paste    fa-2x"></i> &nbsp;&nbsp; <?php 
		   
		    $dmm=$con->query("SELECT SUM(owed) as owed FROM creditors where owed>0 ") or die(mysqli_error($con));

while($bum=$dmm->fetch_assoc()){
	$owed=$bum['owed'];
	
}
		   echo number_format($owed); ?> XAF</span>
          </div>
        </div>
        
        
        
         <div class="col-sm-4" >
          <div class="well" style="background:#000">
           <p style="text-align:center; font-size:16px; color:#fff"><strong>Most Profitable Sector this Year </strong></p>
           <span style="font-size:20px; color:#fff">
           <i class=" icon-trophy   fa-2x"></i> &nbsp; <?php 
		   
		    $dmm=$con->query("SELECT SUM(daily.rec) as owed,sectors.name as area FROM daily,sectors where daily.area=sectors.area GROUP BY daily.area limit 1 ") or die(mysqli_error($con));

while($bum=$dmm->fetch_assoc()){
	$owed=$bum['owed'] ;
	$sectt=$bum['area'];
	
}
		   echo number_format($owed); ?>  XAF from <?php echo $sectt; ?></span>
          </div>
        </div>
        
        
        
        
        
        
        
        
        
        
          </div>
          </div>   
          </div>
        
        </div>   
          </div>