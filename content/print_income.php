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
  <strong><?php echo $sec_name; ?> Supplies Between <?php echo $from; ?> and <?php echo $to; ?></strong>  <a href="do_me.php?from=<?php echo $from; ?>&to=<?php echo $to; ?>" target="new" class="btn btn-success">Print a Copy</a>
</div>
<div>
	  <table class="table table-bordered">

		<thead>
        <th>S/N</th>
			<th>Date </th>
			<th>Total Income</th>
             <th>Total Expense</th> 
            <th>Action</th>
		</thead>
		<tbody>
		<?php
	
				$oquery=$conn->query("select date,SUM(rec) as income,SUM(exp) as exp  from `daily` where date between '$from' and '$to' GROUP BY  date  ") or die(mysqli_error($con));
			echo	$ffg=$oquery->num_rows;
				$i=1;
				while($orow = $oquery->fetch_array()){
					?>
					<tr>
                    <td><?php echo $i++; ?></td>
						<td><?php echo $orow['date']?></td>
						<td><?php echo $orow['income']?></td>
						 <td></td>
					</tr>
					<?php 
				}
			}
		?>
		</tbody>
	</table>
    </div></div>