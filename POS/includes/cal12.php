<?php
$mysqli = new mysqli("localhost", "root", "", "pos");

if ($mysqli->connect_errno) {
    printf("Connect failed: %s\n", $mysqli->connect_error);
    exit();
}

$query = "SELECT * FROM basket WHERE status = 0";
$result = $mysqli->query($query);

$data = array();

while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
  $data[] = $row;
}
?>
<html>

    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.css" />
	<body>
<table class="table table-bordered">
    <thead>			<tr>
				<th>Product</th>
				<th >Qty</th>
                <th >Price</th>

				<th  >Total</th>
			</tr>
			<?php $final = 0;?>
			<?php foreach($data as $key => $value) {?>
				<?php $final +=( $value['price']*$value['qty']); ?>
				<tr>
					<td style="border: 1px solid #ccc;"><?php echo $value['product'];?></td>
					<td style="border: 1px solid #ccc; text-align: center;"><?php echo $value['qty'];?></td>
                    					<td style="border: 1px solid #ccc; text-align: center;"><?php echo $value['price'];?></td>

					<td style="border: 1px solid #ccc; text-align: right;"><?php echo $value['total'];?></td>
			</tr>
			<?php } ?>
			<tr>
				<td style="border: 1px solid #ccc;" colspan="2">Total</td>
				<td style="border: 1px solid #ccc; text-align: right;">
					<?php echo $final;?>
					<input type="hidden" name="final" id="final" value="<?php echo $final;?>">
				</td>
			</tr>
			<tr>
				<td style="border: 1px solid #ccc;" colspan="2">Payment</td>
				<td style="border: 1px solid #ccc;"><input type="number" name="payment" id="payment"></td>
			</tr>
			<tr>
				<td style="border: 1px solid #ccc;" colspan="2"><strong>Balance</strong></td>
				<td style="border: 1px solid #ccc;"><input type="text" name="balance" id="balance" readonly></td>
			</tr>

		</table>
	</body>
	<script type="text/javascript" src="../jquery/jquery-3.3.1.min.js"></script>
	<script type="text/javascript">
	    $(document).on('keyup','#payment',function(){
	    	$("#balance").val($("#final").val() - $("#payment").val());
	    });
	</script>
</html>
