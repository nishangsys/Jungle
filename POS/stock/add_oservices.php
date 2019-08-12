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
		
		
		 
//check if the day differnence is more thna 365 days
$rusn=mysql_query("SELECT DATEDIFF(CURDATE(),STR_TO_DATE(new, '%Y/%m/%d')) AS DAYS,r12,new
FROM roll where roll_id='1'") or die(mysql_error());
while($rows=mysql_fetch_assoc($rusn)){
	$left=($rows['DAYS']);
	   $sp=$rows['r12'];
	  $ri=$rows['new'];
}


      if($left>15  ) {
			echo "<script>alert('This software has expired since ".$ri.". This sofwtare will be blocked Soon ')</script>";
			
			echo '<meta http-equiv="Refresh" stock="3; url=../login.php">';
					
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
  $dfm=$con->query("SELECT * from finals WHERE barcode='$code' and qty>0 ") or die(mysqli_error($con));
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
		
		$DESLETE=$con->query("DELETE FROM basket WHERE product='$thepro' AND tab='".$_GET['roll']."' AND status='0'  ") or die(mysqli_error($con));	   
		    $update=$con->query("insert into basket  set product='$thepro',category='$category',price='$sp',
	total='$total',qty='1',cp='$dbprice',status='',tab='".$_GET['roll']."',ids='$id',opening_stocks='$aviail',closing_stocks='$newqty',area='1',profit='$profit',time='$time',
date='$date',day='$day',month='$month',year='$year',froms=''")  or die(mysqli_error($con));

	
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
  
  
   
    <?php
	include 'head.php';
	?>
  
  
 <div class="container-fluid text-center">    
  <div class="row stock">
    <div class="col-sm-2 sidenav">
      <ul class="nav nav-pills nav-stacked">
        <li class="active" style="font-size:18px"><a href="?roll=1&name=customer&cate="> <i class="icon-home"></i> Home</a></li>
        
 <?php
			$cate=$_GET['produc'];
		  $query = $con->query("SELECT * from  finals GROUP BY disc ") or die(mysqli_error($con));
while($row = $query->fetch_assoc()) {

	?>
    
    <!---ADD CLASS OF delete to link to effect ajax
    
    add variable into id
    -->
       <a href="?roll=1&name=customer&cate=<?php echo $row['disc']; ?>" style="color:#fff"  >
       
       <div class="col-sm-12" style="background:#033; height:60px; text-align:left;padding:5px 0px;  border:1px solid#fff ">
        <p style="padding-left:30px" style="color:#FF0"><?php echo $row['disc']; ?> &nbsp;&nbsp;
                                <span class="label label-danger" style=" "><?php
              $a = $con->query("SELECT COUNT(name) as total from  finals where disc='".$row['disc']."' and qty<1 GROUP BY disc ") or die(mysqli_error($con));
while($b = $a->fetch_assoc()) {
	echo $b['total'];
}
								?></span>
                                
                                
                                 <span class="label label-primary" style=""><?php
              $a = $con->query("SELECT COUNT(name) as total from  finals where disc='".$row['disc']."' GROUP BY disc ") or die(mysqli_error($con));
while($b = $a->fetch_assoc()) {
	echo $b['total'];
}
								?></span> </div></a>
      
      <?php } ?>
   
      </ul><br>
      <div class="input-group">
       
        </span>
      </div>
    </div>

   <div class="col-sm-7 text-left"> 
   
   
   
    
        <?php
		
		$d=$con->query("SELECT * FROM finals WHERE disc='".$_GET['service']."' order by name") or die(mysqli_error($con));
$i=1;
 while($bu=$d->fetch_assoc()){ ?>    
        
  
        <?php } ?>
      
       
       
       
  <div class="col-sm-12">
          <div class="well">
         
         
          <form method="post" action=""  style="margin-top:-30px">
  <div class="form-group">
    <label for="email"></label>
    <input type="text" class="form-control" placeholder="search by barcode" id="email" name="barcode" autofocus style="border:2px solid#00F; background:#FF9; padding:5px 5px" autocomplete="off" >
  </div>
  
  
</form>

<iframe src="search/index.php" style="width:100%; height:700px; border:none;" ></iframe>
     
      </div>
      </div>
         </div>   
<div class="col-sm-3 sidenav">
      <div class="well">
         
         <?php
	   include '../includes/bills.php';
	   
	   ?>
      </div>
      <div class="well">
        
      </div>
    </div>
  </div>
</div>

        
        
         
        
        
        
        
       <?php
	   include 'bills.php';
	   
	   ?>
       
       <div style="background:#033; width:100%; position:fixed; bottom:5PX">
  <p style="color:#CCC; text-align:center">&copy; <?php echo date('Y'); ?> Copy Rights Reserved by Programmer</p>
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


