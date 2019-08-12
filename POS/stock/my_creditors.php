<?php
	

?>
   
        
                <META HTTP-EQUIV="REFRESH" CONTENT="5">

        

    
                    <?php
	  $do12=$con->query("SELECT * from creditors   ") or die(mysqli_error($con));
	  $i=1;
      
      
      ?>     
        <table class="table table-bordered" style="background:#FFF">
    <thead>
      <tr>
        <th>S/N</th>
        <th>Creditor's Name</th>
                <th>Tel</th>

                <th>Amount We Owed</th>

        <th>ACTION</th>
        
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
   <td><?php echo $df['tel']; ?></td>
                   <td><?php echo $df['owed']; ?></td>


         <td>
           
         <a href=javascript:popcontact('../stock/pay_debts.php?adding_debtors=<?php echo $df['id']; ?>&debt=<?php echo $df['owed']; ?>&branch=<?php echo $branch; ?>&date=<?php echo $_GET['date']; ?>&month=<?php echo $_GET['month']; ?>&year=<?php echo $_GET['year']; ?>') style="color:#fff; text-decoration:blink">        											
     <button class="btn btn-primary"><i class="icon-pencil icon-white"></i> Pay our Debts</button>

</a></td>

       
      </tr>
      
    <?php } ?>
    </tbody>
    
  </table>  
  
  