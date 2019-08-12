<?php include("../config/db_config.php");?>
<ul class="list-group">
						
<?php 
$id = $_POST['id'];
$sql = "SELECT * FROM item WHERE cat_id = '$id' AND status = '1'";
$rs = mysql_query($sql);
while($row = mysql_fetch_assoc($rs)) {
?>						
							  <li class="list-group-item"><button type="button" class="btn btn-warning btn-block item" data-id="<?=$row['id'];?>"><?=$row['name'];?></button>
								<div class="col-sm-12">
									<div class="input-group">
										<span class="input-group-btn"><button class="btn btn-primary minus" type="button">-</button></span>
										<input type="text" name="qty[]" class="form-control text-center qty" aria-label="QTY" placeholder="QTY">
										<input type="hidden" name="item_id[]" value="<?=$row['id'];?>"	>
										<input type="hidden" name="item_price[]" value="<?=$row['price'];?>"	>
										<span class="input-group-btn"><button class="btn btn-primary plus" type="button">+</button></span>
									</div>
									<div>
										<span class="text-left accprice pull-left"><?=$row['price'];?></span>
										<span class="qtyprice text-right pull-right">0.00</span>
										<div class="clearfix"></div>
									</div>
									
								</div>
							  </li>
<?php } ?>
							  
								<li class="list-group-item list-group-item-info">
									<div>
										<span class="text-left pull-left">Total QTY</span>
										<span class="total_qty text-right pull-right">0</span>
										<div class="clearfix"></div>
									</div>
								</li>
								<li class="list-group-item list-group-item-success">
									<div>
										<span class="text-left pull-left">Total Price</span>
										<span class="total_price text-right pull-right">0.00</span>
										<div class="clearfix"></div>
									</div>
								</li>
							</ul>