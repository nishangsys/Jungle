<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/mystyle.css">
	<link rel="stylesheet" type="text/css" href="../css/another.css">
   
    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="../assets/css/main.css" />
    <link rel="stylesheet" href="../assets/css/theme.css" />
    <link rel="stylesheet" href="../assets/css/MoneAdmin.css" />
    <link rel="stylesheet" href="../assets/plugins/Font-Awesome/css/font-awesome.css" />
        <?php 
		include '../../includes/dbc.php';
	
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
 $user=$userRow['user_name'];
 $level=$userRow['banned']; 
 }
	
  
   $query =$con->query("SELECT * FROM basket WHERE id='$table' ") or die(mysqli_error($con));
 while($userRow=$query->fetch_array()){ 
 $table_num=$userRow['tab'];
 $command_name=$userRow['ids'];

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
	
	if(isset($_GET['reduce'])){
		 $idd=$_GET['reduce'];
	
		 $qty=$_GET['qty']-1;
		 $price=$_GET['price'];
		 $newtot=$price*$adds;
		  $date=date('d-m-Y');
		 $m=date('m');
		 $y=date('Y');
		 $t=date('G:i:s');
		 
		  $query =$con->query("SELECT * FROM basket WHERE id='".$idd."' ") or die(mysqli_error($con));
 while($userRow=$query->fetch_array()){ 
 $product_concern=$userRow['product'];
 $area_concern=$userRow['area'];
 $qty_concern=$userRow['qty'];
 } 
  $query =$con->query("SELECT * FROM finals WHERE name='".$product_concern."' and area='".$area_concern."' ") or die(mysqli_error($con));
 while($userRow=$query->fetch_array()){ 
 $product_id=$userRow['id']; 
 $qty_inshelf=$userRow['qty'];
 $new_inshelf_afteraction=$qty_inshelf+1;
 }   
 
	//////////////////update basket	
	$d1=$con->query("DELETE FROM 	basket WHERE qty<1") or die(mysqli_error($con)); 	
	$un1=$con->query("UPDATE 	basket set qty='$qty' ,total='$newtot' where id='$idd' limit 1") or die(mysqli_error($con));
	
		$un134=$con->query("UPDATE 	finals set qty='".$new_inshelf_afteraction."'   where id='".$product_id."' ") or die(mysqli_error($con));
		
		
	$d1m=$con->query("INSERT INTO reports set name='$user',item='item Subtracted',date='$date',month='$m',year='$y',time='$t',tab='".$_GET['tab']."',olds='".$_GET['qty']."',news='$qty'	,prod='".$_GET['pro']."' ") or die(mysqli_error($con)); 
	
	  echo '<meta http-equiv="Refresh" content="0; url=change_sales.php?tabs='.$_GET['tabs'].'&area='.$_GET['area'].' ">';
	
	
	}
	
	
	
	if(isset($_GET['delete'])){
		 $idd=$_GET['delete'];
		 
		 	  $query =$con->query("SELECT * FROM basket WHERE id='".$idd."' ") or die(mysqli_error($con));
 while($userRow=$query->fetch_array()){ 
 $product_concern=$userRow['product'];
 $area_concern=$userRow['area'];
 $qty_concern=$userRow['qty'];
 } 
  $query =$con->query("SELECT * FROM finals WHERE name='".$product_concern."' and area='".$area_concern."' ") or die(mysqli_error($con));
 while($userRow=$query->fetch_array()){ 
 $product_id=$userRow['id']; 
 $qty_inshelf=$userRow['qty'];
 $new_inshelf_afteraction=$qty_inshelf+$qty_concern;
 }   
 
	//////////////////update basket	
	$d1=$con->query("DELETE FROM 	basket WHERE   id='$idd' limit 1") or die(mysqli_error($con));
	
	$un134=$con->query("UPDATE 	finals set qty='".$new_inshelf_afteraction."'   where id='".$product_id."' ") or die(mysqli_error($con));
		 	
	$d1m=$con->query("INSERT INTO reports set name='$user',item='item deleted',date='$date',month='$m',year='$y',time='$t',tab='".$_GET['tab']."',olds='".$_GET['qty']."',news='$qty'	,prod='".$_GET['pro']."' ") or die(mysqli_error($con)); 
	  echo '<meta http-equiv="Refresh" content="0; url=change_sales.php?tabs='.$_GET['tab'].'">';
	 
	  echo '<meta http-equiv="Refresh" content="0; url=change_sales.php?tabs='.$_GET['tabs'].'&area='.$_GET['area'].' ">';
	
	
	}
	
	
	 
	?>
      
    
      
        
 
    
      
       
  <div class="col-sm-12">
          <div class="well">
         
	   
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                
        </h3>
        <?php $d=$con->query("SELECT SUM(qty),SUM(total),price,product,category,ids,id,price,qty,total,agent,tab FROM basket where tab='".$table_num."' and ids='".$command_name."' and status='5' and qty>0 GROUP BY id  order by id ") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                            <th>#</th>
                                             <th>Item</th>
        <th>Qty</th> 
        <th>Price</th> 
        <th>Total</th> 
       
         <th>Action</th> 
         
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
                                        <!--    
 <a href="?tab=<?php echo $bu['tab']; ?>&adds=<?php echo $bu['id']; ?>&qty=<?php echo $bu['qty']; ?>">
 <button type="button" class="btn btn-success" style="color:#000; font-size:13px; margin-left:5px "> <i class="icon-plus "></i>  ADD<button></a>-->
 
 
 <a href="?tab=<?php echo $bu['tab']; ?>&reduce=<?php echo $bu['id']; ?>&qty=<?php echo $bu['qty']; ?>&pro=<?php echo $bu['product']; ?>&tabs=<?php echo $_GET['tabs']; ?>&area=<?php echo $_GET['area']; ?>">
 <button type="button" class="btn btn-info" onclick="return confirm('Are you sure you wish to reduce <?php echo $bu['product']; ?> Quantity by 1')" style="color:#000; font-size:13px; margin-left:5px " >   REDUCE<button></a>
 
 
 
 
 
 <a href="?tab=<?php echo $bu['tab']; ?>&delete=<?php echo $bu['id']; ?>&qty=<?php echo $bu['qty']; ?>&pro=<?php echo $bu['product']; ?>&tabs=<?php echo $_GET['tabs']; ?>&area=<?php echo $_GET['area']; ?>">
 <button type="button" class="btn btn-danger" onclick="return confirm('Are you sure you wish to delete <?php echo $bu['product']; ?> ')" style=" color:#000; font-size:13px; margin-left:5px ">   DELETE<button></a></td>
                          <td>
                          <a href="?tabs=<?php echo $_GET['tabs']; ?>&change=<?php echo $bu['id']; ?>&qty=<?php echo $bu['qty']; ?>&area=<?php echo $_GET['area']; ?>&product=<?php echo $bu['product'];  ?>&tabs=<?php echo $_GET['tabs']; ?>&area=<?php echo $_GET['area']; ?>" style="color:#000">
 <button type="button" class="btn btn-warning" >  CHANGE<button></a></button>                 
                        
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
      	$a = $con->query("SELECT SUM(price*qty) as totbill FROM basket where tab='".$table_num."' and ids='".$command_name."' and status='5' GROUP BY tab") or die(mysqli_error($con));
			
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