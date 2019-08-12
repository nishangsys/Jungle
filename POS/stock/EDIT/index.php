<?php
//include connection file 
include_once("connection.php");
$sql = "SELECT * FROM `basket` where tab='1' and status='0'";
$queryRecords = mysqli_query($conn, $sql) or die(mysqli_error($conn));
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap.min.css"/>
<title>NISHANG SYSTEM</title>
</head>
<style>
body{
	line-height:1.8;
	font-size:16px;
}
</style>
<body>



<div class="container" style="padding:0px 10px;">
<h3>SELLING EN GROSS TO CLIENTS</h3>
<div id="msg" class="alert"></div>
<table id="employee_grid" class="table table-condensed table-hover table-striped bootgrid-table" style="margin-top:-40px" width="100%" cellspacing="0">
   <thead>
      <tr>
         <th>Product</th>
         <th>Price</th>
         <th>Quantity</th>
      </tr>
   </thead>
   <tbody id="_editable_table">
      <?php foreach($queryRecords as $res) :?>
      <tr data-row-id="<?php echo $res['id'];?>">
         <td class="editable-col" contenteditable="true" col-index='0' oldVal ="<?php echo $res['product'];?>"><?php echo $res['product'];?></td>
         <td class="editable-col" contenteditable="true" col-index='1' oldVal ="<?php echo $res['price'];?>"><?php echo $res['price'];?></td>
         <td class="editable-col" contenteditable="true" col-index='2' oldVal ="<?php echo $res['qty'];?>"><?php echo $res['qty'];?></td>
      </tr>
	  <?php endforeach;?>
   </tbody>
</table>
</div>
</body>
</html>
<script type="text/javascript">
$(document).ready(function(){
	$('td.editable-col').on('focusout', function() {
		data = {};
		data['val'] = $(this).text();
		data['id'] = $(this).parent('tr').attr('data-row-id');
		data['index'] = $(this).attr('col-index');
	    if($(this).attr('oldVal') === data['val'])
		return false;

		$.ajax({   
				  
					type: "POST",  
					url: "server.php",  
					cache:false,  
					data: data,
					dataType: "json",				
					success: function(response)  
					{   
						//$("#loading").hide();
						if(!response.error) {
							$("#msg").removeClass('alert-danger');
							$("#msg").addClass('alert-success').html(response.msg);
						} else {
							$("#msg").removeClass('alert-success');
							$("#msg").addClass('alert-danger').html(response.msg);
						}
					}   
				});
	});
});

</script>