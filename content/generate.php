
<h1>Choose Sector to Generate Report</h1><br /><br />
     <form action="?generating" method="post" class="form-horizontal" id="regForm" style="margin-top:-30px" enctype="multipart/form-data">
      
    
    
    
    
    
    
    
    
    
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Choose Sector:</label>
      <div class="col-sm-10">
      
        <select class="form-control" id="sel1" name="zone" onBlur="doCalc(this.form)" required>
        
          <?php
							
								$result = $con->query("SELECT * FROM sectors where does='2' ") or die(mysqli_error($con));
				while($bu=$result->fetch_assoc()){
								?>
                       
        <option></option>          
        <option value="<?php echo $bu['name']; ?>"  ><?php echo $bu['name']; ?> </option>
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

   