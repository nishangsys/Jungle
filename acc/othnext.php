 
  <?php
	  
$month=$_POST['month'];
	$day=$_POST['day'];
	if($day<10){
		$da="0".$day;
	}
	else {
		$da=$day;
	}
		
	$name=$_POST['name'];
	$area=$_POST['area'];
	$month1="0".$_POST['month'];
	$year=$_POST['year'];
	$date=$da."-".$month."-".$year;
	$sector=$_POST['sector'];
	 $a=mysql_query("SELECT * from sectors where area='$sector' ") or die(mysql_error());
	 while($rows=mysql_fetch_assoc($a)){
		 $s=$rows['name'];
	 }
	 
	  ?>
      
 
  <Div style="background:#1188AA; border:1PX solid#000; padding:10px 10px; width:500px; margin:20PX 20PX; float:left; color:#666; border:1px solid#000">
  
   <a href="?othsaving&date=<?PHP echo $date; ?>&area=<?PHP echo $sector; ?>&sector=<?PHP echo $s; ?>&m=<?PHP echo $month; ?>&y=<?PHP echo $year; ?>" style="color:#fff; font-size:18px; text-decoration:none">Record   <?PHP echo $s; ?> Expenditure on <?PHP echo $date; ?></a>
   </Div>