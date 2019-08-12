<!-- Edit -->

<script type="text/javascript">

    function PreviewImage() {
        var oFReader = new FileReader();
        oFReader.readAsDataURL(document.getElementById("uploadImage").files[0]);

        oFReader.onload = function (oFREvent) {
            document.getElementById("uploadPreview").src = oFREvent.target.result;
        };
    };

</script>

<div class="modal fade" id="edit_<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">Editting <b><?php echo $row['name']; ?></b></h4></center>
            </div>
            <div class="modal-body">
			<div class="container-fluid">
			<form method="POST" action="edit.php" enctype="multipart/form-data">
				<input type="hidden" class="form-control" name="id" value="<?php echo $row['id']; ?>">
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Product:</label>
					</div>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="prod" value="<?php echo $row['name']; ?>">
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Quantity:</label>
					</div>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="qty" value="<?php echo $row['qty']; ?>">
					</div>
				</div>
                
                	
                <div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Selling Price:</label>
					</div>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="sp" value="<?php echo $row['sp']; ?>">
					</div>
                    
                    <div class="col-sm-2">
						<label class="control-label modal-label">Cost Price:</label>
					</div>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="price" value="<?php echo $row['cost']; ?>">
					</div>
				</div>
                
                
                
                
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Category:</label>
					</div>
					<div class="col-sm-10">
                    
                    <select required class="form-control" id="sel1" name="cate">
                    <option value="<?php echo $row['disc']; ?>"><?php echo $row['disc']; ?></option>
        <?php
							
								$result = $conn->query("SELECT * FROM categories order by name") or die(mysqli_error($conn));
				while($bu=$result->fetch_assoc()){
								?>
                       
        <option></option>          
        <option value="<?php echo $bu['name']; ?>"  ><?php echo $bu['name']; ?> </option>
    <?php } ?> 
        
      </select>
						
					</div>
				</div>
                
                
                 <div class="col-sm-2">
						<label class="control-label modal-label">Current Photo:</label>
					</div>
					<div class="col-sm-4">
						<?php  if(empty($row['image_name'])){
echo "<img src='../../img/drink.PNG' style='width:80px; height:100px' >";							
						}
						else {
							echo "<img src='../../baragent/image/drinks/". $row['image_name']."' style='Width:80px; height:100px' >";
						}; ?>
                        
					</div>
                   
			
                
                 <div class="col-sm-2">
						<label class="control-label modal-label">Photo:</label>
					</div>
					<div class="col-sm-4">
						<img id="uploadPreview" style="width: 100px; height: 100px;" />
<input id="uploadImage" type="file" name="userImage" onchange="PreviewImage();" class="btn btn-primary" value="<?php echo $row['image_name']; ?>"/>
					</div>
				</div>
                
            
            
            
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" name="edit" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> Update</a>
			</form>
            </div>

        </div>
    </div>
</div>

<!-- Delete -->
<div class="modal fade" id="delete_<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">Delete Product</h4></center>
            </div>
            <div class="modal-body">	
            	<p class="text-center">Are you sure you want to Delete</p>
				<h2 class="text-center"><?php echo $row['name'].' '.$row['lastname']; ?></h2>
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <a href="delete.php?id=<?php echo $row['id']; ?>" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Yes</a>
            </div>

        </div>
    </div>
</div>