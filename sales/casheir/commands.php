
 <?php

	$cate=$_GET['commands'];
	if(empty($cate)){
		 echo $message= "<div class='alert alert-danger' style='color:#fff; background:#f00;font-weight:bold'>ERROR. CHOSE A TABLE TO SEE COMMAND</div>";
	}
	else {
		  $a = mysql_query("SELECT SUM(qty),SUM(total),price,product,category,ids,id,price,qty,total FROM ".$db_basket." where tab='".$cate."' and status='3' and qty>0 GROUP BY id order by product ") or die(mysql_error());
			$i=1;
			 echo $message= "<div class='alert alert-danger' style='color:#fff; background:#6E0000;font-weight:bold; padding:5px 0px'>TABLE $cate COMMAND</div>";
?>

  
         <table class="table table-bordered" style="line-height:1; margin-top:-10px">
    <thead>
     
      <tr>
      <th>S/N</th>
        <th>Product</th>
        <th>Price</th>
        <th>Quatity</th>
        <th>Total</th>
        <th>Substr</th>
      </tr>
    </thead>
   
   <?php   while ($fg=mysql_fetch_assoc($a)){ ?>
    <tbody style="line-height:1">
    <tr>
       <td><?php echo $i++; ?></td>
    
    <td> <a href="?delete=<?php echo $fg['product'];?>&id=<?php echo $fg['id']; ?>&tab=<?php echo $table; ?>&qty=<?php echo $fg['qty']; ?>&from=<?php echo $fg['froms']; ?>&db_basket=<?php echo $ybasket; ?>&dbtables=<?php echo $ytable; ?>&area=<?php echo $a_area; ?>&section=<?php echo $section; ?>" style="text-decoration:none; color:#000; padding:3px 6px"><?php echo $thatpro=$fg['product']; ?></a></td>
    
    <td><?php echo $fg['price']; ?></td>
    
     <td><?php echo $fg['qty']; ?></td>
     <td><?php echo $fg['SUM(total)']; ?></td>
     <td><a href="?what=drink&delete=<?php echo $fg['id']; ?>&area=<?php echo $_GET['area']; ?>&tabs=<?php echo $_GET['tabs']; ?>&commands=<?php echo $_GET['commands']; ?>&good=<?php echo $fg['product']; ?>&qty=<?php echo $fg['qty']; ?>&p=<?php echo $fg['price']; ?>&t=<?php echo $fg['total']; ?>"><img src="delete.png" style="width:20px; height:20px"  /></a></td>
    
    </tr>
   <?php } ?>
   
   
   
   
   
   
  <tr>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td style="background:#090; color:#fff"> <?PHP 
  			
$ren=mysql_query("SELECT SUM(total) as total,tab FROM ".$db_basket." where tab='".$cate."' and status='3' and qty>0 GROUP BY tab  ") or die(mysql_error());
while ($rol=mysql_fetch_assoc($ren)){ 
$tol=($rol['total']);
echo number_format($rol['total']) ."&nbsp;&nbsp;Frs";
}
	if(isset($_GET['delete'])){
		$id=$_GET['delete'];
		echo $id=$_GET['delete'];
		
		$area= $_GET['area']; 
		$tabs= $_GET['tabs']; 
		$product= $_GET['good']; 
		$commands= $_GET['commands'];
		$qty= $_GET['qty'];
		
		$p= $_GET['p']; 
		$to= $_GET['t'];

		
		$qtt=$qty-1;
		$newt=($to-$p);
					
	$dlom=$con->query("UPDATE ".$db_basket." SET qty='$qtt',total='$newt' where id='$id' ")  or die(mysqli_error($con));

	
		
		$pk=$con->query("SELECT * FROM products where product='$product' and serial='Bar' ") or die(mysqli_error($con));
		while($ac=$pk->fetch_assoc()){
		 $theqty=$ac['quatity']+1;
		}
		
	

	$d2=$con->query("UPDATE products SET quatity='$theqty' where product='$product' and serial='Bar' ")  or die(mysqli_error($con));
			
		
		echo '<meta http-equiv="Refresh" content="0; url=index.php?what=drink&area='.$area.'&tabs='.$tabs.'&commands='.$commands.'">';
	}
	?></td>


  </tr>
    		
       
    </tbody>
  </table>
<?php } ?>