 <?php
 $section=$_GET['area'];
 $table=$_GET['tabs'];
 
 ?>
        <div class="col-sm-5" >
        
      
      
      
          <div class="well">
           
       
    
       
       
         <!----------------------->
   
   <script>
	function ajax(){
		
		var req = new XMLHttpRequest();
		
		req.onreadystatechange = function(){
		
		if(req.readyState == 4 && req.status == 200){
		
		document.getElementById('chat').innerHTML = req.responseText;
		} 
		}
		req.open('GET','billing.php?area=<?php echo $section; ?>&tabs=<?php echo $table=$_GET['tabs']; ?>&db_basket=<?php echo basket; ?>&db_table=<?php echo $_GET['dbtables']=$db_table; ?>&add=<?php echo $_GET['add']; ?>&reduce=<?php echo $_GET['reduce']; ?>&good=<?php echo $serial; ?>',true); 
		req.send();
		
		}
		setInterval(function(){ajax()},1000);

</script>
 
    
    
    <?php
	/////////////////commmand
	
	 if(isset($_GET['command'])){
		 $add=$_GET['command'];
	
	//////////////////update basket	 	
	$un1=$con->query("UPDATE basket set status='3' where tab='$add' and status='1' ") or die(mysqli_error($con));
	
	$da=mysql_query  ("DELETE FROM basket WHERE qty<1") or die(mysql_error());
	 }
	
	
	
	
	
	
	
	
	
	
	
	
	
    
	 if(isset($_GET['add'])){
		 $add=$_GET['add'];
		 $un=$con->query("SELECT SUM(qty),price,qty,total,product FROM basket where id='$add'") or die(mysqli_error($con));
		 while($df=$un->fetch_assoc()){
			 $prodc=$df['product'];
			 $pri=$df['price'];
			 $qtyt=$df['SUM(qty)'];
			  $tota=$df['total'];
			  $nqty=$qtyt+1;
			 $newtot=($nqty*$df['price']);
			  	
		 }
	//////////////////update basket	 	
	$un1=$con->query("UPDATE 	basket set qty='$nqty' ,total='$newtot' where id='$add' limit 1") or die(mysqli_error($con));
	
	//CHECK PRODUCT TABLE	 and update		
	$a=$con->query("SELECT * FROM finals where name='$prodc' and area='$section'") or die(mysqli_error($con));;
		 while($df=$a->fetch_assoc()){
			  $prodc=$df['name'];
			 $pri=$df['sp'];
			 $ids=$df['id'];
			 $qtyt=$df['qty'];
			  $nqty=$qtyt-1;
			  	
		 }
		 //update product table
		 $un11=$con->query("UPDATE 	finals set qty='$nqty'   where id='$ids' limit 1") or die(mysqli_error($con));
	
	 echo '<meta http-equiv="Refresh" content="0; url=index.php?what=drink&area='.$_GET['area'].'&temp='.$_GET['temp'].'&tabs='.$_GET['tabs'].'">';
	 


	}
	
	
	
	//reduce qty
	
	if(isset($_GET['reduce'])){
		 $add=$_GET['reduce'];
		 $un=$con->query("SELECT SUM(qty),price,qty,total,product FROM basket where id='$add'") or die(mysqli_error($con));
		 while($df=$un->fetch_assoc()){
			 $prodc=$df['product'];
			 $pri=$df['price'];
			 $qtyt=$df['SUM(qty)'];
			 $temp=$df['temp'];
			  $tota=$df['total'];
			  $nqty=$qtyt-1;
			 $newtot=($nqty*$df['price']);
			  	
		 }
		 	

		 
		 
	$un1=$con->query("UPDATE 	basket set qty='$nqty' ,total='$newtot' where id='$add' limit 1") or die(mysqli_error($con));
	
	
//CHECK PRODUCT TABLE	 and update		
//CHECK PRODUCT TABLE	 and update		
	$a=$con->query("SELECT * FROM finals where name='$prodc' and area='$section'") or die(mysqli_error($con));;
		 while($df=$a->fetch_assoc()){
			  $prodc=$df['name'];
			 $pri=$df['sp'];
			 $ids=$df['id'];
			 $qtyt=$df['qty'];
			  $nqty=$qtyt+1;
			  	
		 }
		 //update product table
		 $un11=$con->query("UPDATE 	finals set qty='$nqty'   where id='$ids' limit 1") or die(mysqli_error($con));
	
	 echo '<meta http-equiv="Refresh" content="0; url=index.php?what=drink&area='.$_GET['area'].'&temp='.$_GET['temp'].'&tabs='.$_GET['tabs'].'">';
	 
	  echo '<meta http-equiv="Refresh" content="0; url=index.php?what=drink&area='.$_GET['area'].'&temp='.$_GET['temp'].'&tabs='.$_GET['tabs'].'">';
	 

	
	}
	
	
	
	
	
	
	
	?>
    
    
    <body onLoad="ajax();">

		<div id="chat"></div>
		</div>
   
  
   


  </div>
</div>