<?php


$date = date("d-M-y-H-i-s");

$file_name = "D:NISHANG\s_f-$date.sql";

exec("mysqldump.exe -unishang -pgoogle1234 university > $file_name");
?>
<center>
	<img id="loader" src="loading.gif">
</center>
<script type="text/javascript">
	setTimeout(function(){
		document.getElementById("loader").style.display = "none";

		alert("Database backup Successfully!!!"); 
	}, 3000);
</script>