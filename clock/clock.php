<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>CSS3 Digital Clock with jQuery</title>
<link href="styless.css" rel="stylesheet" media="all">
<script type="text/javascript" src="jquery-1.6.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
// Create two variable with the names of the months and days in an array
var monthNames = [ "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" ]; 
var dayNames= ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]

// Create a newDate() object
var newDate = new Date();
// Extract the current date from Date object
newDate.setDate(newDate.getDate());
// Output the day, date, month and year    
$('#Date').html(dayNames[newDate.getDay()] + " " + newDate.getDate() + ' ' + monthNames[newDate.getMonth()] + ' ' + newDate.getFullYear());

setInterval( function() {
	// Create a newDate() object and extract the seconds of the current time on the visitor's
	var seconds = new Date().getSeconds();
	// Add a leading zero to seconds value
	$("#sec").html(( seconds < 10 ? "0" : "" ) + seconds);
	},1000);
	
setInterval( function() {
	// Create a newDate() object and extract the minutes of the current time on the visitor's
	var minutes = new Date().getMinutes();
	// Add a leading zero to the minutes value
	$("#min").html(( minutes < 10 ? "0" : "" ) + minutes);
    },1000);
	
setInterval( function() {
	// Create a newDate() object and extract the hours of the current time on the visitor's
	var hours = new Date().getHours();
	// Add a leading zero to the hours value
	$("#hours").html(( hours < 10 ? "0" : "" ) + hours);
    }, 1000);
	
}); 
</script>

<script>


var $hours = document.getElementById('hours');
var $minutes = document.getElementById('minutes');

setTimeout(function () {
  "use strict";

  var hours = new Date().getHours();
  var minutes = new Date().getMinutes();

  if (hours >= 6 && hours < 12) {
    $hours.className = 'left';
  } else {
    $hours.className = 'right';
  }

  if (minutes <= 30) {
    $minutes.className = 'back left';
  } else {
    $minutes.className = 'left';
  }

  set($hours,  30 * hours);
  set($minutes, 6 * minutes);
}, 1000);

function set ($elmt, deg) {
  "use strict";

  if ($elmt.id === 'hours' && deg < 180) {
    deg = deg - 5;
  }

  if ($elmt.id === 'minutes' && deg < 180) {
    deg = deg + 5;
  } else {
    deg = deg - 5;
  }

  $elmt.style.transform = 'rotate(' + deg + 'deg)';
  $elmt.style.webkitTransform = 'rotate(' + deg + 'deg)';
}

</script>
<style>
body{
	background:#fff;
	color:#666;

}
</style>
</head>
<body>

<div class="container" style="font-size:18px;">
<div class="clock" style=" color:#999">
<div id="Date" style="font-size:22px"></div>

<ul>
	<li id="hours"> </li>
    <li id="point">:</li>
    <li id="min"> </li>
    <li id="point">:</li>
    <li id="sec"> </li>
</ul>

</div>
</div>


<div style="background:#033; margin-top:220px; color:#fff; padding:10px 10px; text-align:center; font-size:25px">
<?php 
		include '../includes/dbc.php';

$rusn=mysql_query("SELECT DATEDIFF(CURDATE(),STR_TO_DATE(new, '%Y/%m/%d')) AS DAYS,r12,new
FROM roll where roll_id='1'") or die(mysql_error());
while($rows=mysql_fetch_assoc($rusn)){
	$left=($rows['DAYS']);
	$date=$rows['r12'];
	   $ab=abs($left);
}

if ($left<0){
	echo $ab."&nbsp;&nbsp;Days Left for Software to Expire ($date)";
}
else {
	echo "<span style='color:#f00; text-shadow:1px 1px#fff'>WARNING!!! Software Has Expired</span>";
}
?> 

</div>









</body>
</html>
