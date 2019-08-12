
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/mystyle.css">


<?PHP
include '../includes/dbc.php';

				$from=$_GET['from'];
				$to=$_GET['to'];
				
?>
<div style="clear:both; height:20px"></div>
<div class="alert alert-info">
  <strong><?php echo $sec_name; ?> Supplies Between <?php echo $from; ?> and <?php echo $to; ?></strong> 
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
           
					</tr>
					<?php 
				}
			
		?>
		</tbody>
	</table>
    </div></div>