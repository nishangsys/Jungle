
    <?php
	
		$sql="select * from products order by product";
		$rres=mysql_query($sql);
		 $num=1;
		 
	
	?>
   
    
    	<table style="width:90%; margin:auto;">
      <tr style="background:#1188aa; padding:10px 0px">
        <td style="color:#fff">S/N</td>
        <TD style="color:#fff"> Product</TD>
         <TD style="color:#fff"> Category</TD>
        <td style="color:#fff">Current Price</td>
        <td style="color:#fff">News Price</td>
        </tr>
        <?php
			while($row=mysql_fetch_assoc($rres)){
		?>
        <tr>
        <?php if($num%2==0)//if $num/2 is even
					 {
						 echo '<tr bgcolor="#eee">';
					 }
					 else
					 {
						 echo '<tr bgcolor="#fff">';
					 }
          ?>
        <td><?php echo $num++; ?></td>
        <TD><?php echo $row['product']; ?></TD>
        <TD><?php echo $row['category']; ?></TD>
        <TD><?php echo $row['price']; ?></TD>
        <td><a href="updateprice.php?product=<?php echo $row['product']; ?>"> <i class="fa fa-pencil-square "></i> New Price</a></td>
        </tr>
        <?php } ?>
        </table>
        
    </div>
    
</div>
