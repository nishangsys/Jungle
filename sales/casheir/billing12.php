<script type="text/javascript">
function doCalc(form) {
		

  form.bal.value = ((parseInt(form.expamt.value)-parseInt(form.paid.value)));

}
</script>

<script language="JavaScript" src="../../js/pop-up.js"></script>
<script language="javascript" type="text/javascript">

<!-- 
//Browser Support Code
function ajaxFunction(){
   var ajaxRequest;  // The variable that makes Ajax possible!
   try{
   
      // Opera 8.0+, Firefox, Safari
      ajaxRequest = new XMLHttpRequest();
   }catch (e){
      
      // Internet Explorer Browsers
      try{
         ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
      }catch (e) {
         
         try{
            ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
         }catch (e){
         
            // Something went wrong
            alert("Your browser broke!");
            return false;
         }
      }
   }
   
   // Create a function that will receive data
   // sent from the server and will update
   // div section in the same page.
   ajaxRequest.onreadystatechange = function(){
   
      if(ajaxRequest.readyState == 4){
         var ajaxDisplay = document.getElementById('ajaxDiv');
         ajaxDisplay.innerHTML = ajaxRequest.responseText;
      }
   }
   
   // Now get the value from user and pass it to
   // server script.
   var age = document.getElementById('age').value;
   var wpm = document.getElementById('wpm').value;
   var sex = document.getElementById('sex').value;
   var queryString = "?age=" + age ;
   
   queryString +=  "&wpm=" + wpm + "&sex=" + sex;
   ajaxRequest.open("GET", "ajax-example.php" + queryString, true);
   ajaxRequest.send(null); 
}
//-->
</script>

<?php
 $link=$_SERVER['QUERY_STRING'];
 
echo $section=$_GET['area'];



?>
    

    <?php
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
$con = mysqli_connect('localhost','nishang','google1234','super_db');

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }


define ("DB_HOST", "localhost"); // set database host
define ("DB_USER", "nishang"); // set database user
define ("DB_PASS","google1234"); // set database password
define ("DB_NAME","2019_command"); // set database name

$link = mysql_connect(DB_HOST, DB_USER, DB_PASS) or die("Couldn't make connection.");
$db = mysql_select_db(DB_NAME, $link) or die("Couldn't select database");

//////////////////////////////////////////////////////////////////////////////////////////////////////

	
	 
	?>
      
       
     <div style="width:100%; height:auto; overflow:hidden; padding-bottom:20px; float:right; border:3px dashed#FF0; outline:1px dashed#000; background:url(../img/a.gif); "  >
    
      
             <div class="clear"></div>
        
        <?php
		$area= $_GET['area'];
 $query =$con->query("SELECT * FROM basket where   status='5' and area='$area' and qty>0 GROUP BY ids,tab order by id DESC" ) or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 $t_num=$userRow['tab'];
$c_num=$userRow['ids'];
$tid=$userRow['id'];



