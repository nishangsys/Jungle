





 <link rel="stylesheet" href="search/css/style.css" />
<script type="text/javascript" src="search/js/jquery.min.js"></script>
<script type="text/javascript" src="search/js/script.js"></script>
        <script src="../js/pop-up.js"></script>

  <div class="col-sm-12">
      <div class="well">
      
     
    
      <?php  echo $mess; ?>
      
      <form class="form-horizontal" action="" method="post">
      
      <div class="form-group">
       <label class="control-label col-sm-2" for="email"> Student's Names:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" placeholder=" Your Name" name="names" id="country_id" onkeyup="autocomplet()" autocomplete="off">                    <ul id="country_list_id"></ul>
<button type="submit" class="btn btn-primary btn-lg" name="search" >Search</button>
      </div>
    </div>
       
            </form>
  

  
   <?php
   if(isset($_POST['search'])){
 $matric=$_POST['names'];
 $level=$_POST['level'];
  //////////select academic year//////////////
$d=$con->query("SELECT * FROM name where name='$matric'  ") or die(mysqli_error($con));
$i=1;
	if(mysqli_num_rows($d)<1){
	echo	$mess="<div class='alert alert-danger'>Sorry $matric level $level Marks are not Found. Try again</div>";
	}
	else {
			echo	$mess="<div class='alert alert-success'>Name Found</div>";
	
	}
   }
?>
</div>

 