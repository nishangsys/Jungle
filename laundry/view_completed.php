
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


 
  
?>
 <div class="row">
                    <div class="col-lg-12">
                        <div class="box">
                            <header>
                                <h5>Job History as at <?php echo date('d-m-Y'); ?> |</h5>
                                <div class="toolbar">
                                    <div class="btn-group">
                                        <a href="#sortableTable" data-toggle="collapse" class="btn btn-default btn-sm accordion-toggle minimize-box">
                                            <i class="icon-chevron-up"></i>
                                        </a>
                                    </div>
                                </div>
                            </header>
                            <div id="sortableTable" class="body collapse in">
                              
                          
                            <div class="table-responsive" style="margin-top:20px">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example" style="margin-top:20px">
                                
        </h3>
      
 <thead>
                                        <tr>
                                          <th>S/N</th>
                                          <th>Customer Name</th>
        <th>Job num</th>
         <th>Days</th>
        <th>Amt Paid</th>
         <th>balance</th>
          <th>Status</th>
        <th>State</th>
      
        <th>Status</th>
      
                                        </tr>
                                    </thead>
                                    <tbody>
  <?PHP
	
								$ab= mysql_query("select service_offered.name as name,SUM(daily.rec) as paid,daily.date as date, service_offered.code as code, SUM(daily.owed) as owed, service_offered.status as status,daily.cust_id as yourid,daily.id as id from daily,service_offered where service_offered.status='3' AND  daily.cust_id=service_offered.code  group by daily.cust_id order by daily.id DESC" ) or die (mysql_error());
								$i=1;
								while ($df= mysql_fetch_array ($ab) ){
							?>                                    
   
  

      <tr>
       
            <td><?php  echo $i++; ?></td>
         <td ><?php 	////////////////insert item
$a=$con->query("SELECT * FROM customers where id='".$df['code']."'") or die(mysqli_error($con));
	 while($b=$a->fetch_assoc()){
	echo  $names=$b['name'];
	 } ?></td>

        <td><?php echo $name=$df['code']; ?></td>
        <td><?php 
		   	 $df['yourid'];
	$rusn=$con->query("SELECT DATEDIFF(CURDATE(),STR_TO_DATE(date, '%d-%m-%Y')) AS DAYS
FROM daily where cust_id='".$df['yourid']."'  order by id asc limit 1 ") or die(mysqli_error($con));
while($rows=$rusn->fetch_assoc()){
	   echo $not=round($rows['DAYS']);
		 
	 
	
	 
}
	
			 $df['date']; ?> Days ago</td>
         <td><?php  
		
		  	 $df['yourid'];
	$rusn=$con->query("SELECT SUM(rec) AS DAYS,SUM(owed) as owed,id,SUM(discount) as disc
FROM daily where cust_id='".$df['yourid']."' and area='8'  group by cust_id") or die(mysqli_error($con));
while($rows=$rusn->fetch_assoc()){
	   echo $not=number_format($rows['DAYS']);
	   $oweds=$rows['owed'];
	   $id=$rows['id'];}
	   
	   ////////////////
	   
	   
	   
	   		  ?></td>
        <td><?php   
		 echo number_format($oweds);
		 ?></td>
         <td style="color:#00F; font-weight:bold"><?php 			$stat=$df['status'];
		  if($stat==2){
			 echo "Pending.....";
		 }
		 else if($stat==3) {
			 echo "Completed";
		 }
		 else {
			 echo "Delivered";
		 }
		 
		  ?></td>
        

        

        

<td><a href=javascript:popcontact('../laundry/uncompleted.php?xxx=<?php echo $df['id']; ?>&owed=<?php echo $oweds; ?>&code=<?php echo $df['code']; ?>') style="color:#fff; text-decoration:blink text-align:center; font-weight:bold;">  <button class="btn btn-danger">
<i class="icon-cross icon-white"></i>Not Completed
</button></a></td>

       

<td><a href=javascript:popcontact('../laundry/delivered.php?xxx=<?php echo $df['id']; ?>&owed=<?php echo $oweds; ?>&code=<?php echo $df['code']; ?>') style="color:#fff; text-decoration:blink text-align:center; font-weight:bold;">  <button class="btn btn-primary"><i class="icon-cross icon-white"></i> Delivered</button></a></td>

       
      
                                            
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                </table>
                                <table>
                                         
                            </div>
                        </div>
                        </div>
                        </div>
                        
   
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
