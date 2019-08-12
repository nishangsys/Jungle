 <meta name="viewport" stock="width=device-width, initial-scale=1">
   
    <link rel="stylesheet" media="screen" href="../css/left-fluid.css">
    	        <META HTTP-EQUIV="REFRESH" CONTENT="5">
              
  
		                                <div class="col-md-8">

<?php
include '../includes/dbc.php';
include '../function/functions.php';

@session_start();
$id=$_SESSION['user_name'];
  $r=$_GET['ids'];

$query1 = $con->query("SELECT * FROM users where user_name='$id'") or die(mysqli_error($con));
		   while($rows = $query1->fetch_assoc()) {
			    $yid=$rows['id'];
				$gen_level=$rows['user_level'];
				
		   }
		   $sentby=$gen_level;
 $bgy=mysql_query("SELECT * FROM chat where  yourid='".$yid."' and  sentto='".$r."' or yourid='".$r."' and  sentto='".$yid."'   order by id DESC  ") or die(mysql_error());
while($ro=mysql_fetch_assoc($bgy)){
	
	
?>

<div class="callout" style="background:<?php if($ro['sentto']==$yid){
	echo "#FFFF99";
	echo ";color:#000; text-shadow:none;";
}
else{
	echo "#eee; color:#000; text-shadow:none;";
	
}?>; line-height:1.5; height:auto; "><span style="width:70%">


<span style="font-size:12px; color:#000; position:absolute; top:10px; left:10px; clear:both"> Message sent by:<span style="color:#f00; font-weight:bold"> <?php echo $ro['name'];
 $der=$ro['date2'];
 if( date('YmdGis')==$der){
 echo '<script type="text/javascript">play_sound();</script>';
	}
if($ro['date2']==date('YmdGis')){
echo ' <audio id="myAudio" autoplay="autoplay">
  <source src="notify.ogg" type="audio/ogg">
  <source src="notify.mp3" type="audio/mpeg">
  Your browser does not support the audio element.
</audio>';
}
else {
}


 ?></span>

</span>
<!--close span for sender--->


<span style="font-size:12px; color:#f00; position:absolute; top:10px; right:10px; clear:both"><?php	
		$curenttime=$ro['date'];
  $time_ago =strtotime($curenttime);
  echo timeAgo($time_ago); ?><span style="margin:5px 5px">
  
  


</span></span><br>

<?php if($ro['yourid']!=$user_id){
	echo $ro['message'];	
}
else{
		echo "<a href='messages.php?id=".$ro['id']."' class='links' target='_blank'> ".$ro['message']."</a>";

}?>
</span>


</div>

<?php } ?>