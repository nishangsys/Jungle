
<TITLE> RECEIPTS</TITLE>
<style>  
  * {
        box-sizing: border-box;
        -moz-box-sizing: border-box;
    }
  
    .subpage {
        padding: 1cm;
        border: 5px black solid;
        height: 237mm;
        outline: 2cm #000 solid;
    }
    
    @page {
        size: A4;
        margin: 0;
    }
    @media print {
        .page {
            margin: 0;
            border: initial;
            border-radius: initial;
            width: initial;
            min-height: initial;
            box-shadow: initial;
            background: initial;
            page-break-after: always;
        }
    }

.pageso{
	width:310px; 
	height:400px;
	border:1px solid#000;
	margin:auto;
}
.ug{
	
	width:97%;
	height:20px;
	margin:auto;	
	margin-top:-10px;
}
.g{
	float:left;
	width:30px;
	height:30px;
	padding:5px 0px;
	border:1px solid#000;
	margin-left:0px;
	
}
.f{
	float:left;
	width:140px;
	height:30px;
	padding:5px 0px;
	border:1px solid#000;
	text-align:center;
	
}
.fi{
	float:left;
	width:60px;
	height:30px;
	padding:5px 0px;
	border:1px solid#000;
	text-align:center;
	
}
.dfh{
	float:left;
	width:99%;
	margin:auto;
	height:auto;
	overflow:hidden;
	padding-bottom:5px;
	
	
}
.clear{
	width:100%;
	height:auto;
	clear:both;
	margin:0px;
	padding:0px;
}
table{
	border-collapse:collapse;
	border:1px solid#000;
}
tr,td{
	border-collapse:collapse;
	border:1px solid#000;
	padding:5px 5px;
}
</style>
<style type="text/css" media="print">
  @page { size: B4 portrait; }
</style>

<?php


  $dms=$con->query("SELECT * FROM sectors WHERE area='".$_GET['sect']."' ") or die(mysqli_error($con));
 
while($bums=$dms->fetch_assoc()){
$sector=$bums['name'];
}
$area=$_GET['sect'];
 $date=$_GET['date'];
     

?>

	
    
    <div class="alert alert-success">
  <strong><?php echo $sector; ?> Supplies on the <?php echo $date; ?></strong> 
</div>

	  
	  
	  
	  
	  
	  
	  <?php  $dms=$con->query("SELECT * FROM truck where month='$date' AND receiver='$area' ") or die(mysqli_error($con));
   $i=1;
?>
	  
	  
	  
	  
	   <table style="width:100%">
	   <tr>
   <td>S/N</td><td>Product</td><td>Time Supplied</td><td>Time Supplied</td><td>Supplied By</td><td>Action</td></tr>
 

<?php
while($bum=$dms->fetch_assoc()){ 
?>
<tr>

                               <td><?php echo $i++; ?></td>
                              <td><?php echo $bum['item']; ?></td>
                <td><?php echo $bum['current']; ?></td>
                <td><?php echo $bum['time']; ?></td>
                <td><?php echo $bum['sentby']; ?></td>
                 <td><a href="?view_supplies&date=<?php echo $_GET['date']; ?>&sect=<?php echo $_GET['sect']; ?>&id=<?php echo $bum['id']; ?>&prod=<?php echo $bum['item']; ?>&undothis" class="btn btn-primary btn-xs" onclick="return confirm('Are you sure because <?php echo $bum['current']; ?> will be removed from <?php echo $sector; ?> Counter and sent back to Warehouse ')">Undo this Supply</a></td>
                            </tr>

  <?PHP } ?>
 </table>

<?php
if(isset($_GET['undothis'])){
	$pid=$_GET['id'];
	
	  $dms=$con->query("SELECT * FROM truck WHERE id='".$pid."' ") or die(mysqli_error($con)); 
while($bums=$dms->fetch_assoc()){
		 $product=$bums['item'];
	 $a_area=$bums['receiver'];
	 $o_qty=$bums['current'];
}
       //////Current Qty in store
		  $dms=$con->query("SELECT * FROM finals WHERE name='".$product."' and area='$a_area' ") or die(mysqli_error($con));		 
while($bums=$dms->fetch_assoc()){
		  $cur_qty=$bums['qty'];
		  $pidd=$bums['id'];
		$new_qty=$cur_qty-$o_qty;
		}
		
		//////Current Qty in warehouse
		  $dms=$con->query("SELECT * FROM warehouse WHERE name='".$product."' ") or die(mysqli_error($con));		 
while($bums=$dms->fetch_assoc()){
		  $whcur_qty=$bums['qty'];
		  $whpidd=$bums['id'];
		$whnew_qty=$whcur_qty+$o_qty;
		}
		
		
		 $dms1=$con->query("UPDATE finals SET qty='$new_qty' WHERE id='".$pidd."' and area='$a_area' ") or die(mysqli_error($con));	
		 
		  $dms1=$con->query("UPDATE warehouse SET qty='$whnew_qty' WHERE id='".$whpidd."'  ") or die(mysqli_error($con));	
		  
		  $dms12=$con->query("DELETE FROM truck  WHERE id='$pid'  ") or die(mysqli_error($con));	
		  echo '<meta http-equiv="Refresh" content="0; url=?view_supplies&date='.$_GET['date'].'&sect='.$_GET['sect'].'   ">';
		
		
		
	
}

?>
 

