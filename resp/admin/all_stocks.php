        <link href="../style.css" rel="stylesheet" type="text/css" />

<?php
//include  '../dbc.php';
require_once '../functions/functions.php';
@session_start();

if(!isset($_SESSION['user_name'])){
echo "<script>window.open('login.php','_self')</script>";
}
else {
	@session_start();
	
	if(($_SESSION['banned'])!='20'){
		echo "<script>alert('Sorry.Cannot View Page')</script>";
		
		
			
	}
	else {
		echo $stock=$_GET['bstock'];
    ?>


      <?php 
	  $stock="select * from products where serial='$stock' order by product ";
	   $run=mysql_query($stock) or die ('could not updated:'.mysql_error());
	   $num=1;
	  ?>
      
      <div class="right">
      
   <h1>
    <span style="text-align:center; font-size:24px; margin-left:30px"><?php echo $stock=$_GET['bstock']; ?> Stock</h1>
    
    	<table style="width:100%; margin:auto; height:auto; overflow:hidden">
        <tr style="background:#999; font-weight:bold">
        <td style="color:#fff">S/N</td>
        <TD style="color:#fff">Products</TD>
        <td>Category</td>
        <td style="color:#fff">Unit Price</td>
          <td style="color:#fff">Available Stocks</td>
          
        </tr>
        <?php
			while($row=mysql_fetch_assoc($run)){
		?>
        <tr>
        
         <?php if($num%2==0)//if $num/2 is even
					 {
						 echo '<tr bgcolor="#ccc">';
					 }
					 else
					 {
						 echo '<tr bgcolor="#eee">';
					 }
          ?>
        <td><?php echo $num++; ?></td>
        <TD><?php echo $row['product']; ?></TD>
        <TD><?php echo $row['category']; ?></TD>
        <td><?php echo $row['price']; ?></td>
        <td style="height:30px"><?php if($row['quatity']<10){
			$qty=$row['quatity'];
			echo "<span class='error'>".$qty."</span>";
		}
		else {		
		echo $row['quatity'];
		}?></td>
       
        </tr>
        
        
        
        <?php } ?>
        
        
        
       
        </table>
        
     

<?php } }?>
</div></div></table>
