 <link href="../assets/css/font-awesome.css" rel="stylesheet" type="text/css" media="all">
        <link href="../assets/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
          <style>
.com1{
	width:30px;

	background:url(../img/com.png);
	
	float:left;
	
}
.com{
	
	background:#f00;
	height:25px;
	padding:0px 5px;
	font-size:12px;
	border-radius:15px 15px 15px 15px;
	color:#fff;
	float:left;
	position:absolute;
	top:0px;
	margin-left:20px;	
}

</style>

<?php
$dept='Bar';
$time=date('Gi');
if($time==240){
	echo "<script>alert('PLEASE CLOSE ALL COUNTS FOR TODAY BEFORE ITS TOO LATE')</script>";
}
else {
}
include  '../dbc.php';

		 $today=date('d-m-Y');
$cvv=mysql_query("SELECT * from to_boss where date='$today'  and dept='$dept'  ") or die(mysql_error());
if(mysql_num_rows($cvv)>0){
		echo "<div style='background:#f00; color:#ff0; width:400px; text-align:center; padding:10px 10px; margin:auto; margin-top:120px'>Sorry Today has been closed. Carry foward Tommorow</div>";
		exit;
	}
	else {
require_once '../functions/functions.php';
session_start();
/*select * from table where `date` between $date - interval 7 day and $date*/
if(!isset($_SESSION['user_name'])){
echo "<script>window.open('login.php','_self')</script>";
}
else {
@session_start();
	$name=$_SESSION['user_name'];
	$date=date('d-m-Y');
	$time=date('G:i');
	$ref2=($_SERVER['PHP_SELF']);
$agent=($_SERVER['HTTP_USER_AGENT']);
$ip=@$_SERVER['REMOTE_ADDR'];


	$l=mysql_query("INSERT INTO tracker set name='$name', date='$date',time='$time',action='login',ref2='$ref2',agent='$agent',ip='$ip'") or die(mysql_error());
	
 ?>
 <script language="JavaScript" src="../js/pop-up.js"></script>
<div class="heads">


<div class="fhead">

<?PHP
$cus1="SELECT * from client ";
$run1=mysql_query($cus1) or die (mysql_error());
 while ($rows=mysql_fetch_assoc($run1)){
	 $clients=$rows['name'];
	 $AD=$rows['address'];
	 $TEL=$rows['as1'];
	 $vil=$rows['as2'];
 }

 ?>

<div class="fh_left" >

<DIV style="width:105px; height:200px; z-index:3; float:left; ">
<IMG src="../img/logo.jpg" style="border-radius:50px 50px 50px 50px; border:1px solid#000; height:100px; width:100px;" />

</DIV>

<DIV style="width:300px; height:200px; z-index:3;  float:left;">
 <h2 style="font-size:20px">NHMS FOR <?PHP echo $clients; ?>  </h2>

</DIV>

</div>





<div class="fh_right">
<p><i class="fa fa-user "></i> <?php echo $_SESSION['user_name']; ?> |

<a href="dashboard.php"> <i class="fa fa-cog "></i> Settings</a> | 
<a href="backup.php" style="color:#FC0; text-shadow:1px 1px #000"><i class="fa fa-database "></i> Back Up </a> |
<a href="../logout.php"><i class="fa fa-power-off "></i> Log out</a> |
<a href="../newkey.php" style="color:#1188aa">
<i class="fa fa-key "></i>  </a> |

<br />
 <marquee behavior="alternate" dir="rtl" scrollamount="2">
 <span class="error">Expiry Date:
	<?php
		
		 $checksoft="SELECT * from roll where roll_id='1' and status='2' ";
	$run=mysql_query($checksoft) or die (mysql_error()); 
	
		while($row=mysql_fetch_assoc($run)){
	echo $new=$row['new'];
	
		}
		

		
		?> <span style="color:#000; font-weight:normal; font-size:14px">/Y-mm-dd</span></span></marquee>
 </p>

</div>

</div>

<DIV class="Ohead">
<div class="subpost">
         
         
         
        
        
            <div class="inside" style="width:150px">
        <a href="restaupage.php" >All Tables</a><br />
        <img src="../img/aw.png" />
        </div>
        
        
          <div class="inside" style="width:300px">
        <a href="roomsales.php" >Sell to a Room</a><br />
                <img src="../img/pg.png" />

        </div>
        
        
        <div class="inside" style="width:300px">
        <a href="dashboard.php" >See Menu Items</a><br />
                <img src="../img/pg.png" />

        </div>
        
        
          <div class="inside" style="width:100px">
        <a href="<?php $_SERVER['SELF']; ?>?chat"><span> <img src="../img/com.png" /><div class="com1"></div><div class="com">
       
       <?php
	  
$todaye=date('d-m-Y');
$link = mysql_connect(DB_HOST, DB_USER, DB_PASS) or die("Couldn't make connection.");
$db = mysql_select_db(DB_NAME, $link) or die("Couldn't select database");
	   $today=date('d-m-Y');
	   $cu=mysql_query("SELECT COUNT(message) as totcount from chat where name='".$_SESSION['user_name']."'and date2='$today' ")  or die(mysql_error());
	   while($tt=mysql_fetch_assoc($cu)){
		   echo $tt['totcount'];
	   }
	   
	   
	   ?>
       
       
       
       </div> Chat&nbsp;&nbsp; </span></a>
      

        </div>
      
</div>


</DIV>

<?php } } ?>