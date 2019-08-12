 <?php
 echo $are=$_GET['area'];
		  $query = $con->query("SELECT * FROM 
		  finals where area='$are'  GROUP BY disc") or die(mysqli_error($con));
while($row = $query->fetch_assoc()) {

	?>
       <a href="?area=<?php echo $_GET['area']; ?>&temp=<?php echo $_GET['temp']; ?>&tabs=<?php echo $_GET['table']; ?><?php echo $_GET['tabs']; ?>&cats=<?php echo $row['disc']; ?>" style="color:#fff" >
       
       <div class="col-sm-12" style="background:#033; padding:10px 0px; text-align:left; border-bottom:1px solid#fff ">
        <p style="padding-left:30px"><?php echo $row['disc']; ?></p></div></a>
      
      <?php } ?>