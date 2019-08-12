9900
   <div class="row">
 
        <div class="col-sm-12">
        
   

       <table class="table table-bordered">
    <thead>
      <tr>
              <th>#</th>

        <th>Names</th>
        <th>Contact</th>
         <th>Action</th>
        
      </tr>
    </thead>
    <tbody>
    
      <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
         <?php
		if($i%2==0)
 {
     echo '<tr bgcolor="Bisque">';
 }
 else
 {
    echo '<tr bgcolor="White">';
 }
		
		?>
           <td><?php  echo $i++; ?></td>
                                            <td><?php echo $bu['stu_name']; ?></td>  
                                            <td><?php echo $bu['tel']; ?></td>  
                                              <td>
                                              
                                              
                                              
                                              <a href="?my_client&link=Chosing My clients Hair style&serve=<?php echo $bu['stu_name']; ?>&tel=<?php  echo $bu['tel']; ?>&addr=<?php  echo $bu['address']; ?>&id=<?php echo $bu['client_id']; ?>" style="font-weight:bold; color:#033" target="_self"><button class="btn btn-success"><i class="icon-briefcase icon-white"></i> Service  Client</button></a></td>
                   
      </tr>
      <?php } ?>
      </tbody>
      </table>
  </form>




</div>
</div>





