

<?php
require_once '../functions/functions.php';
session_start();

if(!isset($_SESSION['user_name'])){
echo '<meta http-equiv="Refresh" content="2; url=login.php">';

}

else {
	@session_start();
	
	if(($_SESSION['banned'])!='15'){
		echo "<script>alert('Sorry. Page restriction by the administartor')</script>";
		echo "<script>window.open('index.php?names','_self')</script>";
		
			
	}
	else {
?>
<script src="js/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <script language="JavaScript" src="js/pop-up.js"></script>
   <style>
.com1{
	width:30px;

	background:url(../img/com.png);
	
	float:left;
	
}
.com{
	
	background:#f00;
	height:25px;
	padding:0px 5px;
	font-size:12px;
	border-radius:15px 15px 15px 15px;
	color:#fff;
	float:left;
	position:absolute;
	top:0px;
	margin-left:20px;	
}

</style>
 <div class="left" style="height:700px" >   
    
  <div id='cssmenu'>
<ul >

   
    <li ><a href='restaupage.php' target="_blank"><span><img src="../img/tra.png" />Available Tables</span></a>
  
 
   
   <li class='active has-sub'><a href='dashboard.php?return'><span><img src="../img/drink.png" />Bar Stocks Zone</span></a>
   <ul>
        

                        <li ><a href="dashboard.php?bstock"><span> Stocks of Drinks</span></a>
                        
                        

      </ul>
   </li>
   
   
    <li class='active has-sub'><a href='#'><span><img src="../img/de.png" /> Bar Reports </span></a>
   <ul>
         <li ><a href="dashboard.php?daily_bar"><span>Daily Reports</span></a>

            <li ><a href="dashboard.php?bar_bal"><span>Balancesheet</span></a>
            
         
      </ul>
   </li>
   
   
    <li class='active has-sub'><a href='#'><span><img src="../img/cal.png" /> Print barcode</span></a>
   <ul>
         <li ><a href="barproducts.php" target="_blank"><span>for products</span></a>

            <li ><a href="barfood.php" target="_blank"><span>for food</span></a>
            
         
      </ul>
   </li>
   
  
   
   <li ><a href='dashboard.php?bar_table'><span><img src="../img/tag.png" /> Add Tables</span></a>
  
   </li>
   
   
   
    
  
 
  
   
    <li class='active has-sub'><a href='dashboard.php?return'><span><img src="../img/apple.png" /> Restaurant Stocks </span></a>
   <ul>
         
            <li ><a href="dashboard.php?all_stock"><span>Food Stock</span></a>

       
      </ul>
   </li>
  
  
    
  <li class='active has-sub'><a href='#'><span><img src="../img/edit_button.png" /> Change Prices</span></a>
   <ul>
         <li ><a href="BAREDIT/list_user.php" target="_blank"><span>Change Prices</span></a>

       
      </ul>
   </li>
     <li class='active has-sub'><a href="#" ><span style="color:#F00"><img src="../img/coins1.png" />  Close the day</span></a>
      
      <ul>
            <li ><a href="<?PHP echo $_SERVER['_SELF']; ?>?close_today" ><span>Close Today</span></a>
                        <li ><a href="<?PHP echo $_SERVER['_SELF']; ?>?to_boss" ><span>aLL RECORDS</span></a>
                        <li ><a href="print_details.php" target="_blank" ><span>print records</span></a> 
      
      </ul></li>  
   
   
      <li class='active has-sub'><a href='#'><span><img src="../img/piechart.png" /> Product Stats </span></a>
   <ul>
         <li ><a href="dashboard.php?profit"><span>Product Profit</span></a>

            <li ><a href="dashboard.php?profit"><span> % Product Profit</span></a>
            
         
      </ul>
   </li>
   
   
     <li class='active has-sub'><a href='#'><span><img src="../img/cal.png" /> Sale History</span></a>
   <ul>
         <li ><a href="<?php $_SEVER['_SELF']; ?>?allfree" ><span>Free </span></a>

            <li ><a href="<?php $_SEVER['_SELF']; ?>?allcompany" ><span>Company</span></a>
            
             <li ><a href="<?php $_SEVER['_SELF']; ?>?free" ><span>Company</span></a>
            
            
         
      </ul>
   </li>
  
 <li class='active has-sub'><a href='#'><span><img src="../img/de.png" /> Stock Forms</span></a>
   <ul>
       
          <li ><a href="dashboard.php?bauca"><span>View Stock Form </span></a>
          
          
          <li ><a href="dashboard.php?printit"><span>Print a Copy </span></a>

           
            
                   
      </ul>
   </li>
   
  
  <li class='has-sub'>
    <a href="<?php $_SERVER['SELF']; ?>?chat"><span> <img src="../img/com.png" /><div class="com1"></div><div class="com">
       
       <?php
	  
$todaye=date('d-m-Y');
$link = mysql_connect(DB_HOST, DB_USER, DB_PASS) or die("Couldn't make connection.");
$db = mysql_select_db(DB_NAME, $link) or die("Couldn't select database");
	   $today=date('d-m-Y');
	   $cu=mysql_query("SELECT COUNT(message) as totcount from chat where name='".$_SESSION['user_name']."'and date2='$today' ")  or die(mysql_error());
	   while($tt=mysql_fetch_assoc($cu)){
		   echo $tt['totcount'];
	   }
	   
	   
	   ?>
       
       
       
       </div> Chat&nbsp;&nbsp; </span></a>
      
       
       
      </ul></li>
         
      
     
   
   
   
   
   
   
   
   
   
 

         
      
     
        
        
       <!---
                 <li  ><a href="spend.php" ><span> <img src="acc.png" /> Spend</span> </a></li>

          <li  ><a href="spend.php" ><span> <img src="acc.png" /> Spend</span> </a></li>
      
      --->
    
	  
	
      
     </li>
       
       
       
        </ul>
          
       
 
 <!--------
  <li  ><a href="dashboard.php?unsub" ><span> Unsubscribe</span> <i class="fa fa-user-times  fa-2x"></i> </a></li>
  
   <li  ><a href="dashboard.php?resub" ><span> Resubscribe</span> <i class="fa fa-user-plus  fa-2x"></i> </a></li>
   
   ------------->
  
    
    
      
  
   

</div>
    </div>
    
    <?php } } ?>