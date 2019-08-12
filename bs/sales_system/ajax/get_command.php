<?php include("../config/db_config.php");?>
<ul class="list-group">
						
<?php 

$id = $_SESSION['user_id'];
$sql = "SELECT * FROM item,cart WHERE item.id = cart.item_id AND cart.user_id = '$id'";
$rs = mysql_query($sql);
$qty = 0;
$price = 0;
while($row = mysql_fetch_assoc($rs)) {
	$qty += $row['qty'];
	$price += $row['qty']*$row['price'];
?>						
							  <li class="list-group-item"><button type="button" class="btn btn-warning btn-block item" data-id="<?=$row['id'];?>"><?=$row['name'];?></button>
								<div class="col-sm-12">
									<div class="input-group">
										<span class="input-group-btn"><button class="btn btn-primary minus" type="button">-</button></span>
										<input type="text" name="qty[]" value="<?=$row['qty'];?>" class="form-control text-center qty" aria-label="QTY" placeholder="QTY">
										<input type="hidden" name="item_id[]" value="<?=$row['id'];?>"	>
										<input type="hidden" name="item_price[]" value="<?=number_format($row['price'],2,'.','');?>"	>
										<span class="input-group-btn"><button class="btn btn-primary plus" type="button">+</button></span>
									</div>
									<div>
										<span class="text-left accprice pull-left"><?=number_format($row['price'],2,'.','');?></span>
										<span class="qtyprice text-right pull-right"><?=number_format($row['price']*$row['qty'],2,'.','');?></span>
										<div class="clearfix"></div>
									</div>
									
								</div>
							  </li>
<?php } ?>
							  
								<li class="list-group-item list-group-item-info">
									<div>
										<span class="text-left pull-left">Total QTY</span>
										<span class="total_qty text-right pull-right"><?=$qty;?></span>
										<div class="clearfix"></div>
									</div>
								</li>
								<li class="list-group-item list-group-item-success">
									<div>
										<span class="text-left pull-left">Total Price</span>
										<span class="total_price text-right pull-right"><?=number_format($price,2,'.','');?></span>
										<div class="clearfix"></div>
									</div>
								</li>
							</ul>