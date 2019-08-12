<script type="text/javascript">
function doCalc(form) {
		   
  form.bal.value = ((parseInt(form.debt.value)-parseInt(form.paid.value)));

}
</script>


<form class="form-horizontal" method="post" role="form" action="">







    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Customers Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="email" value="<?php echo $_GET['name']; ?>" readonly="readonly">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Amount Owed:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="pwd" value="<?php echo $_GET['owed']; ?>" name="debt" onBlur="doCalc(this.form)" readonly="readonly">
      </div>
    </div>
    
       <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Amount Paid:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="pwd" name="paid" >
      </div>
    </div>
    
      <input type="hidden" class="form-control" id="pwd" name="id" value="<?php echo $_GET['paying_debts']; ?>" >
      
      
      <input type="hidden" class="form-control" id="pwd" name="name" value="<?php echo $_GET['name']; ?>" >
    
         <input type="hidden" class="form-control" id="pwd" name="cust_id" value="<?php echo $_GET['cust_id']; ?>" >
    

    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default" name="okk">Submit</button>
      </div>
    </div>
  </form>
<?php
if(isset($_POST['okk'])){
	$paid=$_POST['paid'];
	$debts=$_POST['debt'];
	$who=$_POST['id'];
	$cust_id=$_POST['cust_id'];
	$name=$_POST['name'];
	$date=date('d-m-Y');
	$month=date('m');
	$year=date('Y');
	echo $owed=$debts-$paid;
	if($owed<0){
		echo "<script>alert('ERROR.Negative Balance')</script>";
	}
	else {
		
		$up=$con->query("UPDATE daily set  owed='$owed' where id='$who' ") or die(mysqli_error($con));
		$acv=$con->query("INSERT INTO daily set cust_id='$cust_id',room='',reason=' Debts Payment',qty='1',price='$paid',total='$paid',
			date='$date',month='$month',year='$year',area='0',time='$time',paidto='$paidto',purpose='debts payment' ,idds='',discount='',staffname='$name',rec='$paid'") or die(mysqli_error($con));
			echo "<script>alert('Action Succssfull')</script>";
		echo '<meta http-equiv="Refresh" content="0; url= ?debtors&lin=Our Debtors">';
	 
}
}
?>