
  <?php
 $id;
   $dm=$con->query("SELECT * FROM users where id='$id'  ") or die(mysqli_error($con));
while($bum=$dm->fetch_assoc()){
	 $deptss=$bum['address'];
}
?>

 <div class="row">
 
        <div class="col-sm-12">
 <iframe src="all_course.PHP?dept=<?php echo $_GET['add_course']; ?>&main=<?php echo $_GET['dept']; ?> " allowFullScreen style="width: 97%;
			float:left;
			background: #FFF;
            border:none;
            height:900px;
            overflow:hidden;
			border-radius: 5px;
		
 "></iframe>
          </div>
          </div>