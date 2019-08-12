<br />
     <form action="" method="post" class="form-horizontal" id="regForm" style="margin-top:-30px" enctype="multipart/form-data" >
      
    
    
    
    
    
    
    
    
    
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Choose Month:</label>
      <div class="col-sm-10">
         <select class="form-control" id="sel1" name="month" onBlur="doCalc(this.form)" required>
        
          <?php
							
								$result = $con->query("SELECT * FROM disburse group by year order by id DESC") or die(mysqli_error($con));
				while($bu=$result->fetch_assoc()){
								?>
                       
        <option></option>          
        <option value="<?php echo $bu['year']; ?>"  > <?php echo $bu['year']; ?> </option>
    <?php } ?> 
  </select>
      </div>
    </div>
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Choose Year :</label>
      <div class="col-sm-10">
      
        <select class="form-control" id="sel1" name="year" onBlur="doCalc(this.form)" required>
        
          <?php
							
								$result = $con->query("SELECT * FROM disburse group by status order by id DESC") or die(mysqli_error($con));
				while($bu=$result->fetch_assoc()){
								?>
                       
        <option></option>          
        <option value="<?php echo $bu['status']; ?>"  > <?php echo $bu['status']; ?> </option>
    <?php } ?> 
  </select>
      </div>
    </div>
    
    
    
    
    
    
    
    
    <input type="hidden" class="form-control" id="email" name="cates"  onBlur="doCalc(this.form)" value="<?PHP echo $_GET['youcat']; ?>" >
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary" name="submit">GENERATE</button>
      </div>
   
      </form>
     
	

</div>
</div>

<?php
echo $m=$_POST['month'];
echo $y=$_POST['year'];
echo $s=$_POST['sector'];
?>


  <table class="table table-bordered sortableTable responsive-table" style="line-height:1.7">
                                    <thead>
                                 
       <th>S/N</th>
        <th>Date</th>
         <th>Action</th>
       
                                    </thead>
                                    <tbody>


                      <?php

   $dms=$con->query("SELECT * FROM disburse where year='$m' and status='$y'  GROUP BY month ") or die(mysqli_error($con));
   $i=1;
while($bums=$dms->fetch_assoc()){
	
?>                     <tr>
<td><?php echo $i++; ?></td>
                            
     <td ><?php echo $bums['month']; ?></td>
     <td><a href="../content/wp_bodi.php?date=<?php echo $bums['month']; ?>&sect=<?php echo $bums['receiver']; ?>" target="new">Print Warehouse Supply  Bodiro on <?php echo $bums['month']; ?></a>
                                    </tr>

  <?php } ?>

</tbody>
</table>


   