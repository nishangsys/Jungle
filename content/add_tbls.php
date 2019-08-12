
<?php
if(isset($_POST['ok'])){	
	$_POST = array_map("ucwords", $_POST);	
		
	$dept=$_POST['name'];
	$sector=$_POST['sector'];
	
	$gh123=$con->query("SELECT * FROM bar_tables WHERE num='$dept'  ") or die(mysqli_error($con));
	if(mysqli_num_rows($gh123)>0){
		echo "<script>alert
		('ERROR.Table Number $dept is Existing, Chose Another')</script>";
	}
	else {
	$gh12=$con->query("DELETE FROM bar_tables WHERE num='$dept' and sector='$sector' ") or die(mysqli_error($con));
	
	
	$gh=$con->query("INSERT INTO bar_tables set num='$dept',sector='$sector',status='' ") or die(mysqli_error($con));
	
	
	$message='<div class="alert alert-info">
  <strong>Message:</strong> '.$dept.' Successfully Added
</div>';
}
}

if(isset($_GET['delete'])){
	$gh=$con->query("delete from bar_tables where id='".$_GET['delete']."' ") or die(mysqli_error($con));
	$message='<div class="alert alert-success">
  <strong>Message:</strong> Item Successfully Deleted
</div>';
}
	
?>
<?php echo $message; ?>


  <form class="form-horizontal" role="form" action="" method="post" style="margin-top:30px">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Table:</label>
      <div class="col-sm-10">
        <input type="TEXT" class="form-control" id="email" placeholder="type" name="name">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Sector:</label>
      <div class="col-sm-10">
      
      <select required class="form-control" id="sel1" name="sector">
        <?php
							
								$result = $con->query("SELECT * FROM sectors where does='2'") or die(mysqli_error($con));
				while($bu=$result->fetch_assoc()){
								?>
                       
        <option></option>          
        <option value="<?php echo $bu['area']; ?>"  ><?php echo $bu['name']; ?> </option>
    <?php } ?> 
        
      </select>
      </div>
    </div>
    
   
   
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-info" name="ok">Add </button>
      </div>
    </div>
  </form>
</div>

<hr />

<?php $d=$con->query("SELECT * FROM sectors,bar_tables where bar_tables.sector=sectors.area order by bar_tables.id   ") or die(mysqli_error($con));
$i=1;
?>

       <table class="table table-bordered">
    <thead>
      <tr>
              <th>#</th>

        <th>Table Number/NAME</th>
                <th>Sector</th>

        
         <th>Action</th>
        
      </tr>
    </thead>
    <tbody>
    
      <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
         <?php
		if($i%2==0)
 {
     echo '<tr bgcolor="Bisque">';
 }
 else
 {
    echo '<tr bgcolor="White">';
 }
		
		?>
           <td><?php  echo $i++; ?></td>
                                            <td><?php echo $bu['num']; ?></td>  
                                                                             <td><?php echo $bu['name']; ?></td>  
                                              <td><a href="?add_tbls&link=Adding TABLES&delete=<?php echo $bu['id']; ?>&dept=<?php echo $_GET['dept'];?>" style="font-weight:bold; color:#033"><button class="btn btn-danger"><i class="icon-remove icon-white"></i> Delete</button></a></td>
                   
      </tr>
        <?php } ?>
      
    </tbody>
    </table>
   