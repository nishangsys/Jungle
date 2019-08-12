
<script language="JavaScript" src="../js/pop-up.js"></script>
<?php
//include '../includes/dbc.php';
   $dm=$con->query("SELECT * FROM sectors where does='2'") or die(mysqli_error($con));
while($bum=$dm->fetch_assoc()){
	 $deptss=$bum['name'];
     $area=$bum['area'];
?>

    
         <!--
        <a href=javascript:popcontact('../content/supplying.php?roll=<?php echo $area;
?>') style="color:#1188aa; text-decoration:blink text-align:center; font-weight:bold;">  <a href="?supplying&roll=<?php echo $area;
?>"> --->

                           
                               <a href=javascript:popcontact('SUPPLYING/index.php?area=<?php echo $area;
?>') style="font-weight:bold;">  
<div class="col-sm-6" >
          <div class="well" style=" border:1px solid#999; text-align:center" >
          <span style="font-size:18px; text-align:center; font-weight:bold"> 

<?php
echo $deptss;
?> 
</span>

           
          </div>
          
        </div>
        <?php } ?>
        </a>
        
   <div class="row">
   <?php
   if(isset($_GET['sect'])){
	   $sect=$_GET['sect'];
	   $a=$_GET['area'];
   
   ?>
 
        <div class="col-sm-12">
 <iframe src="../content/supplying.php?receiving=Admin&sect=<?php echo $sect;  ?>&area=<?php echo $a; ?>" allowFullScreen style="width: 97%;
			float:left;
			background: #FFF;
            border:none;
            height:900px;
            overflow:hidden;
			border-radius: 5px;
		
 "></iframe>
          </div>
          </div>
  <?php } ?>
        
        
