<?php
//include connection file 
include_once("connection.php");
 $product=$_GET['product'];
$sql = "SELECT * FROM `smkt_whouse` where name='$product' ";
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
	font-size:18px;
}
.con{
	width:960px;
	height:500px;
	margin:auto;
	border:1px solid#00F;
	padding:30px 30px;
	
}
</style>
<body>



<div class="con">
<h1>UPDATING <?PHP echo $product; ?>In the smkt_whouse</h1><br>
<span style="font-size:16px; color:#F00; margin-top:-50px">Input the figure and click out side the table update automatically</span>
<div id="msg" class="alert"></div>
<table id="employee_grid" class="table table-condensed table-hover table-striped bootgrid-table" width="60%" style="margin-top:-50px" cellspacing="0">
   <thead>
      <tr>
         <th>Product</th>
          <th>Qty</th>
         <th>COST Price</th>
         <th>Selling Price</th>
         <th>Barcode</th>
      </tr>
   </thead>
   <tbody id="_editable_table">
      <?php while($res=$queryRecords->fetch_assoc()){ ?>
      <tr data-row-id="<?php echo $res['id'];?>">
         <td class="editable-col" contenteditable="true" col-index='0' oldVal ="<?php echo $res['name'];?>"><?php echo $res['name'];?></td>
         <td class="editable-col" contenteditable="true" col-index='1' oldVal ="<?php echo $res['qty'];?>"><?php echo $res['qty'];?></td>
         <td class="editable-col" contenteditable="true" col-index='2' oldVal ="<?php echo $res['cost'];?>"><?php echo $res['cost'];?></td>
         <td class="editable-col" contenteditable="true" col-index='3' oldVal ="<?php echo $res['sp'];?>"><?php echo $res['sp'];?></td>
          <td class="editable-col" contenteditable="true" col-index='4' oldVal ="<?php echo $res['barcode'];?>"><?php echo $res['barcode'];?></td>
      </tr>
	  <?php } ?>
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