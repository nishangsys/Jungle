
        <?php 
	//	include '../../includes/dbc.php';
	
//////////////////////////////////////////////////////////////////////////////////////////////////////
$table=$_GET['tabs'];
 $db_basket=$ybasket;
$name=$_GET['good'];
$dept=$_GET['dept'];
$date=date('d-m-Y');
		 $m=date('m');
		 $y=date('Y');
		 $t=date('G:i:s');
	
@session_start();
 $query =$con->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
 $user=$userRow['full_name'];
 $level=$userRow['banned'];
 

 
 }
	
    
	 if(isset($_GET['adds'])){
		  $adds=$_GET['adds'];
		 $qty=$_GET['qty']+1;
		 $price=$_GET['price'];
		 $newtot=$price*$adds;
		 
		 
		
	//////////////////update basket	 	
	 $un1=$con->query ("UPDATE 	basket set qty='$qty'  where id='$adds' ") ;
	//////////////////update basket	
	$d1=$con->query("DELETE FROM 	basket WHERE qty<1") or die(mysqli_error($con)); 
	$d1m=$con->query("INSERT INTO reports set name='$user',item='item deleted',date='$date',month='$m',year='$y',time='$t',tab='".$_GET['tab']."',olds='".$_GET['qty']."',news='$qty'	,prod='".$_GET['pro']."' ") or die(mysqli_error($con)); 
	  echo '<meta http-equiv="Refresh" content="0; url=change_sales.php?tabs='.$_GET['tab'].'">';
	
	}
	
	
	
	//reduce qty
	
	
	
	
	 
	?>
      
    
      
        
 
    
      
       
  <div class="col-sm-12">
          <div class="well">
         
	   
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                
        </h3>
        <?php $d=$con->query("SELECT * FROM basket where froms='".$_GET['roll']."' and qty>0  ") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                            <th>#</th>
                                             <th>Item</th>
        <th>Qty</th> 
        <th>Price</th> 
        <th>Total</th> 
     
         
         <th>Change Drinks</th> 
        
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
       
           <td><?php  echo $i++; ?></td>
                                            <td><?php  echo $bu['product']; ?></td>
                                            <td><?php  echo $bu['qty']; ?></td>
                                               <td><?php  echo $bu['price']; ?></td>
                                  <td><?php  echo $bu['price']*$bu['qty']; ?></td>
                          <td>
                          <a href="?view&roll=<?php echo $_GET['roll']; ?>&change=<?php echo $bu['id']; ?>&qty=<?php echo $bu['qty']; ?>&area=<?php echo $_GET['area']; ?>&product=<?php echo $bu['product'];  ?>&id=<?php  echo $bu['id']; ?>" style="color:#000">
 <button type="button" class="btn btn-warning" >  SWAP ALL</button></a>         
 |
   <a href="?view&roll=<?php echo $_GET['roll']; ?>&swap=<?php echo $bu['id']; ?>&qty=<?php echo $bu['qty']; ?>&area=<?php echo $_GET['area']; ?>&product=<?php echo $bu['product'];  ?>&id=<?php  echo $bu['id']; ?>&price=<?php echo $bu['price']; ?>" style="color:#000">
 <button type="button" class="btn btn-success" >  SWAP SOME</button></a>             
                        
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
                                
 <!--------TOTAL---->   
   <div class="col-sm-12" style="background:#003; padding:0px 0px; text-align:CENTER; border:1px solid#fff">
   
   
     <span style="background:#090; padding:15px 20px; float:right; font-size:18px; color:#fff; font-weight:bold ">  
      <?PHP
      	$a = $con->query("SELECT SUM(price*qty) as totbill FROM basket where froms='".$_GET['roll']."'") or die(mysqli_error($con));
			
		while($bu = $a->fetch_assoc()) {
			echo number_format($tot=$bu['totbill']);
		}
			?> XAF</span> 
       </div>
       <?php
	   if(isset($_GET['change'])){
	   ?>
       <iframe src="dp/index.php?area=<?php echo $_GET['area'];?>&product=<?php echo $_GET['product']; ?>&qty=<?php echo $_GET['qty']; ?>&id=<?php echo $_GET['change']; ?>&tabs=<?php echo $_GET['tabs']; ?>&area=<?php echo $_GET['area']; ?>" style="width:100%; height:600px; border:none"></iframe>
       <?php } ?>
	   
       
       
        <?php
	   if(isset($_GET['swap'])){
	   ?>
       <iframe src="dp/index12.php?area=<?php echo $_GET['area'];?>&product=<?php echo $_GET['product']; ?>&qty=<?php echo $_GET['qty']; ?>&id=<?php echo $_GET['change']; ?>&tabs=<?php echo $_GET['tabs']; ?>&area=<?php echo $_GET['area']; ?>&roll=<?php echo $_GET['roll']; ?>&id=<?php echo $_GET['id']; ?>&price=<?php  echo $_GET['price']; ?>" style="width:100%; height:600px; border:none"></iframe>
       <?php } ?>