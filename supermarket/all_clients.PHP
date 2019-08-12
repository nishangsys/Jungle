<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">
     
        <link rel="stylesheet" type="text/css" href="css/DT_bootstrap.css">
		
        <link href="modal/css1/bootstrap1.css" rel="stylesheet" type="text/css" media="screen">
     
</head>
<script src="modal/js1/jquery1.js" type="text/javascript"></script>
<script src="modal/js1/bootstrap1.js" type="text/javascript"></script>



<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/bootstrap.js" type="text/javascript"></script>

<script type="text/javascript" charset="utf-8" language="javascript" src="js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf-8" language="javascript" src="js/DT_bootstrap.js"></script>

	
  
   <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                            
                            <thead>
                                <tr>
                             <th style="text-align:center;">S/N</th>

                              <th style="text-align:center;">Customer's Name</th>
                          <th style="text-align:center;">Qty Receive</th>
                                    <th style="text-align:center;">Total Revenue</th>
                                          <th style="text-align:center;">Total Owed</th>                                    <th style="text-align:center;">Recieve on</th>
                                

                                </tr>
                            </thead>
                            <tbody>
								<?php
								$date=date('d-m-Y');
								$supp;
								
								$result= mysql_query("select SUM(daily.owed),daily.date,SUM(daily.rec),SUM(daily.price*daily.qty),SUM(daily.qty),SUM(daily.owed),names.name,SUM(daily.rec) from names,daily where names.id=daily.cust_id and daily.date='$date' GROUP BY daily.cust_id order by daily.id ASC" ) or die (mysql_error());
								$num=1;
								while ($row= mysql_fetch_array ($result) ){
								$id=$row['id'];
								?>
								<tr>
                            <td style="text-align:center; word-break:break-all; width:20px;"> <?php echo $num++; ?></td>

						
								<td style="text-align:center; word-break:break-all; width:450px;"> <?php echo $row ['name']; ?></td>
								<td style="text-align:center; word-break:break-all; width:200px;"> <?php echo $row ['SUM(daily.qty)']; ?></td>
                                	<td style="text-align:center; word-break:break-all; width:200px;"> <?php echo $row ['SUM(daily.rec)']; ?></td>
                                    
                               <td style="text-align:center; word-break:break-all; width:200px;"> <?php echo $row ['SUM(daily.owed)']; ?></td>
								
                                <td style="text-align:center; word-break:break-all; width:200px;"> <?php echo $row ['date']; ?></td>
								
								
                             
					</tr>		
                           
								
								<?php } ?>
                              <tbody>
                        		  
                                
                            <?PHP
	
								$ab= mysql_query("select * from names" ) or die (mysql_error());
								$num=1;
								while ($row= mysql_fetch_array ($ab) ){
							?>    
                                <tr style="background:#3CC">
                            <td style="text-align:center; word-break:break-all; width:20px;"> </td>

						
								<td style="text-align:center; word-break:break-all; width:450px;color:#f00; font-weight:bold"> TOTAL</td>
								<
								<td style="text-align:center; word-break:break-all; width:200px;"> <?php echo $row ['SUM(daily.qty)']; ?></td>
                                	<td style="text-align:center; word-break:break-all; width:200px;"> <?php echo $row ['SUM(daily.rec)']; ?></td>
                                    
                               <td style="text-align:center; word-break:break-all; width:200px;"> <?php echo $row ['SUM(daily.owed)']; ?></td>
								
                                <td style="text-align:center; word-break:break-all; width:200px;"> <?php echo $row ['date']; ?></td>
								
                               <?php } ?>
                            </tbody>
                        </table>


          
        </div>
        </div>
        </div>
    </div>