/* $qu =$con->query("SELECT * FROM bar_tables where id='$t_num'" ) or die(mysqli_error($con));
  while($u=$qu->fetch_array()){
  $tnum=$u['num'];
  }
  */
 
		?>
        
        
     

      

      </span>
     </h1>  
 
    	<div class="chat_data">
        
       
        
        
        
            <?PHP
			
			$a = $con->query("SELECT SUM(qty),SUM(total),price,product,category,id,price,qty,total,agent,comment,main_category,area FROM basket where tab='".$t_num."'  and ids='".$c_num."' and status='5' and qty>0 AND area='$area' GROUP BY main_category,product order by product ") or die(mysqli_error($con));
			$i=1;
			?>
            
            
           
     
     
     
   
       <div class="col-sm-3" style="background:#000; padding:0px 0px; text-align:CENTER; border:1px solid#fff">
       <ul class="list-group">
       
       <h3 style="color:#FF0; font-size:16px" >
  <strong><?php echo $t_num; ?> <?php echo $c_num; ?></strong>
  
  |  <a href=javascript:popcontact('change_sales.php?tabs=<?php echo $tid; ?>&area=<?php echo $area; ?>') style="color:#fff; text-decoration:blink text-align:center; font-size:14px; font-weight:bold;"> Update Qty
        </A> | 
        
         <a href=javascript:popcontact('validate.php?roll=<?php echo $tid; ?>&area=<?php echo $area; ?>') style="color:#fff; text-decoration:blink text-align:center; font-size:14px; font-weight:bold;"> CASH
        </A> |
         <a href=javascript:popcontact('debtors.php?roll=<?php echo $tid; ?>&area=<?php echo $area; ?>') style="color:#f00; text-decoration:blink text-align:center; font-size:14px; font-weight:bold;"> CREDIT
        </A> 
        |
         <a href=javascript:popcontact('rec2.php?roll=<?php echo $tid; ?>&area=<?php echo $area; ?>') style="color:#fff; text-decoration:blink text-align:center; color:#Ff0; font-family:'Arial Black', Gadget, sans-serif; font-size:14px; font-weight:bold;"> BILL
        </A> 
        |
         <a href=javascript:popcontact('bond.php?roll=<?php echo $tid; ?>&area=<?php echo $area; ?>') style="color:#fff; text-decoration:blink text-align:center; color:#Ff0; font-family:'Arial Black', Gadget, sans-serif; font-size:14px; font-weight:bold;"> BOND
        </A> 
</h3>
       <?php
		while($rows = $a->fetch_assoc()) {
			$agent=$rows['agent'];
			?>
     
  <li class="list-group-item" style="background:#000; overflow:hidden;"><span style="float:left; overflow:hidden; color:#FF0; font-weight:bold" >
 
  
  
  <button type="submit" class="btn btn-default" style="float:left; color:#000; font-size:16px; font-weight:bold " >
 <span style="color:#F00; text-transform:uppercase; font-weight:bold"> <?php  $cate=$rows['main_category']; 
  if($cate!='food'){
	echo $rows['main_category']; 
  }
  else {
   }
  ?></span>
  <?php  $comment= $rows['comment']; ?> 
  
 <a href=javascript:popcontact('debtors.php?roll=1') style="color:#000; text-decoration:blink text-align:center; font-size:14px; font-weight:bold;"> 
  <?php echo $rows['product']; ?> </a>
  
  <?php
  if(empty($comment)){
  }
  else {
  
  ?>/  <span style=" color:#f00; ">&nbsp;&nbsp;<?php echo $rows['comment']; ?> </span> 
  
  <?php } ?> </button>
  
<a href="#">
 <button type="button" class="btn btn-danger" style="float:right; color:#fff; font-weight:bold;  font-size:16px; margin-left:5px "><?php echo $rows['SUM(qty)']; ?> </button></a><br /></li>
 
<?php } ?>  
     
            
 </ul>     
      
      
  
 <!--------TOTAL---->   
   <div class="col-sm-12" style="background:#003; padding:0px 0px; text-align:CENTER; border:1px solid#fff">
   
   <span style="font-size:16px; font-family:'Arial Black', Gadget, sans-serif; margin-top:20px; color:#fff"><?php
   
   	$a = $con->query("SELECT *  FROM users where id='".$agent."' ") or die(mysqli_error($con));
			
		while($rows = $a->fetch_assoc()) {
			echo $totn=$rows['full_name'];
		}
   
   
    //echo $agent; ?>  </span>
     <span style="background:#060; padding:15px 20px; float:right; font-size:20px; font-stretch:expanded; color:#fff; font-weight:bold ">  
      <?PHP
      	$a = $con->query("SELECT SUM(price*qty) as totbill FROM basket where tab='".$t_num."' and ids='".$c_num."' and area='$section'  and status='5' ") or die(mysqli_error($con));
			
		while($rows = $a->fetch_assoc()) {
			 $tot=$rows['totbill'];
		}
		echo number_format($tot);
			?> XAF</span> 
       </div>
       
       <!-----TOTAL--------->
      
  </div> 
    </div>
   
  <?php
 }
  ?>

       