<?php include("config/db_config.php");?>
<?php 
$page = basename($_SERVER['PHP_SELF']);
 error_reporting(E_ALL); ini_set('display_errors', 1); 
$msg = '';
if(!isset($_SESSION['user_id']) && $_SESSION['user_id'] == '') {header("location:index.php");}
if(isset($_POST) && !empty($_POST)){
	$user_id = $_SESSION['user_id'];
	$booking_table_id = $_POST['booking_table_id'];
	$category_id = $_POST['category_id'];
	$order_sql = "INSERT order_mast SET table_id = '$booking_table_id' ,
										category_id = '$category_id',
										qty = '',
										price = '',
										added_by = '$user_id'";
	mysql_query($order_sql);
	$order_id = mysql_insert_id();
	$qty = $_POST['qty'];
	$item = $_POST['item_id'];
	$item_price = $_POST['item_price'];
	$tot_qty = 0;
	$tot_price = 0;
	
	foreach($qty as $k => $q){
		
		if($q>0){
			$tot_qty = $tot_qty + $q;
			$tot_price = $tot_price + ($item_price[$k]*$q);
			$item_id = $item[$k];
			$order_det_sql = "INSERT order_detail SET order_id = '$order_id', item_id = '$item_id', qty = '$q', price='$item_price[$k]'";
	mysql_query($order_det_sql);
		}
		
		
	}
 $update_sql = "UPDATE order_mast set qty = '$tot_qty', price='$tot_price' WHERE order_id = '$order_id'";
		mysql_query($update_sql);
		$del_sql = "DELETE FROM cart WHERE user_id = '$user_id'";
		mysql_query($del_sql);
		$msg = 'Order Saved';	
}
?>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Table booking</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	

  
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- Google Webfonts -->
	<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Simple Line Icons-->
	<link rel="stylesheet" href="css/simple-line-icons.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Salvattore -->
	<link rel="stylesheet" href="css/salvattore.css">
	<!-- Theme Style -->
	<link rel="stylesheet" href="css/style.css">
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		
	<div id="fh5co-offcanvass">
		<ul>
			<li class="active"><a href="index.php" data-nav-section="home">Home</a></li>
			<li><a href="logout.php" data-nav-section="home">Logout</a></li>
			<!--<li><a href="#" data-nav-section="features">Features</a></li>
			<li><a href="#" data-nav-section="design">Design</a></li>
			<li><a href="#" data-nav-section="testimonies">Testimonies</a></li>
			<li><a href="#" data-nav-section="products">Products</a></li>
			<li><a href="#" data-nav-section="benefits">Benefits</a></li>
			<li><a href="#" data-nav-section="pricing">Pricing</a></li>
			<li><a href="#" data-nav-section="faqs">FAQs</a></li> -->
		</ul>
		<!--<h3 class="fh5co-lead">Connect with us</h3>
		<p class="fh5co-social-icons">
			<a href="#"><i class="icon-twitter"></i></a>
			<a href="#"><i class="icon-facebook"></i></a>
			<a href="#"><i class="icon-instagram"></i></a>
			<a href="#"><i class="icon-dribbble"></i></a>
			<a href="#"><i class="icon-youtube"></i></a>
		</p>-->
	</div>
	
	<!--<div id="fh5co-menu" class="navbar">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#fh5co-navbar" aria-expanded="false" aria-controls="navbar"><span>Menu</span> <i></i></a>
					<a href="index.php" class="navbar-brand"><span>Booking</span></a>
					
				</div>
			</div>
		</div>
	</div>-->

	<div id="fh5co-page">
		<div id="fh5co-wrap">
		
			<form name="order" action="" method="post">
			<div id="fh5co-main">
				<!--<div id="fh5co-clients">
					<div class="container">
						<div class="row text-center">
							<div class="col-md-3 col-sm-6 col-xs-6 to-animate" style="height:15px;">
								
							</div>
							<div class="col-md-3 col-sm-6 col-xs-6 to-animate">
								
							</div>
							<div class="col-md-3 col-sm-6 col-xs-6 to-animate">
								
							</div>
							<div class="col-md-3 col-sm-6 col-xs-6 to-animate">
								
							</div>
						</div>
					</div>
				</div>
				-->
				<div id="fh5co-features" data-section="features">


					<div class="container">
					<div class="row">
					<ul class="nav nav-pills navbar-inverse new-menu ">
					  <li role="presentation" ><a href="index.php">HOME</a></li>
					  <li role="presentation" class="active"><a href="booking.php">TABLES</a></li>
					  <li role="presentation"><a href="#" id="menu_menu" data-id="" class="booking-table">MENU</a></li>
					  <li role="presentation"><a href="#">ORDERS</a></li>
					  <li role="presentation"><a href="logout.php">LOG OUT</a></li>
					</ul>
					</div>
						<div class="row">
						<ol class="breadcrumb alert-danger" id="table-name" style="display:none;">
							<li class="active" id="acc-table-name">Data</li>
							<li class="pull-right"><button type="button" class="btn btn-success btn-xs command_btn">COMMAND</button></li>
						</ol>
					<ul class="nav nav-pills  new-menu " style="display:none;" id="cat_menu">
					  <li role="presentation"><a href="javascript:viod(0);">Total bill (<span id="tot_bill">0.00</span>)</a></li>
					  <li role="presentation"><a href="javascript:viod(0);" class="main_cat" data-id="d">Hot Drinks</a></li>
					  <li role="presentation"><a href="javascript:viod(0);" class="main_cat" data-id="c">Cold Drinks</a></li>
					  <li role="presentation"><a href="javascript:viod(0);" class="main_cat" data-id="f">Food</a></li>
					</ul>
							<div class="col-md-8 col-md-offset-2 fh5co-section-heading text-center">
							<?php if($msg != ''){ echo '<div class="alert alert-success alert-dismissible" id="myAlert"><a href="#" class="close">&times;</a><strong>Success!</strong> '.$msg.'</div>';	}?>
								<h2 class="fh5co-lead to-animate">Select Table</h2>
								
							</div>
							</div>
							<div class="row">
							<?php 
							$sql = "SELECT * FROM table_list WHERE status = '1'";
							$rs = mysql_query($sql);
							while($row = mysql_fetch_assoc($rs)) {
							?>
							<div class="col-md-3 col-sm-6 col-xs-6 col-xxs-12">
								<a href="#" class="fh5co-feature to-animate booking-table" data-id="<?=$row['id'];?>" id="t_<?=$row['id'];?>" data-name="<?=$row['name'];?>">
									<i class="icon-screen-tablet"></i> <?=$row['name'];?>
								</a>
							</div>
							<?php } ?>

							<div class="clearfix visible-sm-block"></div>

							<div class="fh5co-spacer fh5co-spacer-sm"></div>
