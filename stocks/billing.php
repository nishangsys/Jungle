
<script language="JavaScript" src="../js/pop-up.js"></script>





    <?php
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
$con = mysqli_connect('localhost','nishang','google1234','pos');

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }


//////////////////////////////////////////////////////////////////////////////////////////////////////
$table=$_GET['tabs'];
 $db_basket=$ybasket;
$name=$_GET['good'];
$dept=$_GET['dept'];
	
	 
	?>
      
    
      
       <a href=javascript:popcontact('edit/index.php?roll=1&name=customer') style="color:#fff; text-decoration:blink text-align:center; font-weight:bold;">   
         
        <div class="col-sm-6" style="padding:10PX 0PX; background:#063;border:1PX solid#fff ;text-align:center; font-weight:bold; font-size:14px">   
        
        
   Gross sales
        </div></A>
        
        
        
        
        
         
        <a href=javascript:popcontact('validate.php?roll=1&name=customer') style="color:#fff; text-decoration:blink text-align:center; font-weight:bold;">   
        <div class="col-sm-6" style="padding:10PX 0PX; background:#300;border:1PX solid#fff ;text-align:center; font-weight:bold;">   
   Validate
        </div></A>
        
              
  
 <!--------TOTAL---->   
   <div class="col-sm-12" style="background:#003; padding:0px 0px; text-align:CENTER; border:1px solid#fff">   <span style="background:#090; padding:15px 45px; float:left; font-size:18px; color:#fff; font-weight:bold ">  TOTAL BILL</span>
   
   
     <span style="background:#FF3; padding:15px 20px; float:right; font-size:18px; color:#000; font-weight:bold ">  
      <?PHP
      	$a = $con->query("SELECT SUM(price*qty) as totbill FROM basket where tab='".$_GET['tabs']."' and status='0' GROUP BY tab") or die(mysqli_error($con));
			
		while($rows = $a->fetch_assoc()) {
			echo number_format($tot=$rows['totbill']);
		}
			?> XAF</span> 
       </div>
       
       <!-----TOTAL--------->
      
        
 
    	<div class="chat_data">
        
       
        
       
        </div>
        
        
        
            <?PHP
			$a = $con->query("SELECT SUM(qty),SUM(total),price,product,category,ids,id,price,qty,total,agent FROM basket where tab='".$_GET['tabs']."' and status='0' and qty>0 GROUP BY category,product order by product ") or die(mysqli_error($con));
			$i=1;
			?>
            
            
           
     
   
       <div class="col-sm-12" style="background:#000; padding:0px 0px; text-align:CENTER; border:1px solid#fff">
      <ul class="list-group">
       <?php
		while($rows = $a->fetch_assoc()) {
			?>
     
  <li class="list-group-item" style="background:#000; overflow:hidden;"><span style="float:left; overflow:hidden; color:#FF0; font-weight:bold" >
  <a href="add_oservices.php?roll=1&name=custome&adds=<?php echo $rows['id']; ?>&area=<?php echo $a_area; ?>&tabs=<?php echo $table; ?>&qty=<?php echo $rows['qty']; ?>">

  <button type="submit" class="btn btn-default" style="float:left; color:#000; font-size:13px; font-weight:bold " >
  <?php echo $rows['product']; ?><span style="color:#F00; font-weight:bold; font-style:italic" > (<?php 
 echo $rows['price'];
  
  ?> )</span></button></a>
  
<a href="add_oservices.php?roll=1&name=custome&reduce=<?php echo $rows['id']; ?>&area=<?php echo $a_area; ?>&tabs=<?php echo $table; ?>&qty=<?php echo $rows['qty']; ?>">
 <button type="button" class="btn btn-warning" style="float:right; color:#000; font-size:13px; margin-left:5px "><?php echo $rows['SUM(qty)']; ?></button></a><br /></li>
 
<?php } ?>  
     
            
 </ul>     
      

  </div> 
    </div>
  <?php
  ?>

       