<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/mystyle.css">
	<link rel="stylesheet" type="text/css" href="../css/another.css">
   
    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="../assets/css/main.css" />
    <link rel="stylesheet" href="../assets/css/theme.css" />
    <link rel="stylesheet" href="../assets/css/MoneAdmin.css" />
    <link rel="stylesheet" href="../assets/plugins/Font-Awesome/css/font-awesome.css" />
    <!--END GLOBAL STYLES -->

    <!-- PAGE LEVEL STYLES -->
    <link href="../assets/css/layout2.css" rel="stylesheet" />
       <link href="../assets/plugins/flot/examples/examples.css" rel="stylesheet" />
       <link rel="stylesheet" href="../assets/plugins/timeline/timeline.css" />
       
       
<script language="JavaScript" src="../js/pop-up.js"></script>
<?php
	$_POST = array_map("ucwords", $_POST);


	
	////////////////insert item
include '../includes/dbc.php';
$d=$con->query("SELECT * FROM sectors where area='".$_GET['roll']."'  ") or die(mysqli_error($con));
$i=1;
while($bu=$d->fetch_assoc()){
	$branch=$bu['name'];
}
?>

 
              <div class="row">
             
              <?php
			 
               $area=$_GET['roll'];


			  ?>
                  <div class="col-sm-12" style="background:#000; color:#FF0; text-align:center; font-size:24px; color:#FF0; font-weight:bold; padding:10PX 0PX">
     SUPPLYING TO  <span style="color:#fff"><?php echo $branch; ?> </span> FROM WAREHOUSE </span>
    
      
         <a href=javascript:popcontact('../content/validate_others.php?roll=<?php echo $area;
?>') style="color:#1188aa; text-decoration:blink text-align:center; font-weight:bold;"> 
<button class="btn btn-danger delete" type="button"> Validate Transactions and Save</button></a>
                				</div>
                   
                   
                   
                   
  

<script type = "text/javascript" >
function disableBackButton()
{
window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>	
 
	
		<meta name="viewport" stock="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
        <style>
		
		</style>


    <!-- Bootstrap core CSS -->
    <link href="css/jquery-ui.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/datepicker.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sticky-footer-navbar.css" rel="stylesheet">
    <link href="stylesheet.css" rel="stylesheet" type="text/css" />


    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../js/ie.js"></script>
     
       
<script type="text/javascript">
function doCalc(form) {
form.left.value = ((parseInt(form.qty.value)-parseInt(form.bought.value)));

  form.total.value = ((parseInt(form.priz.value)*parseInt(form.bought.value)));

}
</script>
        
		<!--//webfonts-->

    <script src="../tabstock.js" type="text/javascript"></script>
<script type="text/javascript">
String.prototype.parseURL = function() {
	return this.replace(/[A-Za-z]+:\/\/[A-Za-z0-9-_]+\.[A-Za-z0-9-_:%&\?\/.=]+/, function(url) {
		
		
		return url.link(url);
		
			});
};
</script>



<body >



    <div class="col-sm-12">
    
    
    

  
<?php
 $sector=$_GET['supp'];
?>
<form method="post" action="action2.php?area=<?php echo $_GET['roll']; ?>">
   
   
     	
      		
      	<div class='row' style=" width:96%; margin-left:20px">
      		<div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
      			<table class="table table-bordered table-hover">
					<thead>
						<tr style="background:#1188aa; color:#fff">
							<th width="2%"><input id="check_all" class="formcontrol" type="checkbox"/></th>
							<th width="3%"> stock</th>
							<th width="15%">Item Name</th>
                            							<th width="3%">Cost </th>
		
							<th width="8%">Selling Price</th>
							<th width="3%">Quantity</th>
                            <th width="3%">Stocks left</th>
						</tr>
					</thead>
					<tbody>
						<tr>
                      
							<td><input class="case" type="checkbox"/></td>
							<td><input type="text" data-type="productCode" name="itemNo[]" id="itemNo_1" class="form-control autocomplete_txt" autocomplete="off" ></td>
							<td><input type="text" data-type="productName" name="itemName[]" id="itemName_1" class="form-control autocomplete_txt" autocomplete="off"></td>
                            <td><input type="text" data-type="productCat" name="cost[]" id="cost_1" class="form-control autocomplete_txt" readonly autocomplete="off"></td>
                            
							<td><input type="text" name="price[]" id="price_1" class="form-control changesNo" autocomplete="off" onKeyPress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" readonly></td>
                         
							<td><input type="text" name="quantity[]" required id="quantity_1" class="form-control changesNo" autocomplete="off" onBlur="doCalc(this.form)" onKeyPress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" required></td>

							<td><input type="number" name="alltotal[]" id="alltotal_1" class="form-control alltotalLinePrice" autocomplete="off" onKeyPress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" style="background:#f00; color:#fff" readonly</td>
                            
                      

                        
                        </tr>
					</tbody>
				</table>
                
                
                
      		</div>
      	</div>
      	<div class='row'>
      			<tr><td>&nbsp;&nbsp;<button class="btn btn-danger delete" type="button" style="margin-left:200px">- Delete</button></td><td>
      			<button class="btn btn-success addmore" type="button" style="margin-left:700px">+ Add More</button></td><td>&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" name="save" class="btn btn-primary addmore" style=" padding:20px 20px; margin-left:300px" >Save All</button></td></tr>
                
      		
				</form>
               
                 

                         
    
   
	


        </div>
       <!--END PAGE CONTENT -->


    <!--END FOOTER -->
     <!-- GLOBAL SCRIPTS -->
    <script src="../assets/plugins/jquery-2.0.3.min.js"></script>
     <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/plugins/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <!-- END GLOBAL SCRIPTS -->
        <!-- PAGE LEVEL SCRIPTS -->
    <script src="../assets/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="../assets/plugins/dataTables/dataTables.bootstrap.js"></script>
     <script>
         $(document).ready(function () {
             $('#dataTables-example').dataTable();
         });
    </script>
     <!-- END PAGE LEVEL SCRIPTS -->
</body>
     <!-- END BODY -->
</html>

    
    
  

    <script src="../js/jquery.min.js"></script>
    <script src="../js/jquery-ui.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/bootstrap-datepicker.js"></script>
    <script src="../js/sup.js"></script>
       
       
       
       </div>
       </div>
   
	
</body>
</html>



<?php     ?>                
                   
            
       
                   
                   
                   </div>