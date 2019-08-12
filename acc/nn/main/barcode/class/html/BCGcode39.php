<?php include  'dbc.php'; 
echo $mat=$_GET['id'];



$cust="SELECT * from member,members_times where members_times.matricule='$mat' and member.matric=members_times.matricule and members_times.owed>0 order by members_times.name ";
	$run=mysql_query($cust) or die (mysql_error());
	while($ro=mysql_fetch_assoc($run)){

?>
<div style="width:400px; height:300px; float:left; border:1px solid#000">

<div style="width:200px; height:200px; border:1px solid#000">
<img



</div>


</div>
<?php } ?>
<?php
define('IN_CB', true);
include('include/header.php');

registerImageKey('checksum', $checksum);
registerImageKey('code', 'BCGcode39');

//$characters = array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '-', '.', '&nbsp;', '$', '/', '+', '%');
?>
</div>

</div>


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
                 
            </div>
        </form>
