<a href="?add_goods&link=Adding Goods">
<div class="col-sm-3" >
          <div class="well" style=" border:1px solid#999; text-align:center; background:#093; color:#fff" >
          <span style="font-size:18px; text-align:center; font-weight:bold"> Add New Category
</span>
</div>
</div>
</a>
<?php
 $id;
   $dm=$con->query("SELECT * FROM supermkt_cat") or die(mysqli_error($con));
while($bum=$dm->fetch_assoc()){
	 $deptss=$bum['name'];
     $id=$bum['id'];
?>
<a href="?recordin_goods&link= <?php
echo $deptss;
?> &type=<?php echo $deptss; ?>&name=<?php echo $_GET['serve']; ?>&tel=<?php echo $_GET['tel']; ?>&yid=<?php echo $_GET['id']; ?>&sid=<?php echo $id; ?>&delete=<?php echo $id; ?>">

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
        
        
          
          
         
         
         <?php
		 ///////////////delete item
if(isset($_GET['delete'])){
	 $id=$_GET['delete'];
	  $dfG=$con->query("DELETE FROM supermkt where id='$id'") or die(mysqli_error($con));
	   $message= "<div class='alert alert-danger'>Item Successfully Deleted. Thank You</div>";
	    echo '<meta http-equiv="Refresh" content="0; url=?add_goods.php ">';

  }
		 
		 ?>
		 
        <iframe src="../stock/all_ourgoods12.php" allowFullScreen style="width: 100%;
			float:left;
			background: #FFF;
            border:none;
            height:900px;
            overflow:hidden;
			border-radius: 5px;
		
 "></iframe>
