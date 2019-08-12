                                  
  <link rel="stylesheet" href="search/css/style.css" />
<script type="text/javascript" src="search/js/jquery.min.js"></script>
<script type="text/javascript" src="search/js/script.js"></script>
        <script src="../js/pop-up.js"></script>

 
    
            <?php
   if(isset($_POST['search'])){
 $matric=$_POST['names'];
 $level=$_POST['level'];
 $date=date('d-m-Y');
			$m=date('m');
			$dy=date('Y');
			$t=date('G:i:s');
  //////////select academic year//////////////
  
  
  
  
$d1=$con->query("SELECT * FROM names where name='$matric'  ") or die(mysqli_error($con));
		while($v=$d1->fetch_assoc()){
			$name=$v['name'];
			$tel=$v['sector'];
			$from=$v['dept'];
			$nic=$v['nic'];
			$yid=$v['id'];
		}
		
		
		
$df122=$con->query("SELECT *  FROM names where name='$name' and sector='$tel' and status='2' ") or die(mysqli_error($con));
	if($df122->num_rows>0){
		
$message= "<div class='alert alert-success'>SORRY that Name alread Exists</div>";
echo '<meta http-equiv="Refresh" content="0; url=?today">';
	}
	else {
			
$insert=$con->query("INSERT INTO customers set name='$name',year='$dy',reg_date='$date',month='$m',yid='$yid',address='$from',tel='$tel',nic='$nic',time='$t',code='$code' ") or die(mysqli_error($con));

	
	echo "<script>alert('Action Successfull. Go to Todays Job to Continue ')</script>";
	echo '<meta http-equiv="Refresh" content="0; url=?today">';

	
	}
   }
?>


     
  <?PHP
						 echo $message;
						?> 
      
      <form class="form-horizontal" action="" method="post">
      
      <div class="form-group">
       <label class="control-label col-sm-2" for="email"> Student's Names:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" placeholder=" Your Name" name="names" id="country_id" onkeyup="autocomplet()" autocomplete="off">                    <ul id="country_list_id"></ul>
<button type="submit" class="btn btn-primary btn-lg" name="search" >Search</button>
      </div>
    </div>
       
            </form>
            
            
            
 <iframe src="../laundry/my_newjob.php" allowFullScreen style="width: 97%;
			float:left;
			background: #FFF;
            border:none;
            height:900px;
            overflow:hidden;
			border-radius: 5px;
		
 "></iframe>
          </div>
          </div>
  



