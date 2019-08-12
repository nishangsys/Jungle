<div class="col-sm-12" style="height:3000px" >
        

<form class="form-inline" action="" method="POST">
  <div class="form-group">
    <label for="email">Start Date:</label>
    <input type="date"  name="from" class="form-control" id="email">
  </div>
  <div class="form-group">
    <label for="pwd">End Date:</label>
    <input type="date" name="to" class="form-control" id="pwd">
  </div>
 
  <button type="submit" class="btn btn-primary"  name="submit">Search</button>
</form>


<?PHP
if (isset($_POST['submit'])){
				$from=date('d-m-Y',strtotime($_POST['from']));
				$to=date('d-m-Y',strtotime($_POST['to']));
				$area=$_POST['area'];

								$result = $con->query("SELECT * FROM `sectors`
 where area='$area' ") or die(mysqli_error($con));
				while($bu=$result->fetch_assoc()){
					$sec_name=$bu['name'];
				}
?>
<div style="clear:both; height:20px"></div>
<div class="alert alert-info">
  <strong><?php echo $sec_name; ?> Supplies Between <?php echo $from; ?> and <?php echo $to; ?></strong>  <a href="range_supply.php?from=<?php echo $from; ?>&to=<?php echo $to; ?>" target="new" class="btn btn-success">Print a Copy</a>
</div>
<div>
	  <table class="table table-bordered">

		<thead>
        <th>S/N</th>
			<th>Product</th>
			<th>Total Supply</th>
                <?php
							
								$result = $con->query("SELECT * FROM `sectors`
 where does='2' order by name ") or die(mysqli_error($con));
				while($bu=$result->fetch_assoc()){
								?>
			<th> <?php echo $bu['name'] ?></th>
            <?php } ?>
            <th>Action</th>
		</thead>
		<tbody>
		<?php
			
				$oquery=$conn->query("select item,SUM(current) as supplies, month from `truck` where month between '$from' and '$to' GROUP BY item,date order by item ");
				$i=1;
				while($orow = $oquery->fetch_array()){
					?>
					<tr>
                    <td><?php echo $i++; ?></td>
						<td><?php echo $orow['item']?></td>
						<td><?php 
						
						echo $orow['supplies']?></td>
						   <?php
							
				$result = $con->query("SELECT * FROM `sectors`
               where does='2' order by name ") or die(mysqli_error($con));
				while($bu=$result->fetch_assoc()){
					$sector= $bu['name'];
								?>
			<th> <?php  $as = $con->query("select SUM(current) as supplies from `truck` where month between '$from' and '$to' and item='".$orow['item']."' AND receiver='".$bu['area']."'   ") or die(mysqli_error($con));
				while($bs=$as->fetch_assoc()){
					echo $bs['supplies'];
				}?></th>
            <?php } ?>
             <td><a href="?view&from=<?php echo $from; ?>&to=<?php echo $to; ?>&prod=<?php echo $orow['item']?>&nishangcode">View</a></td>
					</tr>
					<?php 
				}
			}
		?>
		</tbody>
	</table>
    </div></div>