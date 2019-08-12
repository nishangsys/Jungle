<?php

//include '../dbc.php';
session_start();

if(!isset($_SESSION['user_name'])){
echo '<meta http-equiv="Refresh" content="1; url=login.php">';

}

else {
	
		


?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="tabcontent.js" type="text/javascript"></script>
    <link href="template1/tabcontent.css" rel="stylesheet" type="text/css" />
    <link href="style.css" type="text/css" rel="stylesheet" />
 <link href="assets/css/font-awesome.css" rel="stylesheet" type="text/css" media="all">
        <link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">


<title>Chat Box</title>
<style>


#chat_box {
	width:100%; 
	height:100%;
}
#chat_data {
	width:100%; 
	padding:5px; 
	margin-bottom:5px;
	border-bottom:1px solid silver;
	font-weight:bold;
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
	background:#eee;
	z-index:3;
}
#chat{
	border:1px dashed#000;
	padding:15px 15px;
	height:auto;
	overflow:hidden;
	width:100%;
	
}
.hea{
	width:100%;
	height:auto;
	padding:10px 0px;
	background:#333;
	overflow:hidden;
}
.a{
	width:140px;
	float:left;
	border-right:1px solid#fff;
	height:auto;
	padding:10px 0px;
	color:#fff;
	display:inline;
	position:relative;
	
}
form textarea,
form select {
		background-color: #fff;
		border: 1px solid rgb( 186, 186, 186 );
		border-radius: 1px;
		box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.08);
		display: block;
		font-size: 1em;
		margin:10px auto;
		padding: .4em .55em;	
		text-shadow: 0 1px 1px rgba(255, 255, 255, 1);
		transition: all 400ms ease;
		width: 85%;
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
		req.open('GET','stock.php',true); 
		req.send();
		
		}
		setInterval(function(){ajax()},1000);

</script>

<body onload="ajax();">



		<div id="chat_box" >
		<div id="chat"></div>
		</div>
   
  
   

</div>
</body>
</html>
<?php }   ?>