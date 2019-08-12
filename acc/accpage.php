

<?PHP



@session_start();
include '../includes/dbc.php';

 $query =$con->query("SELECT * FROM users WHERE id=".$_SESSION['userSession']) or die(mysqli_error($con));

 while($userRow=$query->fetch_array()){
 
 $email=$userRow['user_email'];
echo $level=$userRow['banned'];
 
 }

 if(empty($level)){
echo '<meta http-equiv="Refresh" content="1; url=../login.php">';

}

 
if($level=='20' or $level=='12' ){
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
       
<script type="text/javascript">
function doCalc(form) {
form.left.value = ((parseInt(form.qty.value)-parseInt(form.bought.value)));

  form.total.value = ((parseInt(form.priz.value)*parseInt(form.bought.value)));

}
</script>
        
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


<body>


<?php include 'restauhead.php'; ?>

	<div class="contain" >
   <div class="subcontain">
   <?php include 'restaubar.php'; ?>
       <div class="right">
       <?php
	   if(isset($_GET['barstock'])){
		  include 'barstocks.php';
	   }
	   
	    if(isset($_GET['addbarcat'])){
		  include 'barcat.php';
	   }
	   
	   if(isset($_GET['bstock'])){
		  include 'all_stocks.php';
	   }
	   //serach products
	   if(isset($_POST['search'])){
		  include 'searchproducts.php';
	   }
	   //update the price of bar products
	   
	     if(isset($_GET['changeb_price'])){
		  include 'update_barprice.php';
	   }
	   
	    if(isset($_GET['Update_stocks'])){
		  include 'update_barstock.php';
	   }
	   //barcodes
	   if(isset($_GET['change_bc'])){
		  include 'change_bc.php';
	   }
	   
	   
	    if(isset($_GET['resstock'])){
		  include 'resstocks.php';
	   }
	   
	    if(isset($_GET['rsetaucart'])){
		  include 'rsetaucart.php';
	   }
	   //all res stocks
	    if(isset($_GET['all_stock'])){
		  include 'res_stocks.php';
	   }
	   
	    if(isset($_GET['updatefood_price'])){
		  include 'update_foodprice.php';
	   }
	   if(isset($_GET['change_rebc'])){
		  include 'new_bc.php';
	   }
	   //daily reports for restau
	   if(isset($_GET['daily_resto'])){
		  include '../restau/daily_resto.php';
	   }
	    //daily reports for restau
	   if(isset($_GET['resto_bal'])){
		  include '../restau/balansheet.php';
	   }
	   
	   //daily reports for bar
	   if(isset($_GET['daily_bar'])){
		  include '../bar/daily_bar.php';
	   }
	    //daily reports for bar
	   if(isset($_GET['bar_bal'])){
		  include '../bar/barbalansheet.php';
	   }
	   
	    //spend
	   if(isset($_GET['barspend'])){
		  include '../chiefs/barspend.php';
	   }
	   if(isset($_GET['restauspend'])){
		  include '../chiefs/restauspend.php';
	   }
	   if(isset($_GET['otherspend'])){
		  include 'others.php';
	   }
	   /////////////////////////////////add rooms
	   
	   //adding rooms panel
	if(isset($_GET['addroom'])){
		include '../admin/addingrooms.php';
	}
	//adding category panel
	if(isset($_GET['addcate'])){
		include '../admin/addingcate.php';
	}
	////////////////////////////records
	//daily records
	if(isset($_GET['today'])){
		include '../admin/daily.php';
	}
	if(isset($_GET['mine'])){
		include '../Acc/mine.php';
	}
	if(isset($_GET['mine1'])){
		include '../Acc/mine1.php';
	}
	if(isset($_GET['editt'])){
		include 'editt.php';
	}
	if(isset($_GET['editt1'])){
		include 'editt1.php';
	}
	if(isset($_GET['seeee'])){
		include '../admin/balasheet.php';
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
	
	   //////////////////////chat 
	if(isset($_GET['chat'])){
		include 'chatwith.php';
	}
	if(isset($_GET['specat'])){
		include 'specat.php';
	}
	if(isset($_GET['monthlyexp'])){
		include 'monthlyexp.php';
	}
	
	if(isset($_GET['yearlyspend'])){
		include 'yearlyspend.php';
	}
	  
	  if(isset($_GET['yearlydetails'])){
		include 'monthlyexcel.php';
	}
	if(isset($_GET['profit'])){
		  include '../chiefs/profit.php';
	   }
	 if(isset($_GET['pprofit'])){
		  include '../chiefs/pprofit.php';
	   } 
	   
	     if(isset($_GET['edit_exp'])){
		  include 'edit_exp.php';
	   }
	   
	     if(isset($_GET['edit_rec'])){
		  include 'edit_rec.php';
	   }
	   
	     if(isset($_GET['upload_food'])){
		  include 'foodl_upload.php';
	   }
	     if(isset($_GET['download_food'])){
		  include 'download_food.php';
	   }
	    if(isset($_GET['excel_download'])){
		  include 'download_page.php';
	   }
	   
	    if(isset($_GET['bdrinks'])){
		  include '../acc/bdrinks.php';
	   }
	    if(isset($_GET['saving_exp'])){
		  include '../acc/next.php';
	   }
	    if(isset($_GET['saving_othexp'])){
		  include '../acc/othnext.php';
	   }
	   
	    if(isset($_GET['saving'])){
		  include '../acc/saving_exp.php';
	   }
	   if(isset($_GET['othsaving'])){
		  include '../acc/othsaving_exp.php';
	   }
	    if(isset($_GET['daily'])){
		  include '../acc/daily_anal.php';
	   }
	   if(isset($_GET['monthly'])){
		  include '../acc/monthly_anal.php';
	   }
	   if(isset($_GET['yearly'])){
		  include '../acc/yearly_anal.php';
	   }
	   ?>
    
   </div></div>
  </div>
   
	<div class="clear"></div>
		
	<div class="foot"><br>© Copy Rights <?php echo date('Y'); ?>. All rights reserved by the Programmer<br>
Licensed by PEFSCOM<br>
For any help contact us at 679 135 426 or 671 984 477 </div>		
		 		
</body>
</html>

<?php }?>