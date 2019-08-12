<?php

	  include '../includes/dbc.php';	
?>
    

<!DOCTYPE html>
<html>
	
<head>
	<title>New Student</title>
		<meta charset="utf-8">
		
		<meta name="viewport" stock="width=device-width, initial-scale=1">
		
        <link href="style.css" rel="stylesheet" type="text/css" />
        <style>
		.stock{
		width:900px;
		margin:0 auto;
	}
	#searchid
	{
		width:500px;
		border:solid 1px #000;
		padding:10px;
		font-size:14px;
	}
	#result
	{
		position:absolute;
		width:500px;
		padding:10px;
		display:none;
		margin-top:-1px;
		border-top:0px;
		overflow:hidden;
		border:1px #CCC solid;
		background-color: white;
	}
	.show
	{
		padding:10px; 
		border-bottom:1px #999 dashed;
		font-size:15px; 
		height:50px;
	}
	.show:hover
	{
		background:#4c66a4;
		color:#FFF;
		cursor:pointer;
	}
		</style>
		<!--//webfonts-->
</head>

<script type="text/javascript">

    function PreviewImage() {
        var oFReader = new FileReader();
        oFReader.readAsDataURL(document.getElementById("uploadImage").files[0]);

        oFReader.onload = function (oFREvent) {
            document.getElementById("uploadPreview").src = oFREvent.target.result;
        };
    };

</script>

<script type="text/javascript" src="jquery-1.8.0.min.js"></script>
<script type="text/javascript">
$(function(){
$(".search").keyup(function() 
{ 
var searchid = $(this).val();
var dataString = 'search='+ searchid;
if(searchid!='')
{
	$.ajax({
	type: "POST",
	url: "search.php",
	data: dataString,
	cache: false,
	success: function(html)
	{
	$("#result").html(html).show();
	}
	});
}return false;    
});

jQuery("#result").live("click",function(e){ 
	var $clicked = $(e.target);
	var $name = $clicked.find('.name').html();
	var decoded = $("<div/>").html($name).text();
	$('#searchid').val(decoded);
});
jQuery(document).live("click", function(e) { 
	var $clicked = $(e.target);
	if (! $clicked.hasClass("search")){
	jQuery("#result").fadeOut(); 
	}
});
$('#searchid').click(function(){
	jQuery("#result").fadeIn();
});
});
</script>


<div class="col-sm-8 text-left"> 
    

<div class="stock">
<form method="post" action="" autocomplete="off">
<table style="background:#CFF" class="table">
<tr>
<td>
<input type="text" class="search" id="searchid" placeholder="Search for clients........." name="name" /></td>
<td><button type="submit" name="ok" class="myButton"   >Search</button></td></tr>

<div id="result">
</div>

  </form>
  </table>

	

  
   <?php
   if(isset($_POST['ok'])){
	  
	   $name=$_POST['name'];
	   $b=$con->query("SELECT * FROM names where name='$name' LIMIT 1") or die(mysqli_error($con));
	   while($fg=$b->fetch_assoc()){
		   $yname=$fg['name'];
		   $tel=$fg['sector'];
		    $adress=$fg['dept'];
		   $date=date('d-m-Y');
		   $year=date('Y');
		   
	   }
	   $count=mysqli_num_rows($b);
	   if(empty($yname) or $count<1){
		 echo '<meta http-equiv="Refresh" stock="0; url=?new_client='.$name.'">';
	   }
	   else{
		   $mk=$con->query("INSERT INTO customers set stu_name='$yname',address='$adress',reg_date='$date',tel='$tel',year='$year' ") or die(mysqli_error($con));
		    	echo '<meta http-equiv="Refresh" stock="0; url= ?go_ahead&link='.$name.'&roll='.$yid.'">';
	 
	  }
   }
   
   ?>
			