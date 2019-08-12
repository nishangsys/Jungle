<div class="chat_box">
    <?php
	echo $tabs=$_GET['roll'];
	include '../dbc.php';


	$ol=mysql_query("SELECT product,category,SUM(qty),price,SUM(total),id from basket where tab='".$tabs."' and status='1' and area='6' group by product  ") or die(mysql_error());
	$num=1;
	
	 
	?>
    
    	<div class="chat_data">
        <table style="line-height:1">
    
      
				<tr style="background:#1188aa; padding:10px 0px; color:#fff"><td>S/N</td><td>Item</td><td>Price</td><td>Qty</td><td>TC</td><td>Delete</td></tr>
				
        <?php   while ($getres=mysql_fetch_assoc($ol)){ ?>
        <tr>
        	<td style="width:20px"><input type="text" style="width:20px" value="<?php echo $num++; ?>" /></td>
            <td><input type="text" name="product" style="width:90px" value="<?php echo $getres['product']; ?>" /></td>
                  
            <td><input type="text" name="product" style="width:60px" value="<?php echo $getres['price']; ?> " /></td>
             <td><input type="text" name="product" style="width:20px" value="<?php echo $getres['SUM(qty)']; ?> "  /></td>              
            <td><input type="text" name="product" style="width:60px" value="<?php echo $getres['SUM(total)']; ?> " /></td>
          <td><a href="delfood.php?hist_id=<?php echo $getres['id']; ?> " onClick="return confirm('Are you Sure you want to Delete  <?php echo $getres['product']; ?>?');" >
        <i class="fa fa-trash-o"></i></a></td>|
        
             
        </tr>
          <?php  }
	
		?>
        </table>
        </div>
             <table>
        <td>Grand Total</td>
            <td></td>
            <td></td>
            <td></td>
            <td style="background:#f00; color:#fff; text-decoration:blink">
            <?php
			
			
$result=mysql_query("SELECT SUM(total) as total,tab from basket where tab='".$num."' and status='1'   ");
while ($row=mysql_fetch_assoc($result)){ 
echo number_format($row['total']) ."&nbsp;&nbsp;Frs";
$is= $row['ids'];

?>
            
            </td>
            
        </tr>
         <TR>
          <td> &nbsp; &nbsp; 
 <a href=javascript:popcontact('validate.php?roll=<?php echo $row['tab'] ?>') style="color:#f00; text-decoration:blink">CheckOut </a> | 
 <a href="rec.php?roll=<?php echo $row['tab']; ?>" target="_blank">Print Receipt</a> |  </td>  
  
      
        </td>
         </TR>
          
          
          
        
         </table>
         </a>
         </form>
         <?php } ?>
       