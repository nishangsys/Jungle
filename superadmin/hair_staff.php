
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>

<script type="text/javascript">

    function PreviewImage() {
        var oFReader = new FileReader();
        oFReader.readAsDataURL(document.getElementById("uploadImage").files[0]);

        oFReader.onload = function (oFREvent) {
            document.getElementById("uploadPreview").src = oFREvent.target.result;
        };
    };

</script>
<?php 


	@session_start();
	


$err = array();
					 
if(isset($_POST['submit'] ) )
{ 

 $stye = $_POST ['name'];
$max= $_POST ['max'];
$min= $_POST ['min'];
$sector= $_POST ['sector'];



	$photo=($_FILES['userImage']['name']);	
	$photo_temp=$_FILES['userImage']['tmp_name'];
	move_uploaded_file($photo_temp,"../photo/$photo");	


$do12=$con->query("DELETE FROM hair_stylists WHERE name=' $stye' and sector='$sector'    ") or die(mysqli_error($con));
$do=$con->query("INSERT INTO hair_stylists SET name=' $stye',tel='$min',photo='$photo',sector='$sector'  ") or die(mysqli_error($con));
$message= "<div class='alert alert-success'>".$_POST['name']." Successfully Registered. Thank You</div>";
}



?>
<br />
<html>
<head>
<title>PHP Login :: Free Registration/Signup Form</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript" type="text/javascript" src="../js/jquery-1.3.2.min.js"></script>
<script language="JavaScript" type="text/javascript" src="../js/jquery.validate.js"></script>

  <script>
  $(document).ready(function(){
    $.validator.addMethod("username", function(value, element) {
        return this.optional(element) || /^[a-z0-9\_]+$/i.test(value);
    }, "Username must contain only letters, numbers, or underscore.");

    $("#regForm").validate();
  });
  </script>


</head>

     
	 <?php	
	
	   echo $message
	 ?> 
     <BR>
     <form action="" method="post" name="regForm" class="form-horizontal" id="regForm" style="margin-top:-30px" enctype="multipart/form-data">
                <div class="form-group">

         
       
        
         
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Staff Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="text" placeholder="Full Name" name="name" required>
      </div>
    </div>
      
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Contact</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="text"  name="min" required>
      </div>
    </div>
 
 
  
      
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Sector</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="text"  name="sector" value="<?php echo $_GET['type']; ?>" required readonly="readonly">
      </div>
    </div>
    
      <div class="form-group">
     <label class="control-label col-sm-2" for="email">Profile Picture:</label>
      <div class="col-sm-10">
      <img id="uploadPreview" style="width: 100px; height: 100px;" />
        <input type="file" name="userImage" class="form-control"  id="uploadImage"  onchange="PreviewImage();" required="required">
      </div>
    </div>
    
   
    
    
    
    
      <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary" name="submit">Save</button>
      </div>
   
      </form>
     
	

</div>
</div>



          <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                
        </h3>
        <?php $d=$con->query("SELECT * FROM hair_stylists order by id DESC ") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                            <th>#</th>
                                             <th>Name</th>
        <th>Contact</th> 
        <th>Sector</th>
         <th>Photo</th> 
          
          <th>Action</th> 
        
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
       
           <td><?php  echo $i++; ?></td>
                                            <td><?php  echo $bu['name']; ?></td>
                                             <td><?php  echo $bu['sector']; ?></td>
                                            <td><?php  echo $bu['tel']; ?></td>
                                            
                                            <td><img src="../photo/<?php  echo $bu['photo']; ?>" style="width:50px; height:50px" /></td>
                                            
                                           
       <td>
        <a href="?my_staff&link=Registering Staff&delete=<?php echo $bu['id']; ?>"><button class="btn btn-danger" onClick="return confirm('Are you sure you want to delete <?php echo $bu['name']; ?>')"  >Delete</button></a>
      
       
  
       
       </td>
                                            
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                    </table>

<?php
if(isset($_GET['delete'])){
	$id=$_GET['delete'];
  $sql = $con->query("DELETE FROM hair_stylists where id='$id' ") or die(mysqli_error($con))   ;

		 echo '<meta http-equiv="Refresh" content="0; url=?my_stylist&link=Add Saloon Stylist ">';
}
?>