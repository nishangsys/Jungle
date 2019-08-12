<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/mystyle.css">
	<link rel="stylesheet" type="text/css" href="../css/another.css">
    
    
    <link rel="stylesheet" media="screen" href="../css/left-fluid.css">
    
   
    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="../assets/css/main.css" />
    <link rel="stylesheet" href="../assets/css/theme.css" />
    <link rel="stylesheet" href="../assets/css/MoneAdmin.css" />
    <link rel="stylesheet" href="../assets/plugins/Font-Awesome/css/font-awesome.css" />
   
	<?php /*
   	<META HTTP-EQUIV="REFRESH" CONTENT="15">*/ ?>

        <?php 
		include '../includes/dbc.php';
		
		 $d=$con->query("SELECT * FROM branches where id='".$_GET['name']."'   ") or die(mysqli_error($con));
$i=1;
while($bu=$d->fetch_assoc()){
	$brid=$bu['name'];
}
	
//check if the day differnence is more thna 365 days
$rusn=mysql_query("SELECT DATEDIFF(CURDATE(),STR_TO_DATE(new, '%Y/%m/%d')) AS DAYS,r12,new
FROM roll where roll_id='1'") or die(mysql_error());
while($rows=mysql_fetch_assoc($rusn)){
	$left=($rows['DAYS']);
	   $sp=$rows['r12'];
	  $ri=$rows['new'];
}

@session_start();
  $level=$_SESSION['banned'];
 $id=$_SESSION['id'];
 
 ////use session id to get full name
  
  			$one=$con->query("SELECT * FROM users WHERE 
           id='".$_SESSION['id']." ' ") or die (mysql_error($con)); 
		while($row=$one->fetch_assoc()){
			
			$username=$row['user_name'];
			
		}	 

      if($left>15  ) {
			echo "<script>alert('This software has expired since ".$ri.". This sofwtare will be blocked Soon ')</script>";
			
			echo '<meta http-equiv="Refresh" content="0; url=../login.php">';
					
	}
	else if(empty($level)){
			echo '<meta http-equiv="Refresh" content="0; url=../login.php">';
	}
	
	else {
				
 if($left>1 && $left<15 ) {
					echo "<script>alert('This software has expired . System will be bliocked Soon')</script>";


	}
		
		
		if(isset($_GET['sell'])){	
	$_POST = array_map("ucwords", $_POST);	
		
	$o_stock=$_GET['stock'];
	$c_stock=$_GET['stock']-1;
	$pric=$_GET['sp'];
	$toatl=$_GET['sp'];
	$cp=$_GET['cp'];
	$profit=$pric-$cp;
	$product=$_GET['product'];
	$dat=date('d-m-Y');
	$month=date('m');
	$year=date('Y');
	$id=$_GET['roll'];
	$time=date('G:i:s');
	$name=$_GET['link'];
	$DESLETE=$con->query("DELETE FROM basket WHERE product='$product' AND tab='$id' AND status='0'  ") or die(mysqli_error($con));	 
	
  $sql = $con->query("INSERT INTO basket set opening_stocks='$o_stock',product='$product',qty='1',closing_stocks='$c_stock',price='$pric',area='0',date='$dat',month='$month',year='$year',time='$time',status='0',tab='$id',ids='$id',total='$toatl',printed='0',agent='$name',profit='$profit' ") or die(mysqli_error($con))   ;

	
}

if(isset($_POST['barcode'])){
	$code=$_POST['barcode'];
	if(empty($code)){
	}
	else {
  $dfm=$con->query("SELECT * from finals WHERE barcode='$code' and qty>0 and branch='$brid' ") or die(mysqli_error($con));
while($ac=$dfm->fetch_assoc())
		{
			 $thepro=$ac['name'];
			 $id=$ac['id'];
			$aviail=$ac['qty'];			
			$dbprice=$ac['cost'];
			$sp=$ac['sp'];
			$profit=$sp-$dbprice;
			$newqty=$aviail-1;
			 $category=$ac['disc'];  
			$day=date('d');
			$month=date('m');
			$year=date('Y');
			$date=date('d-m-Y'); 
			$time=date('h:i:s');
			$total=$sp;
			@session_start();
			$user=$_SESSION['user_name'];
			
			$check=$con->query("SELECT * FROM basket WHERE product='$thepro' AND tab='".$_GET['roll']."' AND status='0' and froms='$brid' ") or die(mysqli_error($con));
			if(mysqli_num_rows($check)){
				
				/////
				while($ok=$check->fetch_assoc()){
					$cu=$ok['qty'];
					$nqty=$cu+1;
					$pid=$ok['id'];
					$totl=$sp*$nqty;
				}
				/////
				
				
				$update=$con->query("UPDATE basket  set qty='$nqty',total='$totl' where id='$pid' ")  or die(mysqli_error($con));


			}
			else {
		
		   
		    $update=$con->query("insert into basket  set product='$thepro',category='$category',price='$sp',
	total='$total',qty='1',cp='$dbprice',status='',tab='".$_GET['roll']."',ids='$id',opening_stocks='$aviail',closing_stocks='$newqty',area='1',profit='$profit',time='$time',
date='$date',day='$day',month='$month',year='$year',froms='$brid' ")  or die(mysqli_error($con));
			}////close else

	
		}
		}
		
}

if(isset($_POST['save'])){
	$item=$_POST['name'];
	$cost=$_POST['amount'];
	$dat=date('d-m-Y');
	$month=date('m');
	$year=date('Y');
	$toatl=$_POST['amount'];
	$pric=$_POST['amount'];
	$id=$_GET['roll'];
	$time=date('G:i:s');
	$name=$_GET['link'];
	 $sql = $con->query("INSERT INTO basket set opening_stocks='$o_stock',product='$item',qty='1',closing_stocks='$c_stock',price='$pric',area='0',date='$dat',month='$month',year='$year',time='$time',status='0',tab='$id',ids='',total='$toatl',printed='0',agent='$name',profit='$profit' ") or die(mysqli_error($con));
	 //$DESLETE=$con->query("DELETE FROM basket WHERE product='$item' AND tab='$id' AND status='0'  ") or die(mysqli_error($con));	
}












		?>
  <div style="clear:both" ></div>  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  <!-------PAYMENTS CODES----->
  
  
  <?PHP
if(isset($_POST['paid'])){
	echo $paid=$_POST['paid'];
	$date=date('d-m-Y');
		$time=date('h:i:s');
		$month=date('m');
		$year=date('Y');
		$who=$_GET['roll'];

	$a = $con->query("SELECT SUM(price*qty) as totbill FROM basket where tab='".$_GET['roll']."' and status='0' GROUP BY tab") or die(mysqli_error($con));
			
		while($rows = $a->fetch_assoc()) {
			echo $tot=$rows['totbill'];
		}
		$change=$tot-$paid;
		
		
			$acv=$con->query("INSERT INTO daily set cust_id='$who',room='',amt='$amt_owed',reason=' Bill',qty='1',price='$tot',total='$tot',
			owed='',date='$date',month='$month',year='$year',area='0',time='$time',paidto='".$username."',purpose='Bills' ,idds='',discount='$discoun',staffname='$name',rec='$paid',paidtou='' ") or die(mysqli_error($con));
		

		echo "<script>alert('THANKS')</script>";
		
		
echo "<script>window.open('../content/rec.php?roll=".$who."&br=".$_GET['name']."','_new')</script>";
		 

}

?>








  
   
    <?php
	include 'head.php';
	?>
  
  
 <div class="container-fluid text-center">    
  <div class="row content">
  
  
  <!---------total bills today---->
  <div class="col-sm-5 sidenav">
      <div class="well">
      
      
  <form class="form-horizontal" role="form" method="post" action=""> 
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Amount Paid:</label>
    <div class="col-sm-10">
      <input type="number" class="form-control" id="email" placeholder="Amount Paid" style="border:3PX solid#F00; font-size:25PX; font-weight:bold; padding:5px 5px; color:#00F" name="paid" required="required">
    </div>
  </div>
  
</form>
      
     
      <?php
		  $brid;
	  include '../includes/bills.php';
	   
	   	
	   ?>
      </div>
      </div>
  
   
   <div class="col-sm-7 text-left"> 
   
   
   
    
        <?php
		
		$d=$con->query("SELECT * FROM finals WHERE disc='".$_GET['service']."' order by name") or die(mysqli_error($con));
$i=1;
 while($bu=$d->fetch_assoc()){ ?>    
        
  
        <?php } ?>
      
       
       
       
  <div class="col-sm-12">
          <div class="well" style="color:#F00; font-weight:bold; font-family:'Arial Black', Gadget, sans-serif; font-size:18px">
          
          <IMG src="../img/money_bag.png" />
        CUSROMER'S CHANGE : <span style="background:#00F; color:#FFF; padding:10PX 10PX"> <?php echo number_format($change);  ?>  XAF</span>
         <iframe src="ss/index.php?branch=<?php echo $brid; ?>&roll=1" style="width:100%; height:800px; border:none;" ></iframe>
   </div>



      </div>
      </div>
       
</div>

       
        
        
      
       
       <div style="background:#033; width:100%; position:fixed; bottom:5PX">
  
  
  
<div style="background:#033;  color:#ff0; padding:10px 10px; text-align:center; font-size:25px">
<?php 
		
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
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    
       
                         
    <!--END FOOTER -->
     <!-- GLOBAL SCRIPTS -->
    <script src="../assets/plugins/jquery-2.0.3.min.js"></script>
     <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/plugins/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <!-- END GLOBAL SCRIPTS -->
        <!-- PAGE LEVEL SCRIPTS -->
    <script src="../assets/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="../assets/plugins/dataTables/dataTables.bootstrap.js"></script>
     <script>
         $(document).ready(function () {
             $('#dataTables-example').dataTable();
         });
    </script>
                            </div>
                        </div>
                  
        <?php } ?>