</div>
							
			        	</div>
			       </div>
			       

			    </div>
				


			    <div class="category_list">
				
				<div class="container">
						<div class="row text-center">
						<div class="scrolling-div">
						<h1>Category</h1>
							<div class="col-sm-12">
							<div id="ajax_category">
							
								
								</div>
							 </div>
							</div>
						</div>
					</div>
				</div>
				<div class="item_list">
				
				<div class="container">
						<div class="row text-center">
						<div class="scrolling-div">
						<h1>Menu List</h1>
							<div class="col-sm-12"> 
							<div id="ajax_item">
							
								</div>
<div class="text-center"><button type="button" name="save" id="save" class="btn btn-success" style="margin-bottom:30px;">COMMAND</button></div>
							 </div>
							</div>
						</div>
					</div>
				</div>
				<div class="command_list">
				
				<div class="container">
						<div class="row text-center">
						<div class="scrolling-div">
						<h1>Command List</h1>
							<div class="col-sm-12"> 
							<div id="ajax_command_list">
							
								</div>
<div class="text-center"><button type="submit" name="save_command" id="save_command" class="btn btn-success" style="margin-bottom:30px;">Save</button></div>
							 </div>
							</div>
						</div>
					</div>
				</div>
<input type="hidden" name="booking_table_id" id="booking_table_id" value="">
<input type="hidden" name="category_id" id="category_id" value="">
<input type="hidden" name="old_price" id="old_price" value="0">
</form>
			   

			</div>
		</div>

		
	</div>


	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<!-- Owl Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- toCount -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>
