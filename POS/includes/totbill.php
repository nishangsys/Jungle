
       
       
         <!----------------------->
         
<script language="JavaScript" src="../content/js/pop-up.js"></script>
   
   <script>
	function ajax(){
		
		var req = new XMLHttpRequest();
		
		req.onreadystatechange = function(){
		
		if(req.readyState == 4 && req.status == 200){
		
		document.getElementById('chat').innerHTML = req.responseText;
		} 
		}
		req.open('GET','../content/total.php?tabs=<?php echo $table=$_GET['roll']; ?>&adds=<?php echo $_GET['adds']; ?>&reduce=<?php echo $_GET['reduce']; ?>&good=<?php echo $_GET['our_staff']; ?>&br=<?php echo $brid; ?>',true); 
		req.send();
		
		}
		setInterval(function(){ajax()},1000);

</script>
 
    
    
    
    <body onLoad="ajax();">

		<div id="chat"></div>
	
   
  
   

