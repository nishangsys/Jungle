


  <form class="form-horizontal" role="form" action="stock_price.php" target="new" method="post" style="margin-top:30px">
  
  
   
  
  
   
     <div class="form-group">
      <label class="control-label col-sm-2" for="email">Sector:</label>
      <div class="col-sm-10">
       <select required class="form-control" id="sel1" name="area">
        <?php
							
								$result = $con->query("SELECT * FROM `sectors`
 where does='2' ") or die(mysqli_error($con));
				while($bu=$result->fetch_assoc()){
								?>
                       
        <option></option>          
        <option value="<?php echo $bu['area']; ?>"  ><?php echo $bu['name']; ?> </option>
    <?php } ?> 
        
      </select>
        </div>
        </div>
    
   
   
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success" name="ok">Print it </button>
      </div>
    </div>
  </form>
</div>
