<script type="text/javascript">
function Ajax(){
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
		document.getElementById('load_data').innerHTML=xmlHttp.responseText;
		setTimeout('Ajax()',1000);
	}
}
xmlHttp.open("GET","load_data.php",true);
xmlHttp.send(null);
}
window.onload=function(){
	setTimeout('Ajax()',1000);
}
</script>
<h3 style = "text-align:center;"><b style = "font-size: 25px; color:#FF0000">AUTO LOAD</b> YOUR DATA FROM DATABASE</h3>
<div id = "load_data" style = "width:800px; margin:0 auto; overflow:scroll;"></div>