 <link href="../assets/css/font-awesome.css" rel="stylesheet" type="text/css" media="all">
        <link href="../assets/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">


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
	 $PRO=$rows['as3'];
 }

 ?>

<div class="fh_left" >

<DIV style="width:105px; height:200px; z-index:3; float:left; ">
<IMG src="../img/logo.jpg" style="border-radius:50px 50px 50px 50px; border:1px solid#000; height:100px; width:100px;" />

</DIV>

<DIV style="width:300px; height:200px; z-index:3;  float:left;">
 <h2 style="font-size:20px"><?PHP echo $PRO; ?> FOR <?PHP echo $clients; ?>  </h2>

</DIV>

</div>





<div class="fh_right">
<p><i class="fa fa-user "></i> <?php echo $who=$_SESSION['user_name']; ?> |

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

<DIV class="Ohead" style="font-size:24px; text-align:center; font-weight:bold; color:#333; "><BR />
ACCOUNTANT DASHBOARD

</DIV>
