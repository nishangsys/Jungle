<?php
include 'dbc.php';

session_start();

require_once '../functions/functions.php';
if(!isset($_SESSION['user_name'])){
echo '<meta http-equiv="Refresh" content="1; url=login.php">';

}

else {
	@session_start();
	
	if(($_SESSION['banned'])!='5'){
		echo "<script>alert('Sorry.Cannot View Page')</script>";
		
		
			
	}
	else {


?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="tabcontent.js" type="text/javascript"></script>
    <link href="template1/tabcontent.css" rel="stylesheet" type="text/css" />

<title>Chat Box</title>
<style>
body{
	background:#eee;
	font-family:Arial, Helvetica, sans-serif;
	font-size:14px;
	color:#666;
	margin:0px;
	padding:0px;
}
#container {
	width:40%;
	background:white; 
	margin: 0 auto;
	padding:20px;

}
#chat_box {
	width:90%; 
	height:400px;
}
#chat_data {
	width:100%; 
	padding:5px; 
	margin-bottom:5px;
	border-bottom:1px solid silver;
	font-weight:bold;
}
input[type='text']{
	width:100%; 
	height:40px;
	border:1px solid gray; 
	border-radius:5px;
}
input[type='submit']{
	width:100%; 
	height:40px;
	border:1px solid gray; 
	border-radius:5px;
}
textarea{
	width:100%; 
	height:40px;
	border:1px solid gray; 
	border-radius:5px;
}
.bo1{
	float:left;
	width:300px;
	height:300px;
	border:1px solid#000;
}
.bo2{
	float:left;
	width:95%;
	height:300px;
	border:1px solid#000;
}

</style>
</head>
<script>
	function ajax(){
		
		var req = new XMLHttpRequest();
		
		req.onreadystatechange = function(){
		
		if(req.readyState == 4 && req.status == 200){
		
		document.getElementById('chat').innerHTML = req.responseText;
		} 
		}
		req.open('GET','chat.php',true); 
		req.send();
		
		}
		setInterval(function(){ajax()},1000);

</script>

<body onload="ajax();">

<div id="container">
		<div id="chat_box">
		<div id="chat"></div>
		</div>

    
    
    <div class="bo2">
    
    <?php
	$u=mysql_query("SELECT * FROM users") or die(mysql_error());
	
	?>
    
     <div style="width:100%; margin: 0 auto; padding: 120px 0 40px;">
        <ul class="tabs" data-persist="true">
        <?php
		while($row=mysql_fetch_assoc($u)){
			$names=$row['user_name'];
		?>
            <li><a href="index.php?view=<?php echo $row['user_name']; ?>&id=<?php echo $row['id']; ?>"><?php echo $row['user_name']; ?></a></li>
           
            <?php } ?>
        </ul>
        <div class="tabcontents">
            <div id="view1">
               
        	<form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
            <input type="hidden" name="name"  value="<?php echo $names; ?>" />
            <textarea name="message" placeholder="your message"></textarea>
            <button type="submit" name="send">Send</button>
            
            
            </form>
            
    
    
     <?php
	if(isset($_POST['send'])){
		
		$name=$_GET['view'];
		$id=$_GET['id'];
		$mssg=$_POST['message'];
		
		$p=mysql_query("INSERT INTO chat set name='$name', message='$mssg',yourid='$id'") or die(mysql_error());
		//echo "<embed loop='false' src='alarm.mp3' hidden='true' autoplay='true' ";
	}
	
	?>
        </div>
    </div>
    
    
    
    
    </div>
   

</div>
</body>
</html>
<?php }  } ?>