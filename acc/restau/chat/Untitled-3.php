<?php
include 'dbc.php';
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
.contain{
	width:40%;
	margin:0px auto;
	padding:20px;
	
}
.chat_box{
	width:90%;
	height:400px;
	background:#fff;
}
.chat_data{
	width:100%;
	padding:5px;
	margin_bottom:5px;
	border-bottom:1px solid#000;
}
.ReloadThis{
	background:#eee;
}

</style>
</head>
<script>
function ajax(){
	var xmlHttp;
	try{	
		xmlHttp=new XMLHttpRequest();// Firefox, Opera 8.0+, Safari
	}
	catch (e){
		try{
			xmlHttp=new ActiveXObject("Msxml2.XMLHTTP"); // Internet Explorer
		}
		catch (e){
		    try{
				xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
			catch (e){
				alert("No AJAX!?");
				return false;
			}
		}
	}

xmlHttp.onreadystatechange=function(){
	if(xmlHttp.readyState==4){
		document.getElementById('ReloadThis').innerHTML=xmlHttp.responseText;
		setTimeout('Ajax()',10000);
	}
}
xmlHttp.open("GET","chat.php",true);
xmlHttp.send(null);
}

window.onload=function(){
	setTimeout('Ajax()',10000);

}

</script>

<body onload="ajax();">
<div class="contain">
<div class="chat_box">


	<div id="ReloadThis"><!------ReloadThis is the id to call the ayax page------->
    
    
    
    </div>
    </div>
        	<form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
            <input type="text" name="name" placeholder="your name" />
            <textarea name="message" placeholder="your message"></textarea>
            <button type="submit" name="send">Send</button>
            
            
            </form>
            
    
    
     <?php
	if(isset($_POST['send'])){
		$name=$_POST['name'];
		$mssg=$_POST['message'];
		
		$p=mysql_query("INSERT INTO chat set name='$name', message='$mssg'") or die(mysql_error());
		echo "<embed loop='false' src='alarm.mp3' hidden='true' autoplay='true' ";
	}
	
	?>
   

</div>
</body>
</html>