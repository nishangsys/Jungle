<?PHP


session_start();

if(!isset($_SESSION['user_name'])){
echo '<meta http-equiv="Refresh" content="1; url=login.php">';

}

else {
	@session_start();
	
	if(($_SESSION['banned'])!='20'){
		echo "<script>alert('Sorry.Cannot View Page')</script>";
		
		
			
	}
	else {
		
?>
<!DOCTYPE html>
<html>
	
<head>
	<title>NISHANG SOFTWARES PRODUCTS</title>
		<meta charset="utf-8">
	
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,300,600,700' rel='stylesheet' type='text/css'>
        <link href="../style.css" rel="stylesheet" type="text/css" />
       

        
		<!--//webfonts-->
</head>
<script type="text/javascript" src="../calendar.js"></script>
<script type="text/javascript">
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
</script>

   <script language="JavaScript" src="../js/pop-up.js"></script>

<body>


<?php include 'adminhead.php'; ?>

	<div class="contain">
   <div class="subcontain">
     <div class="subcontain">
       <?php include 'adminsidebar.php'; ?>
       <div class="right">
         <div class="calender">
           <script type="text/javascript">
            calendar();
        </script>
         </div>
         
         
                <div class="calender" style="margin-top:330px; height:auto; overflow:hidden; padding-bottom:20px">
         
         <H1 style="background:#333; color:#FF0">This Month's Statistics</H1>
         <div style="height:20px;  font-weight:bold; float:left; width:220px">Total N<sup>o</sup> Registered so Far :</div>
         
         <div style="height:20px;  font-weight:bold; float:left; width:50px; margin-left:30px"><?php total_clients() ;?></div>
         
         <div style="height:20px;  font-weight:bold; float:left; width:210px; margin-top:20px">Number of Cameroonians :</div>
         
         <div style="height:20px;  font-weight:bold; float:left; width:50px; margin-left:30px; margin-top:20px"><?php national() ;?></div>
         
         <div style="height:20px;  font-weight:bold; float:left; width:210px; margin-top:20px">Number of  Foreigners :</div>
         
         <div style="height:20px;  font-weight:bold; float:left; width:50px; margin-left:30px; margin-top:20px"><?php foreign() ;?></div>
         
         
         
         
         
         </div>
         
         
         <div class="calender" style="margin-top:500px; height:auto; overflow:hidden; padding-bottom:20px">
         
         <H1 style="background:#333; color:#FF0"><?php echo date('Y'); ?> Statistics</H1>
         <div style="height:20px;  font-weight:bold; float:left; width:220px">Total N<sup>o</sup> Registered so Far :</div>
         
         <div style="height:20px;  font-weight:bold; float:left; width:50px; margin-left:30px"><?php allnationas() ;?></div>
         
         <div style="height:20px;  font-weight:bold; float:left; width:210px; margin-top:20px">Number of Cameroonians :</div>
         
         <div style="height:20px;  font-weight:bold; float:left; width:50px; margin-left:30px; margin-top:20px"><?php allnational() ;?></div>
         
         <div style="height:20px;  font-weight:bold; float:left; width:210px; margin-top:20px">Number of  Foreigners :</div>
         
         <div style="height:20px;  font-weight:bold; float:left; width:50px; margin-left:30px; margin-top:20px"><?php allforeign() ;?></div>
         
         
         
         
         
         </div>
         <?php
		 if(isset($_GET['functions'])){
		include '../functions/functions.php';
	}
	////////////////////////////////////////////////header elements*****************************************/
 
	
	if(isset($_GET['customers'])){
		include '../reception/all_cust.php';
	}
	if(isset($_GET['debtors'])){
		include 'all_debtors.php';
	}
	//receipt 
	if(isset($_GET['allrec'])){
		include 'all_receipt.php';
	}
	//stats zone
	if(isset($_GET['stats'])){
		include 'statsa.php';
	}
	if(isset($_GET['2'])){
		include 'page2.php';
	}
	if(isset($_GET['3'])){
		include 'page3.php';
	}
	
	if(isset($_GET['pay_back'])){
		include 'pay_back.php';
	}
	/************************************************ende head*********************************************/
	/************************************************ende head*********************************************/
	if(isset($_GET['allrooms'])){
		include '../reception/rooms.php';
	}
	//occupied rooms
	if(isset($_GET['occupied'])){
		include '../reception/all_occpied.php';
	}
	//unoccupied rooms
	if(isset($_GET['vacated'])){
		include '../reception/all_unoccpied.php';
	}

	if(isset($_GET['reserved'])){
		include '../reception/all_reserved.php';
	}
	//daily records
	if(isset($_GET['today'])){
		include 'daily.php';
	}
	
	if(isset($_GET['hourly'])){
		include 'new_hourly.php';
	}
	//all inquires
	
	//all visitots log
		if(isset($_GET['all_inquiries'])){
		include '../reception/all_inquiries.php';
	}
	if(isset($_GET['room_change'])){
		include '../reception/change_room.php';
	}
	//check out board for clients
	if(isset($_GET['checkout'])){
		include 'checkout_list.php';
	}
	///////////////////////////////////////////Add reservations
	
	//Reservations made
	
	if(isset($_GET['reservations'])){
		include 'res_client.php';
	}
	if(isset($_GET['allow'])){
		include 'allowhim.php';
	}
	
	if(isset($_GET['allreserves'])){
		include 'allreserves.php';
	}
	if(isset($_GET['see_allreserves'])){
		include 'see_allreserves.php';
	}
	
	
	//make reservations and reserve rooms
	
	if(isset($_GET['res'])){
		include 'reserveroom.php';
	}
	
	
	
	if(isset($_GET['room_change'])){
		include 'change_room.php';
	}
	if(isset($_GET['changes'])){
		include 'changing_room.php';
	}
	
	//cancel a reserveatnaoi
	if(isset($_GET['cancelre'])){
		include 'resereroom.php';
	}
	//change reserved room
	if(isset($_GET['roomchange'])){
		include 'resereroom.php';
	}
	//change reserved room
	if(isset($_GET['datechange'])){
		include 'datechange.php';
	}
	if(isset($_GET['changedate'])){
		include 'change_date.php';
	}
	if(isset($_GET['enter'])){
		//include 'change_date.php';
		 echo "<script>alert('Only Reception can perform this')</script>";

	}
	//actual change page
	if(isset($_GET['change'])){
		include 'roomchange.php';
	}
	//report about a room either occupied or resrved
	if(isset($_GET['report'])){
		include '../404.php';
	}
	
	
	
	//RESERVATIONS CONFIRMATION AND CANCELLATION 
	if(isset($_GET['enter'])){
		include 'enterroom.php';
	}
	if(isset($_GET['cancel'])){
		include 'cancelres.php';
	}

	
	//adding rooms panel
	if(isset($_GET['addroom'])){
		include 'addingrooms.php';
	}
	
	if(isset($_GET['discount'])){
		include 'discountgrooms.php';
	}
	//adding category panel
	if(isset($_GET['addcate'])){
		include 'addingcate.php';
	}
	if(isset($_GET['seeee'])){
		include 'balasheet.php';
	} 
	//add uers
	if(isset($_GET['new_account'])){
		include 'register.php';
	} 
	//update name
	if(isset($_GET['update_name'])){
		include 'update_name.php';
	}
	//spend listis
	
	//update name
	if(isset($_GET['spend2'])){
		include 'spend2.php';
	}
	
	
		if(isset($_POST['lookfor'])){
		include 'search.php';
	} 
	
	if(isset($_POST['find'])){
		include 'search12.php';
	}
	
	if(isset($_GET['old'])){
		include 'olddebts.php';
	}
	
	if(isset($_POST['seen'])){
		include 'adminpage.php?seeee';
	}  
	  
	if(isset($_GET['ban'])){
		include 'ban.php';
	}
	
	if(isset($_GET['proandlost'])){
		include 'profitandlost.php';
	}  
	
	if(isset($_GET['updates'])){
		include 'updates.php';
	}  
	
	if(isset($_GET['register'])){
		include 'courseregister.php';
	}   
	if(isset($_GET['matricule'])){
		include 'matric.php';
	}
	
	//all deletes
	if(isset($_GET['all_deletes'])){
		include '../admin/all_del.php';
	}
	//all deletes
	if(isset($_GET['client_records'])){
		include '../reception/todays_rec.php';
	}
	
	if(isset($_GET['thismonth_records'])){
		include '../reception/thismonth_rec.php';
	}
	  
	 
	   if(isset($_GET['thisyear_records'])){
		include '../reception/this_year.php';
	} 
	
	  if(isset($_GET['thisname_records'])){
		include '../reception/this_name.php';
	} 
	
	
	  if(isset($_GET['bstock'])){
		  include 'all_stocks.php';
	   }
	    if(isset($_GET['restaustock'])){
		  include 'res_stocks.php';
	   }
	
	   //////////////////////chat 
	if(isset($_GET['chat'])){
		include 'chatwith.php';
	} 
	
	if(isset($_GET['changepwd'])){
		include 'changepassword.php';
	}   
 //////////////////////chat 
	if(isset($_GET['addblock'])){
		include 'addingblock.php';
	}  
	if(isset($_GET['all_paybacks'])){
		include 'all_paybacks.php';
	}
	/////////////////over time
	
	if(isset($_GET['overtime'])){
		include 'setover_time.php';
	}   
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	if(isset($_GET['new_hallrental'])){
		include '../reception/new_hallrental.php';
	}
	if(isset($_GET['all_hallrental'])){
		include '../reception/all_hallrental.php';
	}
	
	if(isset($_GET['receive_now'])){
		include '../reception/pay_forhall.php';
	}
	if(isset($_GET['all_hallreceipts'])){
		include '../reception/all_hallreceipts.php';
	}
	
	if(isset($_GET['hall_dailyrec'])){
		include '../reception/hall_dailyrec.php';
	}
	if(isset($_GET['hall_monthlyrec'])){
		include '../reception/hall_monthlyrec.php';
	}
	if(isset($_GET['update_hallpyments'])){
		include '../reception/update_hallpyments.php';
	}
	if(isset($_GET['search_hallondate'])){
		include '../reception/search_hallondate.php';
	}
	if(isset($_GET['see_allhallres'])){
		include '../reception/see_allhallres.php';
	}
	if(isset($_GET['change_halldate'])){
		include '../reception/change_halldate.php';
	}
	
	if(isset($_GET['cancel_hallreserve'])){
		include '../reception/cancel_hallreserve.php';
	}
	   
	?>
      
       </div>
     </div>
   </div>
	<div class="clear"></div>
    
		
	<div class="foot"><br>© Copy Rights <?php echo date('Y'); ?>. All rights reserved by the Programmer<br>
Licensed by PEFSCOM<br>
For any help contact us at 679 135 426 or 671 984 477 </div>		
		 		
</body>
</html>

<?php } } ?>