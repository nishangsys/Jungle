<div class="chat_box">
    <?php
	include 'dbc.php';
	include 'function.php';
	$ol=mysql_query("SELECT * from chat order by id") or die(mysql_error());
	while($row=mysql_fetch_assoc($ol)){
	
	?>
    	<div class="chat_data">
        <span style="color:#0C0"><?php echo $row['name']; ?></span>
        <span style="color:#666"><?php echo $row['message']; ?></span>
        <span style="color:#09C; float:right"><?php 
		
		$curenttime=$row['date'];
  $time_ago =strtotime($curenttime);
  echo timeAgo($time_ago); ?></span>
        
         <?php } ?>
        </div>
       