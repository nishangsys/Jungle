 <script type="text/javascript">
function doCalc(form) {
		    form.bal.value = (((parseInt(form.total.value) - parseInt(form.paid.value)-parseInt(form.disc.value))));
			
		

	    form.expamt.value = (((parseInt(form.day.value) * (parseInt(form.expect.value)))+parseInt(form.added.value)-parseInt(form.totdisc.value)));

  form.bal.value = ((parseInt(form.expamt.value)-parseInt(form.paid.value)));
  
 

}
</script>
 
 <style>
 h3{
	background:#FFF;
	color:#000;
	text-align:center;
	font-size:24px;
	padding:10px 10px;
	margin-top:-31px;
}
</style>
 
 <?php
 
 @session_start();
 $query =$con->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
 $email=$userRow['user_name'];
 $level=$userRow['banned'];
 
 }
 ///////get name from customer tbl where code is nid
 $d=$con->query("SELECT * FROM customers where code='".$_GET['code']."' order by name ") or die(mysqli_error($con));
while($bu=$d->fetch_assoc()){
	$yname=$bu['name'];
}

//////Get total bill of a customer
 $d=$con->query("SELECT SUM(tc) as tot from service_offered where code='".$_GET['code']."' and status!='2'  ") or die(mysqli_error($con));
while($bu=$d->fetch_assoc()){
	$total=$bu['tot'];
}
	?>
    <h3>Validating Bill Payments for: <span style="color:#f00; font-weight:bold"><?php echo $yname; ?></span>  | Total Bill: <span style="color:#f00; font-weight:bold"><?php echo number_format($total); ?> Frs</span>  </h3>
 
 <div class="col-sm-5">
          <div class="well">
           
           
            <form class="form-horizontal" role="form" method="post" action="" enctype="multipart/form-data">
 
  
  
  
   
  
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> Total Bill</label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" name="total" value="<?php echo $total; ?>" readonly="readonly" style="border:2px solid#f00" onBlur="doCalc(this.form)"  >
    </div>
  </div>
 


   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Amount Paid</label>
    <div class="col-sm-10"> 
      <input type="number"  class="form-control" id="pwd"  name="paid"  required="required" onBlur="doCalc(this.form)" >
    </div>
  </div>
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Amt Discount</label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd"  name="disc"   onBlur="doCalc(this.form)" value="0" >
    </div>
  </div>
  
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Balance</label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php echo $address; ?>" name="bal"   >
    </div>
  </div>
 
 <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> </label>
    <div class="col-sm-10"> 
  <button type="submit" name="save" class="btn btn-info">SAVE</button>
  </div>
  </div>
 
  </form>
          </div>
        </div>




<!-------------right box------------->
 <div class="col-sm-7">
          <div class="well">
            <div class="table-responsive" >
            
            
            
            
            

            
            
            
            
            
            
            
            
            
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example" style="margin-top:20px">
                                
        </h3>
      
 <thead>
                                        <tr>
                                          <th>S/N</th>
        <th>Service</th>
        <th>Cloth Type</th>
        <th>Cost</th>
        <th>Qty</th>
        <th>Total Cost</th>
        <th>Comment</th>
      
        <th>Action</th>
      
                                        </tr>
                                    </thead>
                                    <tbody>
  <?PHP
	
		$ab= $con->query("select * from service_offered where code='".$_GET['code']."' and status!='2'" ) or die (mysqli_error($con));
								$i=1;
		while ($df= $ab->fetch_assoc() ){
							?>                                    
   
  

      <tr>
       
            <td><?php  echo $i++; ?></td>
         <td ><?php echo $df['serve']; ?></td>

        <td><?php echo $name=$df['types']; ?></td>
        <td><?php echo $df['cost']; ?></td>
         <td><?php echo $df['qty']; ?></td>
         <td><?php echo number_format($df['tc']); ?></td>
         <td><?php echo $df['comment']; ?></td>
        

<td><a href="?servicing&nid=<?php echo $_GET['nid']; ?>&type=<?php echo $_GET['type']; ?>&delete=<?php echo $df['id']; ?>"><button class="btn btn-danger"><i class="icon-cross icon-white"></i> DELETE</button></a></td>

       
      
                                            
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                </table>
                                
                                </div>
          </div>
        </div>




        
  <?php
 
  
  if(isset($_POST['save'])){
	  $paid=$_POST['paid'];
	  $total=$_POST['total'];
	  
	 
	  $date=date('d-m-Y');
	  $month=date('m');
	  
	  $y=date('Y');
	  $code=$_GET['code'];
	  $
	  $names=$yname;
	  $discount=$_POST['disc'];
	  $bal=$total-($paid+$discount);
	  
	

		if($bal<0){
			echo "<script>alert('Sorry Negative balance')</script>";
		}
		
		else {
	   $d=$con->query("INSERT INTO daily set cust_id='".$_GET['code']."',staffname='$yname',date='$date',month='$month',year='$y',total='$tc',qty='$qty',price='$cost',reason='laundry' ,discount='$discount',rec='$paid',owed='$bal',area='8' ,paidto='$email'") or die(mysqli_error($con));
	   
	   //////update service_offered
	    $dfkl=$con->query("UPDATE service_offered set status='2' where code='".$_GET['code']."' and status='0'") or die(mysqli_error($con));
		
		
		//////update service_offered
	    $dfkl1=$con->query("UPDATE customers set status='2' where id='".$_GET['code']."' and status=''") or die(mysqli_error($con));
		
		
	   echo "<script>alert('Saving Successful. Thank you')</script>";
	   
	     echo '<meta http-equiv="Refresh" content="0; url=?receipts&link=Print%20Receipts">';
		}
  }
  ?>