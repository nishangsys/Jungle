        <link href="../style.css" rel="stylesheet" type="text/css" />



      <?php 
	  $stock="select * from products order by product ";
	   $run=mysql_query($stock) or die ('could not updated:'.mysql_error());
	   $num=1;
	  ?>
      
      <div class="right">
      
   <h1>
    <span style="text-align:center; font-size:24px; margin-left:30px">Drinks In Stock</h1>
    
    	<table style="width:100%; margin:auto; height:auto; overflow:hidden">
        <tr style="background:#999; font-weight:bold">
        <td style="color:#fff">S/N</td>
        <TD style="color:#fff">Products</TD>
        <td>Category</td>
        <td style="color:#fff">Unit Price</td>
          <td style="color:#fff">Available Stocks</td>
          <td style="color:#fff">Date Bought</td>
          
          <td style="color:#fff">Total Cost</td></tr>
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
         <td><?php echo $row['date']; ?></td>
         <td><?php if($row['total']<0){
			 echo "<span style='color:#ff0; background:#f00; width:100px; padding:15px 30px'>".$row['total']."</span>";
		 }
		 else{
		 echo $row['total']; 
		 }?></td>
        </tr>
        
        
        
        <?php } ?>
        
        
        
       
        </table>
        
        <div style="width:920px;  float:left; border:1px dashed#000;height:auto; padding:10px 0px; font-size:16px; color:#fff; background:#088389;">Total Expenditure on Drinks sofar in this month  <span style="color:#ff0"><?php echo date('F Y'); ?></span>
       
        </div>
        
          <div style="width:220px; color:#fff; text-align:center; font-size:16px; height:auto; padding:10px 0px;border:1px dashed#000; float:left; background:#000;"><?php 
		  $month=date('m');
		  $tota= "select SUM(total) from expense where  month='$month' and area='3'"; 
	 
$resu = mysql_query($tota) or die(mysql_error());

// Print out result
while($rows = mysql_fetch_array($resu)){
 echo  number_format($rows['SUM(total)']).'&nbsp;FCFA';
}
  ?></div>
          
          
        <div style="width:920px;  float:left; border:1px dashed#000;height:auto; padding:10px 0px; font-size:16px; color:#fff; background:#088389;">Total Expenditure on Drinks sofar in this financial Year <span style="color:#ff0"><?php echo date('Y'); ?></span>
       
        </div>
        
          <div style="width:220px; color:#fff; text-align:center; font-size:16px; height:auto; padding:10px 0px;border:1px dashed#000; float:left; background:#000; border-top:1px dashed#fff"><?php  $year=date('Y');
		  $tota= "select SUM(total) from expense where  year='$year' and area='3'"; 
	 
$resu = mysql_query($tota) or die(mysql_error());

// Print out result
while($rows = mysql_fetch_array($resu)){
 echo number_format( $rows['SUM(total)']).'&nbsp;FCFA';
}  ?></div>
<div class="clear"></div>
        <table style="width:100%">
       
        
         <div class="msessage_box">Total available stock is :
        <?php 
		//
		$sql = "select sum(quatity) from products";
$q = mysql_query($sql);
$row = mysql_fetch_array($q);

echo  $row[0]."<br>";

			echo convert_number_to_words($row['0'])."-Units";
			//convert $row[0];
			 ?>
             
         
         
         
     

</div></div></table>
