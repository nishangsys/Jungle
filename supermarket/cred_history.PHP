<?php
include '../dbc.php';

?>
       <link rel="../stylesheet" type="text/css" href="css/DT_bootstrap.css">
		
      

<script src="../modal/js1/jquery1.js" type="text/javascript"></script>
<script src="../modal/js1/bootstrap1.js" type="text/javascript"></script>



<script src="../js/jquery.js" type="text/javascript"></script>
<script src="../js/bootstrap.js" type="text/javascript"></script>

<script type="text/javascript" charset="utf-8" language="javascript" src="../js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf-8" language="javascript" src="../js/DT_bootstrap.js"></script>

<body>
<div class="as_wrapper">

                        <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                           
                            <thead>
                                <tr>
                                 <th style="text-align:center;" >S/N</th>
                                    <th style="text-align:center;" >Creditors Name</th>
                                    <th style="text-align:center;">Tel</th>
                                    <th style="text-align:center;">Amount Owed</th>
                  
									<th style="text-align:center;">Action</th>
                                </tr>
                            </thead>
                            <tbody>
 
                                     <?php
	  $do12=$con->query("SELECT * from creditors  ") or die(mysqli_error($con));
	  $i=1;
    while($row=$do12->fetch_assoc()){ ?>
      <tr>
             
        <td><?php  echo $i++; ?></td>
      <td style="text-align:center; word-break:break-all; width:470px;"> <?php echo $row ['name']; ?></td>
								<td style="text-align:center; word-break:break-all; width:200px;"> <?php echo $row ['tel']; ?></td>
								<td style="text-align:center; word-break:break-all; width:200px;"> <?php echo $row ['owed']; ?></td><td style="text-align:center; word-break:break-all; width:150px;">   <a href="?pay_history= <?php echo $row ['name']; ?>&debt=<?php echo $row ['owed']; ?>&branch=<?php echo $branch; ?>&date=<?php echo $_GET['date']; ?>&month=<?php echo $_GET['month']; ?>&year=<?php echo $_GET['year']; ?>&link=<?php echo $row['name']; ?> Debts History" style="color:#fff; text-decoration:blink">        											
     <button class="btn btn-success"><i class="icon-plus icon-white"></i> View History</button>

</a></td>
         
       
      </tr>
      
    <?php } ?>
    </tbody>
    
  </table>  