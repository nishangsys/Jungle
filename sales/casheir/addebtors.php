
  <?php
include '../../includes/dbc.php';
?>
  <link href="bootstrap.min.css" rel="stylesheet">
    <script src="jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="typeahead.js"></script>
	<style>
	body{
		font-size:16px
	}
	input[type="text"],
	input[type="number"]{
		padding:0px 0px;
		font-size:20px
	}
	.typeahead { border: 2px solid #FFF;border-radius: 4px;padding: 8px 12px;max-width: 600px;min-width: 600px;background:# fff;color: #000;}
	.tt-menu { width:300px; }
	ul.typeahead{margin:0px;padding:10px 0px;}
	ul.typeahead.dropdown-menu li a {padding: 10px !important;	border-bottom:#CCC 1px solid;color:#000;}
	ul.typeahead.dropdown-menu li:last-child a { border-bottom:0px !important; }
	.bgcolor {background:; color:#f00) no-repeat center center;padding: 100px 10px 130px;border-radius:4px;text-align:center;margin:10px;}
	.demo-label {font-size:1.5em;font-weight: 500;color:#f00;}
	.dropdown-menu>.active>a, .dropdown-menu>.active>a:focus, .dropdown-menu>.active>a:hover {
		color:#fff;
		text-decoration: none;
		background-color: #FF3;
		outline: 0;
		
		font-weight:bold;
	}
	</style>
    
    <script type="text/javascript">
function doCalc(form) {

  form.owed.value = ((parseInt(form.totalbill.value) - parseInt(form.paid.value)));
 
  
}
</script>
   <div class="row">
 
        <div class="col-sm-12">
        
        
         
    <?php
	$_POST = array_map("ucwords", $_POST);
	
	////////////////insert item

if(isset($_POST['OK'])){
$shape=$_POST['name'];
$disc=$_POST['tel'];
$cost=$_POST['cost'];
$qty=$_POST['qty'];
$add=$_POST['addr'];

$df122=$con->query("SELECT  * FROM debtors  where name='$shape' ") or die(mysqli_error($con));
if(mysqli_num_rows($df122)>0){
	echo "<script>alert('ERROR. $shape is already registered')</script>";
}
else {




$do=$con->query("INSERT INTO debtors SET name='$shape',tel='$disc'  ") or die(mysqli_error($con));
echo "<script>alert('SUCCESS. $shape is successfully registered')</script>";

}
 
}
?>
  <?PHP
						 echo $message;
						?>

  <form class="form-horizontal" role="form" method="post" action="" enctype="multipart/form-data">
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Debtor's Names</label>
    <div class="col-sm-10"> 
      <input type="text" required class="form-control" id="pwd" value="<?php echo $sha; ?>" name="name" placeholder="Name:" >
    </div>
  </div>
  
  
  
   
  
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> Contact</label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php echo $contact; ?>" name="tel"  placeholder="Contact:" >
    </div>
  </div>
 


   
 <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> </label>
    <div class="col-sm-10"> 
  <button type="submit" name="OK" class="btn btn-info">SAVE</button>
  </div>
  </div>

  
  </form>





</div>


        <table class="table table-bordered">

        <tr>
        <th>#</th>
        <th>Name</th>
                <th>Tel</th>

                <th>Amount owed</th>

       
       
      </tr>
    </thead>
    <tbody>
 <?php    
    $dfm=$con->query("SELECT * from debtors ") or die(mysqli_error($con));
	$i=1;
while($ac=$dfm->fetch_assoc())
		{
			?>
      <tr>
        <td><?php echo $i++; ?></td>
       
        <td><?php echo $ac['name']; ?></td>
                <td><?php echo $ac['tel']; ?></td>
                <td><?php echo $ac['owed']; ?></td>
       
      </tr>
     <?php } ?>
     
    
    </tbody>
  </table>





