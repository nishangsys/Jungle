<a href="?add_types&link=Our Services">
<div class="col-sm-3" >
          <div class="well" style=" border:1px solid#999; text-align:center; background:#093; color:#fff" >
          <span style="font-size:18px; text-align:center; font-weight:bold"> Add New Services
</span>
</div>
</div>
</a>
<?php
 $id;
   $dm=$con->query("SELECT * FROM our_service order by name") or die(mysqli_error($con));
while($bum=$dm->fetch_assoc()){
	 $deptss=$bum['name'];
     $id=$bum['id'];
?>
<a href="?recording_services&link=Add <?php echo $deptss; ?> Styles&type=<?php echo $deptss; ?>">
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
        
        
  
  
   <div class="row">
 
        <div class="col-sm-12">
 <iframe src="../content/our_serve.PHP" allowFullScreen style="width: 97%;
			float:left;
			background: #FFF;
            border:none;
            height:900px;
            overflow:hidden;
			border-radius: 5px;
		
 "></iframe>
          </div>
          </div>
  
        
        
         