                  	<META HTTP-EQUIV="REFRESH" CONTENT="3">


 <?php
		
		  $query = $con->query("SELECT * FROM 
		 ".$db_table." order by id") or die(mysqli_error($con));
while($row = $query->fetch_assoc()) {
	$status=$row['status'];

	?>
              <a href="?area=<?php echo $_GET['area']; ?>&tabs=<?php echo $row['num']; ?>" style="color:#fff">
       
       <div class="col-sm-3" style="background:<?php if($status==2){ echo "#090";}
	  else{
		   echo "#851916";
	  }  ?>; padding:10px 0px; text-align:left; border:1px solid#fff ">
        <p style="padding-left:30px">Table <?php echo $row['num']; ?></p></div></a>
      
      <?php } ?>
	  
      
      
           <?php
		   
		
		   
	 $num=strlen($_GET['table'],0,1);
	 $reP=mysql_query("SELECT * FROM splits WHERE status='1' and area='$a_area' GROUP BY sp,num order by id ") or die(mysql_error());
	 while($gh=mysql_fetch_assoc($reP)){
	 ?>
     
     
     <a href="?area=<?php echo $_GET['area']; ?>&tabs=<?php echo $gh['sp']; ?>" style="color:#fff">
       
       <div class="col-sm-3" style="background:#033; padding:10px 0px; text-align:left; border:1px solid#fff ">
        <p style="padding-left:30px">Table <?php echo $gh['sp']; ?></p></div></a>
      
         </a>
        <?php } ?>