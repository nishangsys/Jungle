
 <link rel="stylesheet" href="../search/css/style.css" />
<script type="text/javascript" src="../search/js/jquery.min.js"></script>
<script type="text/javascript" src="../search/js/script.js"></script>
        <script src="../js/pop-up.js"></script>

     
     
      <form action="" method="post">
      <table>
      <tr>
      <td> Reason:</td><td>
        <input type="text" class="form-control" placeholder="reason" name="names"  style="width:140px"  >                    <ul id="country_list_id"></ul>

    </td>
  
    
      <td>   <input type="number" class="form-control" placeholder="Qty Bought" name="qty"   style="width:50px" required > <td> </td> 
        
          <td>   <input type="number" class="form-control" placeholder=" Total Cost" name="cost"    required> <td> </td> 
          
            <td>   <input type="text" class="form-control" placeholder="Date" name="date" value="<?php echo $_GET['date']; ?>"   > <td>  
            
              <td>   <input type="text" class="form-control" placeholder=" Sector" name="sector" value="<?php echo $_GET['sector']; ?>"   > <td>  </td>
              <td>
              
              <input type="hidden" class="form-control" placeholder=" Sector" name="area" value="<?php echo $_GET['area']; ?>"></td>
           <td>
           <button type="submit" class="btn btn-primary btn-lg" name="ok" >Save</button></td>   
              </tr>
    </table>
            </form>
  

  
   <?php
   if(isset($_POST['ok'])){
 $matric=$_POST['names'];
 $level=$_POST['level'];
 
		$names=$_POST['names'];
		$cost=$_POST['cost'];
		$area=$_POST['area'];
		$sector=$_POST['sector'];
		$date=$_POST['date'];
		$qty=$_POST['qty'];
		$total=$cost*$qty;
		
		$m=$_GET['m'];
		$y=$_GET['y'];
	 if (!is_numeric($qty)) {
        // Error
		   echo "<script>alert('ERROR. Only Figures are allowed for Quanitities')</script>";
	 }
	 if (!is_numeric($cost)) {
        // Error
		   echo "<script>alert('ERROR. Only Figures are allowed for Cost')</script>";
	 }
 
 
  //////////select academic year//////////////
$d=$con->query("INSERT INTO daily set reason='$sector expenses',date='$date',month='$m',year='$y',qty='$qty',exp='$cost',price='$cost',total='$cost',area='$area',paidto='$who',purpose='$names'") or die(mysqli_error($con));

//echo '<meta http-equiv="Refresh" content="1; url=saving&date='.$date.'&area='.$area.'&sector='.$sector.'&m='.$m.'&y='.$y.'">';
?>
   <?php }  ?>
   <h1>Drinks bought <?php echo $_GET['sector']; ?> at on <?php echo $_GET['date']; ?> <span style="background:#f00; color:#fff; padding:10px 10px;">Total Exp on Drinks:
   <?php
   $d=$con->query("SELECT SUM(exp) as totexp FROM  daily where date='".$_GET['date']."' and area='".$_GET['area']."' and exp>0") or die(mysqli_error($con));
while($df=$d->fetch_assoc()){ 
echo number_format($df['totexp']);
}
   ?>
   
   </span></h1>
   
   <?php
   $d=$con->query("SELECT * FROM  daily where date='".$_GET['date']."' and area='".$_GET['area']."' and exp>0") or die(mysqli_error($con));
$a=1;
   
   ?>
   
   <table>
   <tr>
   <td>S/N</td><td>
   Product</td><td>Qty</td><td>Total Cost</td><td>Sector</td></tr>
   <tr>
   <?php while($df=$d->fetch_assoc()){ ?>
    <td><?php echo $a++; ?></td><td>
   <?php echo $df['reason']; ?></td><td><?php echo $df['qty']; ?></td><td><?php echo $df['total']; ?></td><td><?php echo $_GET['sector']; ?></td><td><a href="?saving&date=<?php echo $df['date']; ?>&area=<?php echo $df['area']; ?>&sector=<?php echo $_GET['sector']; ?>&m=<?php echo $df['month']; ?>&y=<?php echo $df['year']; ?>&del=<?php echo $df['id']; ?>">Delete</a></td></tr>
    <?php } ?>
  
   
   
   </table>
   
   <?php
   if(isset($_GET['del'])){
	   $id=$_GET['del'];
	    //////////select academic year//////////////
$d=$con->query("delete from daily where id='$id'") or die(mysqli_error($con));

echo '<meta http-equiv="Refresh" content="1; url=?saving&date='.$_GET['date'].'&area='.$_GET['area'].'&sector='.$_GET['sector'].'&m='.$_GET['m'].'&y='.$_GET['y'].'">';
   }
   ?>
		 