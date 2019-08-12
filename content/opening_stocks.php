

<!--
  <form class="form-horizontal" role="form" action="../sales/casheir/os_stock.php" target="new" method="post" style="margin-top:30px">
  
  
 -->
 
  <form class="form-horizontal" role="form" action=""  method="post" style="margin-top:30px">
    
  
  
  
  
    
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Choose Month:</label>
      <div class="col-sm-10">
         <select class="form-control" id="sel1" name="month" onBlur="doCalc(this.form)" required>
        
          <?php
							
								$result = $con->query("SELECT * FROM stockreports group by month order by id DESC") or die(mysqli_error($con));
				while($bu=$result->fetch_assoc()){
								?>
                       
        <option></option>          
        <option value="<?php echo $bu['month']; ?>"  > <?php echo $bu['month']; ?> </option>
    <?php } ?> 
  </select>
      </div>
    </div>
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Choose Year :</label>
      <div class="col-sm-10">
      
        <select class="form-control" id="sel1" name="year" onBlur="doCalc(this.form)" required>
        
          <?php
							
								$result = $con->query("SELECT * FROM stockreports  group by year order by id DESC") or die(mysqli_error($con));
				while($bu=$result->fetch_assoc()){
								?>
                       
        <option></option>          
        <option value="<?php echo $bu['year']; ?>"  > <?php echo $bu['year']; ?> </option>
    <?php } ?> 
  </select>
      </div>
    </div>
    
    
    
    
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Choose Sector :</label>
      <div class="col-sm-10">
      
        <select class="form-control" id="sel1" name="sector" onBlur="doCalc(this.form)" required>
        
          <?php
							
								$result = $con->query("SELECT * FROM stockreports,sectors where sectors.area=stockreports.area group by stockreports.area order by stockreports.area DESC") or die(mysqli_error($con));
				while($bu=$result->fetch_assoc()){
								?>
                       
        <option></option>          
        <option value="<?php echo $bu['area']; ?>"  > <?php echo $bu['name']; ?> </option>
    <?php } ?> 
  </select>
      </div>
    </div>
    
   
   
   
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success" name="ok">Continue </button>
      </div>
    </div>
  </form>
</div>

<?php
 $m=$_POST['month'];
$y=$_POST['year'];
$s=$_POST['sector'];
?>


  <table class="table table-bordered sortableTable responsive-table" style="line-height:1.7">
                                    <thead>
                                 
       <th>S/N</th>
        <th>Date</th>
         <th>Action</th>
       
                                    </thead>
                                    <tbody>


                      <?php

   $dms=$con->query("SELECT * FROM stockreports  where month='$m' and year='$y' and area='$s' GROUP BY date ") or die(mysqli_error($con));
   $i=1;
while($bums=$dms->fetch_assoc()){
	
?>                     <tr>
<td><?php echo $i++; ?></td>
                            
     <td ><?php echo $bums['date']; ?></td>
     <td><a href="../sales/casheir/os_stock.php?date=<?php echo $bums['date']; ?>&sect=<?php echo $bums['area']; ?>" target="new" style="font-family:'Arial Black', Gadget, sans-serif; color:#fff; " class="btn btn-primary btn-sm">Print   <?php echo $bums['date']; ?> Stock Reports</a>
                                   </tr>

  <?php } ?>

</tbody>
</table>


   
