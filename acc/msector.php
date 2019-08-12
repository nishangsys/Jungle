        <link href="../style.css" rel="stylesheet" type="text/css" />

<?php
//include  '../dbc.php';
require_once '../functions/functions.php';
@session_start();

if(!isset($_SESSION['user_name'])){
echo "<script>window.open('login.php','_self')</script>";
}
else {
	
    ?>



      <?php 
	  $month=date('m');
	  $month1="0".date('m');
	  $YEAR=date('Y');
	  $one="select SUM(rec) as income from daily WHERE month='$month' or month='$month1' and year='$YEAR' ";
	   $run=mysql_query($one) or die ('could not updated:'.mysql_error());
	   while($r=mysql_fetch_assoc($run)){
		   $income=$r['income'];
	   }
	   $one="select SUM(exp) as expense from daily WHERE month='$month' or month='$month1' and year='$YEAR' ";
	   $run=mysql_query($one) or die ('could not updated:'.mysql_error());
	   while($r=mysql_fetch_assoc($run)){
		   $expense=$r['expense'];
	   }
	   $one="select SUM(amt) as profit from daily WHERE month='$month' or month='$month1' and year='$YEAR' ";
	   $run=mysql_query($one) or die ('could not updated:'.mysql_error());
	   while($r=mysql_fetch_assoc($run)){
		   $profit=$r['profit'];
	   }
	   $total=$income+$expense+$profit;
	  ?>
      
 <div class="right">
    
   <h1>
MONTHLY SECTORIAL FINANCIAL RECORDS FOR <?php echo date('F'); ?><br /></h1>
    
    	<table style="width:100%; line-height:3; margin:auto; height:auto; overflow:hidden">
        <tr style="background:#999; font-weight:bold">
        <td style="color:#fff">S/N</td>
        <TD style="color:#fff">Description</TD>
                <TD style="color:#fff">Amount </TD>
        <td style="color:#fff">Percentage</td>
       
         </tr>
         
         
         <tr>
        <td >1</td>
        <TD >Income</TD>
                <TD ><?php  echo $income; ?></TD>

        <td ><?php $inc= number_format((float)(($income/$total)*100),2,'.','');
		if(($inc)>50){
			echo "<span style='color:#f00'>$inc</span>
			";
		}
		else {
			echo $inc;
		}
		
		 ?> %</td>
        </tr>
        
        <tr style="background:#F0F8FF">
        
          <td >2</td>
        <TD >Expenditure</TD>
                <TD ><?php  echo $expense; ?></TD>

        <td ><?php  
		$exp=number_format((float)(($expense/$total)*100),2,'.','');
		if(($exp)>50){
			echo "<span style='color:#f00'>$exp</span>
			";
		}
		else {
			echo $exp;
		}
		 ?> %</td>
        </tr>
        
        
          <td >3</td>
        <TD >Profit</TD>
               <TD ><?php  echo $profit; ?></TD>

        <td ><?php  echo number_format((float)(($profit/$total)*100),2,'.',''); ?> %</td>
        </tr>
        
        <tr>
        
       
        </table>
        
             
         
         
        
        
 
      <?php }  ?>