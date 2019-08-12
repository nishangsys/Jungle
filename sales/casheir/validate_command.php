
        <?php 
	@session_start();
 $query =$con->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
 $user_active=$userRow['user_name'];
 $level=$userRow['banned']; 
 }
 /****Get the name of debtor*****/
 	
			$a = $con->query("SELECT staffname as totbill FROM daily where idds='".$_GET['roll']."'") or die(mysqli_error($con));
			
		while($bu = $a->fetch_assoc()) {
			$ur_name=$bu['totbill'];
			$paidsofar=$bu['rec'];
		}
	
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
        <?php 
		
		$a = $con->query("SELECT * from daily  where idds='".$_GET['roll']."'") or die(mysqli_error($con));
			
		while($bu = $a->fetch_assoc()) {
			 $tot_day=$bu['rec'];
		}
		
		$d=$con->query("SELECT * FROM basket where froms='".$_GET['roll']."'  ") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                            <th>#</th>
                                             <th>Item</th>
        <th>Qty</th> 
        <th>Price</th> 
        <th>Total</th> 
     
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
                         
                        
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                </table>
                                
                                  <form action="<?php $_SERVER['PHP_SELF']; ?>" method="post">
                                  <table>
                         
                         <tr> 
            <td>Total bill</td><td><input type="text" name="totalbill" readonly class="input" onBlur="doCalc(this.form)"  value="<?PHP
			
			$a = $con->query("SELECT rec as totbill FROM daily where idds='".$_GET['roll']."'") or die(mysqli_error($con));
			
		while($bu = $a->fetch_assoc()) {
			$initail_bill=$bu['totbill'];
		}
      	$a = $con->query("SELECT SUM(price*qty) as totbill FROM basket where froms='".$_GET['roll']."'") or die(mysqli_error($con));
			
		while($bu = $a->fetch_assoc()) {
			 $new_bill=$bu['totbill'];
		}
		echo $tobe_paid=$new_bill-$initail_bill;
			?>"
                    >
                  </td></tr>
                  
                        <tr> 
            <td>Discount</td><td><input type="text" name="disc"  class="input" onBlur="doCalc(this.form)" 
                  value="0"  >
                  </td></tr>
                  
                  
                  <tr> 
            <td>Amount Paid</td><td><input type="text" name="paid"  class="input" onBlur="doCalc(this.form)" 
                  required="required" autocomplete="off"  value="" >
                  </td></tr>
                  
                  <tr> 
            <td>Change</td><td><input type="text" name="owed" readonly class="input" 
                  required="required" style="background:#F00; color:#fff"  >
                  </td></tr>
          
            <tr>
                <td colspan="5" align="center">
                <input type="hidden" name="total_b" value="<?php echo $new_bill; ?>" />
                <input type="hidden" name="ini_b" value="<?php echo $initail_bill; ?>" /> 
                <input type="submit" name="ok" value="Validate Sales" style="background:#033; color:#fff; padding:10px 10px"/></td>
            </tr>
            </table>
            </form>
            
            
            <?php
			if(isset($_POST['ok'])){
				$paid=$_POST['paid'];
				$tot_bill=$_POST['totalbill'];
				$ur_totbill=$_POST['total_b'];
				$ini_b=$_POST['ini_b'];
				$n_tot=$ini_b+$paid;
				
				$change=$tot_bill-$paid;
				 if($change>0){
					$owed=$change;
					$ch=0;
					$paids=$paidsofar+$paid;
				}
				else{
					$owed=0;
					$ch=$change;
					$paids=$ur_totbill;
				}
				$ffg=abs($tot_bill);
				
				if($tot_bill<0){
					echo "<script>alert('Client must Consume Upto $ini_b today but he/she is consuming  $ffg Frs Less  Now')</script>";
				}
				else if(empty($ur_name)&$owed>0){
					echo "<script>alert('Sorry this client is not allowed to owe us')</script>";
				}
				
				else {
		$df=$con->query("UPDATE daily set rec='$paids',price='$paids',total='$ur_totbill',paidtou='$ch',owed='$owed', paidto='$user_active' where idds='".$_GET['roll']."'") or die(mysqli_error($con)) ;
	
	$df=$con->query("UPDATE basket set status='2',printed='2',agent='$user_active' where froms='".$_GET['roll']."'") or die(mysqli_error($con)) ;;
	
	echo "<script>alert('Action Successfull')</script>";
	

echo '<meta http-equiv="Refresh" content="0; url=close.php">';
				}
				
			}
			?>
      