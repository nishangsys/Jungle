
        
                <META HTTP-EQUIV="REFRESH" CONTENT="5">

        

    
                    <?php
	  $do12=$con->query("SELECT * from daily  where reason='".$_GET['pay_history']."' and staffname='$branch' ") or die(mysqli_error($con));
	  $i=1;
      
      
      ?>     
        <table class="table table-bordered" style="background:#FFF">
    <thead>
      <tr>
        <th>S/N</th>
        <th>creditors Name</th>
         <th>Amount Paid</th>
                <th>Date</th>

        
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
        <td><?php echo $df['reason']; ?></td>
                <td><?php echo $df['exp']; ?></td>
     <td><?php echo $df['date']; ?></td>


       

       
      </tr>
      
    <?php } ?>
    </tbody>
    
  </table>  
  