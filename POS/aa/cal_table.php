<?php
$mysqli = new mysqli("localhost", "root", "", "pos");

if ($mysqli->connect_errno) {
    printf("Connect failed: %s\n", $mysqli->connect_error);
    
}

 $query = "SELECT * FROM basket WHERE status = 0";
$result = $mysqli->query($query);

$data = array();

while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
  $data[] = $row;
}

$query_payment = "SELECT * FROM payment WHERE id = 1";
$result_payment = $mysqli->query($query_payment);

$data_payment = array();

while ($row = $result_payment->fetch_array(MYSQLI_ASSOC)) {
  $data_payment[] = $row;
}

$payment  =$data_payment[0]['payment'];
?>

<table style="border: 1px solid #ccc;">
	<tr>
		<th style="border: 1px solid #ccc;">Product</th>
		<th style="border: 1px solid #ccc;">Qty</th>
		<th style="border: 1px solid #ccc;">Total</th>
	</tr>
	<?php $final = 0;?>
	<?php foreach($data as $key => $value) {?>
		<?php $final += $value['total']?>
		<tr>
			<td style="border: 1px solid #ccc;"><?php echo $value['product'];?></td>
			<td style="border: 1px solid #ccc; text-align: center;"><?php echo $value['qty'];?></td>
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
		<td style="border: 1px solid #ccc;"><input type="number" name="payment" id="payment" value="<?php echo $payment;?>"></td>
	</tr>
	<?php $balance = $final - $payment;?>
	<tr>
		<td style="border: 1px solid #ccc;" colspan="2"><strong>Balance</strong></td>
		<td style="border: 1px solid #ccc;"><input type="text" name="balance" id="balance" readonly="true" value="<?php echo $balance;?>"></td>
	</tr>

</table>