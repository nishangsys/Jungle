<?PHP 
	////////////////insert item
include '../includes/dbc.php'; 
?>
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
    
       <hr>
                            <div class="table-responsive" >
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example" >
                                
        </h3>
        <?php $d=$con->query("SELECT * FROM warehouse order by name limit 1  ") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                          <th>S/N</th>
        <th>NAME</th>
        <th>Qty</th>
        
        <th>Barcode</th>
        <th>ACTION</th>
        
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <?php while($df=$d->fetch_assoc()){ ?>

      <tr>
       
            <td><?php  echo $i++; ?></td>
        <td>All Goods</td>
        <td>All</td>
        
 <td>all</td>
         <td>
          
          <a href="?shop">
<button class="btn btn-success" ><i class="icon-edit icon-white"></i>  Update Shop Records</button>

</a>

          <a href="?warehouse" >
<button class="btn btn-primary"><i class="icon-edit icon-white"></i> Update Warehouse Records</button>

</a>

 




</td>

       
      
                                            
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                </table>
  
   
   
   <?php 
   if(isset($_GET['shop'])){
	   
	   ?>
        
                               
   <div class="row">
 
        <div class="col-sm-12">
 <iframe src="../stock/shop/index.php" allowFullScreen style="width: 100%;
			float:left;
			background: #FFF;
            border:none;
            height:500px;
            overflow:hidden;
			border-radius: 5px;
		
 "></iframe>
          </div>
          </div>
          <?php } ?>
          
          
          
          
          
          
          
          
          
          
          
          
           <?php 
   if(isset($_GET['warehouse'])){
	   
	   ?>
        
                               
   <div class="row">
 
        <div class="col-sm-12">
 <iframe src="../stock/warehouse/index.php" allowFullScreen style="width: 100%;
			float:left;
			background: #FFF;
            border:none;
            height:500px;
            overflow:hidden;
			border-radius: 5px;
		
 "></iframe>
          </div>
          </div>
          <?php } ?>
  
        
        