<script>
$(document).ready(function(){
    $(".close").click(function(){
        $("#myAlert").alert("close");
    });
});
</script>
	<script type="text/javascript">
	$(document).ready(function(){
		$(document).on('click','.booking-table',function(){
			var id = $(this).data('id');
			if(id == '') {
				alert('Please select table');
				return false;
			}
			//alert(id);
			$('#booking_table_id').val(id);
			$('#menu_menu').attr('data-id',id);
			 $('.item_list').hide();
			 $('#table-name').fadeIn();
			 $('#acc-table-name').html($('#t_'+id).data('name')+' (table chose)');
			 $('#cat_menu').fadeIn();
			 $('.category_list').fadeIn();
			//alert($('#booking_table_id').val());
			$.ajax({
			  type: "POST",
			  url: 'ajax/get_category.php',
			  data: {'id':'d'},
			  success: function(data){
				  $('#ajax_category').html(data);
				  $('.category_list').fadeIn();
					$('.category_list .scrolling-div').css({'height':$(window).height()-80 +'px'});
					get_total_bill();
			  }
			});
			return false;
		});
		$(document).on('click','.main_cat',function(){
			var id = $(this).data('id');
			$('.item_list').fadeOut();
			$('.command_list').fadeOut();
			
			$.ajax({
			  type: "POST",
			  url: 'ajax/get_category.php',
			  data: {'id':id},
			  success: function(data){
				  $('#ajax_category').html(data);
				  $('.category_list').fadeIn();
					$('.category_list .scrolling-div').css({'height':$(window).height()-80 +'px'});
					get_total_bill();
			  }
			});
			
			return false;
		});
		$(document).on('click','.command_btn',function(){
			var id = $(this).data('id');
			//$('.item_list').fadeOut();
			$.ajax({
			  type: "POST",
			  url: 'ajax/get_command.php',
			  data: {'id':id},
			  success: function(data){
				  $('#ajax_command_list').html(data);
				  $('.command_list').fadeIn();
				  $('#ajax_item').html('');
				  $('.item_list').fadeOut();
				 $('.command_list .scrolling-div').css({'height':$(window).height()-80 +'px'});
				 $('#old_price').val(0);
				 //get_total_bill();
			  }
			});
			
			return false;
		});
		$(document).on('click','.category',function(){
			var cat_id = $(this).data('id');
			
			$('#category_id').val(cat_id);
			$.ajax({
			  type: "POST",
			  url: 'ajax/get_item.php',
			  data: {'id':cat_id},
			  success: function(data){
				  $('#ajax_item').html(data);
				  $('.item_list').fadeIn();
					$('.item_list .scrolling-div').css({'height':$(window).height()-80 +'px'});
					get_total_bill();
			  }
			});
			
			return false;
		});
		$(document).on('click','#save',function(){
			var cat_id = '';
			var qty = '';
			$('.item').each(function(){
				if($(this).parents('li').find('.qty').val()>0) {
					cat_id += $(this).data('id')+',';
					qty += $(this).parents('li').find('.qty').val()+',';
					$(this).parents('li').find('.qty').val('');
					$(this).parents('li').find('.qtyprice').text('0.00');
					$(this).click();
					$('.total_qty').text('0');
					$('.total_price').text('0.00');
				}
				
			});
			//alert(cat_id);
			$.ajax({
			  type: "POST",
			  url: 'ajax/cart_item.php',
			  data: {'id':cat_id.slice(0,-1),'qty':qty.slice(0,-1)},
			  success: function(data){
				 $('#old_price').val(data);
				 $('#tot_bill').text(data.toFixed(2));
			  }
			});
			
			return false;
		});
		$(document).on('click','.item',function(){
			$(this).parents('li').find('.col-sm-12').fadeToggle();
			return false;
		});
		$(document).on('click','.plus',function(){
			var th = $(this).parents('li');
			var v = th.find('.qty').val();
			v==""?0:v;
			v = Number(v)+1;
			var accprice = th.find('.accprice').text();
			th.find('.qtyprice').text((v*accprice).toFixed(2));
			th.find('.qty').val(v);
			getTotal();
			return false;
		});
		$(document).on('click','.minus',function(){
			var th = $(this).parents('li');
			var v = th.find('.qty').val();
			v = v>0?v-1:0;
			var accprice = th.find('.accprice').text();
			th.find('.qtyprice').text((v*accprice).toFixed(2));
			th.find('.qty').val(Number(v));
			getTotal();
			return false;
		});
		function getTotal(){
			var q = 0;
			var old_price = $('#old_price').val();
			$('.qty').each(function(){q += Number($(this).val());});
			$('.total_qty').text(q);
			var p = 0;
			$('.qtyprice').each(function(){p += Number($(this).text());});
			$('.total_price').text(p.toFixed(2));
			p = p + Number(old_price);
			$('#tot_bill').text(p.toFixed(2));
		}
		function get_total_bill(){
			$.ajax({
			  type: "POST",
			  url: 'ajax/cart_item.php',
			  
			  success: function(data){
				 $('#old_price').val(data);
				 $('#tot_bill').text(data);
			  }
			});
		}
	});
	</script>

	
	</body>
</html>
