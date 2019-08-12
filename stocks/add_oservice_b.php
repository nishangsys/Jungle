<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/mystyle.css">
	<link rel="stylesheet" type="text/css" href="../css/another.css">
   
    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="../assets/css/main.css" />
    <link rel="stylesheet" href="../assets/css/theme.css" />
    <link rel="stylesheet" href="../assets/css/MoneAdmin.css" />
    <link rel="stylesheet" href="../assets/plugins/Font-Awesome/css/font-awesome.css" />
        <?php 
		include '../includes/dbc.php';
		
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
	
 echo  $sql = $con->query("INSERT INTO basket set opening_stocks='$o_stock',product='$product',qty='1',closing_stocks='$c_stock',price='$pric',area='0',date='$dat',month='$month',year='$year',time='$time',status='0',tab='$id',ids='$id',total='$toatl',printed='0',agent='$name',profit='$profit' ") or die(mysqli_error($con))   ;

	
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
      
        
       
       
       
  <div class="col-sm-12">
          <div class="well">
         
	   
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                
        </h3>
        <?php $d=$con->query("SELECT * FROM supermkt order by name") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                            <th>#</th>
                                             <th>Name</th>
        <th>Cost</th> 
        <th>Units</th> 
        <th>Category</th> 
         <th>Action</th> 
        
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
       
           <td><?php  echo $i++; ?></td>
                                            <td><?php  echo $bu['name']; ?></td>
                                            <td><?php  echo $bu['sp']; ?></td>
                                               <td><?php  echo $bu['qty']; ?></td>
                                  <td><?php  echo $bu['disc']; ?></td>
                                            <td><a href="?link=<?php echo $_GET['link']; ?>&product=<?php echo $bu['name']; ?>&cp=<?php echo $bu['cost']; ?>&sp=<?php echo $bu['sp']; ?>&stock=<?php echo $bu['qty']; ?>&roll=<?php echo $_GET['roll']; ?>&sell"><button class="btn btn-primary" ><i class="icon-gbp"></i> Sell to Client</button></a></td>
                                           
                        
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                </table>
                         
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
                  
        


