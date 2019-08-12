</script>
<?php
//include '../includes/dbc.php';
   $dm=$con->query("SELECT * FROM sectors where does='2'") or die(mysqli_error($con));
while($bum=$dm->fetch_assoc()){
	 $deptss=$bum['name'];
     $area=$bum['area'];
?>

    
         <!--
        <a href=javascript:popcontact('../content/supplying.php?roll=<?php echo $area;
?>') style="color:#1188aa; text-decoration:blink text-align:center; font-weight:bold;"> --->
<a href="?store&roll=<?php echo $area;
?>&name=<?php echo $deptss; ?>">


<div class="col-sm-3" >
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
  
 
        <div class="col-sm-12">
 <iframe src="../content/all_ourgoods12.php" allowFullScreen style="width: 97%;
			float:left;
			background: #FFF;
            border:none;
            height:900px;
            overflow:hidden;
			border-radius: 5px;
		
 "></iframe>
          </div>
          </div>
   
