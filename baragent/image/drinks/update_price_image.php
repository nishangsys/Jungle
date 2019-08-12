<?php 
include  '../includes/dbc.php';

 $area=$_POST['area'];	
			$result = $con->query("SELECT * FROM `sectors`
 where area='$area' ") or die(mysqli_error($con));
				while($bu=$result->fetch_assoc()){
				$sectors=$bu['name'];
				}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Receipt</title>
<link href="style.css" type="text/css" rel="stylesheet" />

<style type="text/css" media="print">
body{
  font-family:Arial Black;
  font-size: 24px;

}
  @page { size: portrait; }
  table{
	  border-collapse:collapse;
	   border:1px solid#000;
  }
  tr,td{
	  border:1px solid#000;
	  line-height:2;
  }
  }
</style>



</head>

<!---
<input type="button" value="Print Ticket"
onClick="window.print()"/>
------>
<body onload="window.print();">



  <h3 style="text-align:center"><?php echo $sectors;  ?> Stock</h3>         
                   
              <table class="table table-bordered">
              
              <?php 
			$year=date('d-m-Y');
			  $d=$con->query("SELECT * from finals where area='$area' order by name") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                            <th>#</th>
                      
        <th>Product</th>
              
 <th>Price</th> 
  <th>TYPE</th>
           
                               </tr>
                                    </thead>
                                    <tbody>
                                       <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
       
           <td><?php  echo $i++; ?></td>
                                            <td><?php  echo $bu['name']; ?></td>
                                        
                                          
											 <td><?php  echo number_format($bu['sp']); ?></td>
											  <td><?php  echo $bu['disc']; ?></td>
                                                  
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                    </table>
      
                   
                   
                   


</page>

   <?php ?>
</body>
</html>




