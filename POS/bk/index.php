<style>
body{
	background:#000;
}
</style>

<?php

/**
 * copy mysqldump.exe from xampp folder and place at same location where you run script
 * change username , password and database name
 * change drive name where you want to backup sql
 */

if(is_dir("E:\NISHANG")){
	$date = date("d-M-y-H-i-s");

	$file_name = "E:\NISHANG\s_f-$date.sql";

	exec("mysqldump.exe -unishang -pgoogle1234 pos > $file_name");
	?>
	<center>
		<img id="loader" src="loader.gif">
	</center>
	<script type="text/javascript">
		setTimeout(function(){
			document.getElementById("loader").style.display = "none";

			alert("Database backup Successfully!!!"); 
		}, 3000);
	</script>
<?php
} else{
	echo "<script>alert('Sorry Nishang System Directory is not Valid. Call 679135426')</script>";
	?>
    
    <div style="background:#FF0; color:#F00; font-size:25px; text-align:center; width:500px; padding:30px; margin:auto; margin-top:100px; font-family:Arial, Helvetica, sans-serif; font-weight:bold"> <img src="s4.gif" /><br /><br />Sorry Nishang System Directory is not Valid. Call 679135426 <br />
  <span style="color:#00F; font-size:16px" > Creating License for System Directory : 40,000 Frs</span></div>
	<?php
}