<a href="?add_sectors&link=Adding Sectors">
<div class="col-sm-3" >
          <div class="well" style=" border:1px solid#999; text-align:center; background:#093; color:#fff" >
          <span style="font-size:18px; text-align:center; font-weight:bold"> Add New Sector
</span>
</div>
</div>
</a>
<?php
 $id;
   $dm=$con->query("SELECT * FROM sectors where does='2'") or die(mysqli_error($con));
while($bum=$dm->fetch_assoc()){
	 $deptss=$bum['name'];
     $area=$bum['area'];
?>
<a href="?doing_recording&sect= <?php
echo $deptss;?>&area=<?php echo $area;
?>">

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
        
        
          </div>
          </div>
         
         
        
        <iframe src="../content/all_ourgoods12.php" allowFullScreen style="width: 100%;
			float:left;
			background: #FFF;
            border:none;
            height:900px;
            overflow:hidden;
			border-radius: 5px;
		
 "></iframe>
