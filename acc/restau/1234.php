<?php include  'dbc.php'; 

$cus1="SELECT * from client ";
$run1=mysql_query($cus1) or die (mysql_error());
 while ($rows=mysql_fetch_assoc($run1)){
	 $clients=$rows['name'];
	 $AD=$rows['address'];
	 $TEL=$rows['as1'];
	 $vil=$rows['as2'];
 }


$cust="SELECT * from member,members_times where member.matric=members_times.matricule  order by members_times.name ";
	$run=mysql_query($cust) or die (mysql_error());
	while($ro=mysql_fetch_assoc($run)){
		//this is the variable used in the header to geneerate barcodes
			 $mat=$ro['matric'];
			 $name=$ro['name'];

?>

<!-----------start of main box---------------->
<div style="width:430px; height:250px; background:#eee; float:left; border:1px solid#000">



<div style="width:150px; height:160px; float:left; background:#fff"><!-----start box that conatins image and barcode---->




<div style="width:150px; height:150px; float:left; background:#fff"><!-------------start Image box-------->
<img src="../../reception/album/<?php echo $ro['photo']; ?>" style="width:149px; height:150px; " />

</div><!-------------End Image box-------->




<div style="width:130px; height:30px; float:left; margin-left:5px; margin-top:10px; background:#fff"><!--------start box that contains the barcode script-------->

<?php
define('IN_CB', true);
include('include/header.php');

registerImageKey('checksum', $checksum);
registerImageKey('code', 'BCGcode39');

//$characters = array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '-', '.', '&nbsp;', '$', '/', '+', '%');
?>





<?php
if (!defined('IN_CB')) { die('You are not allowed to access to this page.'); }
?>

                    <?php
                        $finalRequest = '';
                        foreach (getImageKeys() as $key => $value) {
                            $finalRequest .= '&' . $key . '=' . urlencode($value);
                        }
                        if (strlen($finalRequest) > 0) {
                            $finalRequest[0] = '?';
                        }
                    ?>
                    <div id="imageOutput">
						<?php
						$N=$ncode;
						for($i=0; $i < $N; $i++)
						{
						?>
                        <?php if ($imageKeys['text'] !== '') { ?><img style="margin: 0 20px 20px 0;" src="image.php<?php echo $finalRequest; ?>" alt="Barcode Image" /><?php }
                        else { ?>Fill the form to generate a barcode.<?php } }?>
                        </div><!------------end of barcode box---------------------->
                        
                       
                        
                        </div><!----end of image and barcode box --->
                        

                        
                         <div style="width:430px; height:auto; color:#fff; font-family:Arial, Helvetica, sans-serif; font-weight:bold; text-transform:uppercase;
                          text-align:center; font-size:20px; padding:15px 0px; position:relative;   background:#088389"><!-------------start name box-------->

<?php  echo $ro['name']; ?>

</div><!-------------End name box-------->

















                        
                 
            </div>
            
         
            
                                    <div style="width:305px; height:220px;  float:right;"><!---------xtart the right main box-->
                                    
                                    
                                    <div style="width:305px; height:80px; background:url(include/fish.png); ">
                                    <h1 style="text-align:center; color:#333;margin-top:0PX; font-size:18px"><?php echo $clients; ?></h1>
                                    
                                                 <h1 style="text-align:center; margin-top:-10PX; color:#333; font-size:16px"><?php echo $TEL; ?></h1>
                                     <h1 style="text-align:center; margin-top:-10PX; color:#333; font-size:16px">MEMBERSHIP CARD</h1>

                                    
                                    
                                    
                                    </div>
                                    
                                    
                                    <!-----------empty box----------->
                                    
                                    </div><!---------end the right main box-->

</div>
            
            <?php } ?>
            
            <!---end main box------------>
            <br />
            
           
>