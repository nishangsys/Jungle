<?PHP
				
				$from=$_GET['from'];
				$to=$_GET['to'];
				$prod=$_GET['prod'];
?>

<div class="alert alert-info">
  <strong><?php echo $prod; ?> Supplies Between <?php echo $_GET['from']; ?> and <?php echo $_GET['to']; ?></strong> 
</div>


<div style="clear:both; height:20px"></div>

	  <table class="table table-bordered">

		<thead>
        <th>S/N</th>
			<th>Product</th>
             <th>Date</th>
              <th>Time</th>
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
			
				$oquery=$conn->query("select item,SUM(current) as supplies, month,time,receiver from `truck` where month between '$from' and '$to' and item='$prod' GROUP BY id order by item ");
				$i=1;
				while($orow = $oquery->fetch_array()){
					?>
					<tr>
                    <td><?php echo $i++; ?></td>
						<td><?php echo $orow['item']?></td>
                        <td><?php echo $orow['month']?></td>
                          <td><?php echo $orow['time']?></td>
						<td><?php 
						
						echo $orow['supplies']?></td>
						   <?php
							
				$result = $con->query("SELECT * FROM `sectors`
               where does='2' order by name ") or die(mysqli_error($con));
				while($bu=$result->fetch_assoc()){
					$sector= $bu['name'];
								?>
			<th> <?php  $as = $con->query("select current  as supplies from `truck` where  item='".$orow['item']."' AND receiver='".$bu['area']."' and month='".$orow['month']."' AND time='".$orow['time']."'   ") or die(mysqli_error($con));
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