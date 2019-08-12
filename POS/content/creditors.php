

        
                <META HTTP-EQUIV="REFRESH" CONTENT="5">

        
        
        
               
    <a href=javascript:popcontact('../content/adding_crditors.php') style="color:#fff; text-decoration:blink">        											<button class="btn btn-primary"><i class="icon-pencil icon-white"></i> Add A New Creditors</button></a>
               
        
        
        
        
        
        
        
        
        
        
        
        
                     
                   </div>
                   
                   
                    <?php
	  $do12=$con->query("SELECT * from creditors where branch='".$branch."'  order by id DESC ") or die(mysqli_error($con));
	  $i=1;
      
      
      ?>     
        <table class="table table-bordered" style="background:#FFF">
    <thead>
      <tr>
        <th>S/N</th>
        <th>Crditor's Name</th>
                <th>Amount We Owed</th>
<th>Contact</th>

        
      </tr>
    </thead>
    
    
    <tbody>
    <?php while($df=$do12->fetch_assoc()){ ?>
      <tr>
                 <?php
		if($i%2==0)
 {
     echo '<tr bgcolor="white">';
 }
 else
 {
    echo '<tr bgcolor="AliceBlue">';
 }
		
		?>
        <td><?php  echo $i++; ?></td>
        <td><?php echo $df['name']; ?></td>
                <td><?php echo $df['owed']; ?></td>
 <td><?php echo $df['tel']; ?></td>

      
      
       
      </tr>
      
    <?php } ?>
    </tbody>
    
  </table>  
  