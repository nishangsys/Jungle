<link href="../assets/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
<?php
if(isset($_GET['sell'])){	
	$_POST = array_map("ucwords", $_POST);	
		
	$o_stock=$_GET['stock'];
	$c_stock=$_GET['stock']-1;
	$pric=$_GET['sp'];
	$toatl=$_GET['sp'];
	$product=$_GET['product'];
	$dat=date('d-m-Y');
	$month=date('m');
	$year=date('Y');
	$id=$_GET['roll'];
	$time=date('G:i:s');
	$name=$_GET['link'];
	
 echo  $sql = $con->query("INSERT INTO basket set opening_stocks='$o_stock',product='$product',qty='1',closing_stocks='$c_stock',price='$pric',area='0',date='$dat',month='$month',year='$year',time='$time',status='0',tab='$id',ids='$id',total='$toatl',printed='0',agent='$name' ") or die(mysqli_error($con))   ;

	
}
?>

<script language="JavaScript" src="../js/pop-up.js"></script>
  <div class="row">
  
  
        <div class="col-sm-7">
          <div class="well">
		
        
        
                              <div class="col-sm-12">
          <div class="well">
         
	   
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                
        </h3>
        <?php $d=$con->query("SELECT * FROM finals order by name") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                            <th>#</th>
                                             <th>Name</th>
        <th>Cost</th> 
        <th>Units</th> 
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
                                            <td><a href="?go_ahead&link=<?php echo $_GET['link']; ?>&product=<?php echo $bu['name']; ?>&cp=<?php echo $bu['cost']; ?>&sp=<?php echo $bu['sp']; ?>&stock=<?php echo $bu['qty']; ?>&roll=<?php echo $_GET['roll']; ?>&sell"><button class="btn btn-primary" ><i class="icon-gbp"></i> Sell to Client</button></a></td>
                                           
                        
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
                  
        




        </div>
        </div>
        <div class="col-sm-5">
          <div class="well">
          <a href=javascript:popcontact('rec.php?roll=<?php echo $_GET['roll']; ?>&area=0') style="color:#fff; text-decoration:blink text-align:center; font-weight:bold;">
        
     <div class="col-sm-4" style="padding:10PX 1PX; background:#006; text-align:center; font-weight:bold; border:1PX solid#fff">
        
    Print Receipt
        </div></A>
                <a href="?validate&roll=<?php echo $_GET['roll']; ?>&name=<?php echo $_GET['link']; ?>" style="color:#fff; text-decoration:blink text-align:center; font-weight:bold;">   
        <div class="col-sm-4" style="padding:10PX 0PX; background:#300;border:1PX solid#fff ;text-align:center; font-weight:bold;">   
        
        
    Validate
        </div></A>
        
        
        
        
        
         
        <a href=javascript:popcontact('add_oservices.php?roll=<?php echo $_GET['roll']; ?>&name=<?php echo $table; ?>') style="color:#fff; text-decoration:blink text-align:center; font-weight:bold;">   
        <div class="col-sm-4" style="padding:10PX 0PX; background:#300;border:1PX solid#fff ;text-align:center; font-weight:bold;">   
        
    Add Other Services
        </div></A>
        
        
        
         <?php
	   include '../includes/bills.php';
	   
	   ?>
            </div>
          </div>
          
          
          