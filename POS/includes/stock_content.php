 <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="../assets/css/main.css" />
    <link rel="stylesheet" href="../assets/css/theme.css" />
    <link rel="stylesheet" href="../assets/css/MoneAdmin.css" />
    <link rel="stylesheet" href="../assets/plugins/Font-Awesome/css/font-awesome.css" />
    <!--END GLOBAL STYLES --> 

    <!-- PAGE LEVEL STYLES -->
    
 <link href="../assets/css/jquery-ui.css" rel="stylesheet" />
<link rel="stylesheet" href="../assets/plugins/uniform/themes/default/css/uniform.default.css" />
<link rel="stylesheet" href="../assets/plugins/inputlimiter/jquery.inputlimiter.1.0.css" />
<link rel="stylesheet" href="../assets/plugins/chosen/chosen.min.css" />
<link rel="stylesheet" href="../assets/plugins/colorpicker/css/colorpicker.css" />
<link rel="stylesheet" href="../assets/plugins/tagsinput/jquery.tagsinput.css" />
<link rel="stylesheet" href="../assets/plugins/daterangepicker/daterangepicker-bs3.css" />
<link rel="stylesheet" href="../assets/plugins/datepicker/css/datepicker.css" />
<link rel="stylesheet" href="../assets/plugins/timepicker/css/bootstrap-timepicker.min.css" />
<link rel="stylesheet" href="../assets/plugins/switch/static/stylesheets/bootstrap-switch.css" />
      <!--PAGE CONTENT -->
        <div id="content" >
             
            <div class="inner" style="min-height: 1200px;">
                <div class="row">
                    <div class="col-lg-9">
                  
                      
                    </div>
                </div>
                  <hr />
                 <!--BLOCK SECTION -->
                 <div class="row">
                    <div class="col-lg-12">
                    <h1>Nishang Clouds System <i class="icon-caret-right  " style="color:#F00"></i>  <i class="icon-caret-right  " style="color:#009"></i>  <span style="color:#f00"><?php echo $_GET['link']; ?>   <a href="?adding_goods&link=Adding Goods&add_good">
<button class="btn btn-success"><i class="icon-plus icon-white"></i> UPDATE STOCK</button></a></span> | 

<a href="?record_goods&link=Adding Goods&add_good">
<button class="btn btn-primary"><i class="icon-plus icon-white"></i> NEW STOCK</button></a></span> 



</h1>
                    
                    <?php
					if(isset($_GET['dashboard'])){
	include '../stock/reports.php';
	}
	if(isset($_GET['super_market'])){
	include '../stock/chose_branch.php';
	}
	if(isset($_GET['view_ststock'])){
	include '../stock/supermarket_stock.php';
	}
	if(isset($_GET['supply_shop'])){
	include '../stock/supply_shop.php';
	}
	if(isset($_GET['ware_house'])){
	include '../stock/ware_hose.php';
	}
	if(isset($_GET['receipts'])){
	include '../stock/receipts.php';
	}
	if(isset($_GET['clients'])){
	include '../stock/clients_menu.php';
	}
	if(isset($_GET['record_exp'])){
	include '../stock/our_exp.php';
	}
	if(isset($_GET['service_menu'])){
	include '../stock/add_servicemenu.php';
	}
	if(isset($_GET['finished'])){
	include '../stock/finished.php';
	}
	if(isset($_GET['our_reports'])){
	include '../stock/our_reports.php';
	}
	if(isset($_GET['our_appointments'])){
	include '../stock/our_appointments.php';
	}
	
	if(isset($_GET['multi_add'])){
	include '../stock/multi_add.php';
	}
	
	
	if(isset($_GET['staff_menu'])){
	include '../stock/register_staff.php';
	}
	if(isset($_GET['add_types'])){
	include '../stock/add_types.php';
	}
	if(isset($_GET['add_otherservices'])){
	include '../stock/add_otherservices.php';
	}
	
	
	if(isset($_GET['adding_services'])){
	include '../stock/adding_services.php';
	}
	if(isset($_GET['add_services'])){
	include '../stock/add_services.php';
	}
	if(isset($_GET['servicing_client'])){
	include '../stock/servicing_client.php';
	}
	
		if(isset($_GET['go_ahead'])){
	include '../stock/serve.php';
	}			
		
		if(isset($_GET['add_goods'])){
	include '../stock/categories.php';
	}	
	
		if(isset($_GET['record_goods'])){
	include '../stock/chosing_categories.php';
	}	
	
	
		if(isset($_GET['recordin_goods'])){
	include '../stock/add_goods.php';
	}	
	
		
		if(isset($_GET['adding_goods'])){
	include '../stock/update_stocks.php';
	}		
		if(isset($_GET['supermkt_price'])){
	include '../stock/supermkt_price.php';
	}		
	
	if(isset($_GET['supermkt_barcode'])){
	include '../stock/supermkt_barcode.php';
	}	
		if(isset($_GET['validate'])){
	include '../stock/checkout.php';
	}		
		if(isset($_GET['daily_income'])){
	include '../stock/daily_reports.php';
	}
		if(isset($_GET['daily_exp'])){
	include '../stock/Daily Expenditure.php';
	}	
	if(isset($_GET['income_statement'])){
	include '../stock/income_state.php';
	}
	if(isset($_GET['most_profitable'])){
	include '../stock/most_profitable.php';
	}
	if(isset($_GET['best_sales'])){
	include '../stock/most_sales.php';
	}
	if(isset($_GET['debtors'])){
	include '../stock/debtors.php';
	}	
	if(isset($_GET['more'])){
	include '../stock/more.php';
	}	
	if(isset($_GET['paying_debts'])){
	include '../stock/paying_debts.php';
	}
	if(isset($_GET['add_class'])){
	include '../stock/spending_cats.php';
	}
	if(isset($_GET['record_expense'])){
	include '../stock/record_expense.php';
	}
	if(isset($_GET['chosing_date'])){
	include '../stock/recording_expense.php';
	
	}
	if(isset($_GET['recording_expense'])){
	include '../stock/recording_expense.php';
	
	}
	if(isset($_GET['appointments'])){
	include '../stock/chose.php';
	
	}
	if(isset($_GET['view_apps'])){
	include '../stock/all_appoints.php';
	
	}	
	if(isset($_GET['new_style'])){
	include '../stock/adding_services.php';
	
	}
	if(isset($_GET['recording_services'])){
	include '../stock/new_style.php';
	
	}
	
	if(isset($_GET['chose_clients'])){
	include '../stock/chose_clients.php';
	
	}
	if(isset($_GET['my_client'])){
	include '../stock/our_services12.php';
	
	}
	if(isset($_GET['chosing_style'])){
	include '../stock/chose_style.php';
	
	}
	if(isset($_GET['my_stylist'])){
	include '../stock/our_services.php';
	
	}
	if(isset($_GET['my_staff'])){
	include '../stock/hair_staff.php';
	
	}
	
	if(isset($_GET['all_staff'])){
	include '../stock/our_staff.php';
	
	}
	
	if(isset($_GET['define_price'])){
	include '../stock/define_price.php';
	
	}
	
	if(isset($_GET['chose_stylist'])){
	include '../stock/chose_stylists.php';
	
	}
	if(isset($_GET['plattnow'])){
	include '../stock/platting.php';
	
	}	
	
	if(isset($_GET['help'])){
	include '../stock/help.php';
	
	}
	
	if(isset($_GET['best_customers'])){
	include '../stock/best_customers.php';
	
	}	
	if(isset($_GET['view_more'])){
	include '../stock/view_more.php';
	
	}	
	
	if(isset($_GET['best_staff'])){
	include '../stock/best_staff.php';
	
	}	
	if(isset($_GET['see_more'])){
	include '../stock/see_more.php';
	
	}	
	if(isset($_GET['our_stocks'])){
	include '../stock/all_mystock.php';
	
	}	
	if(isset($_GET['sales_meter'])){
	include '../stock/sales_meter.php';
		}	
		if(isset($_GET['supply_meter'])){
	include '../stock/supply_meter.php';
		}
		if(isset($_GET['supermkt_meter'])){
	include '../stock/chose_branch12.php';
		}
		if(isset($_GET['supp_mater'])){
	include '../stock/super_meter.php';
		}
	
	if(isset($_GET['create_user'])){
	include '../stock/register.php';
		}
		
		if(isset($_GET['Accounts'])){
	include '../stock/other_users.php';
		}
		if(isset($_GET['update_name'])){
	include '../stock/update_name.php';
		}
	if(isset($_GET['my_license'])){
	include '../stock/license.php';
		}
	if(isset($_GET['gross'])){
	include '../stock/gross.php';
		}
					?>
                    
                    
                    
                    </div></div>
                           
                 </div>
                    
                
                    
                    
           
                    
                    
                   
        
        
           <!-- GLOBAL SCRIPTS -->
    <script src="../assets/plugins/jquery-2.0.3.min.js"></script>
     <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/plugins/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <!-- END GLOBAL SCRIPTS -->


      <!-- PAGE LEVEL SCRIPT-->
 <script src="../assets/js/jquery-ui.min.js"></script>
 <script src="../assets/plugins/uniform/jquery.uniform.min.js"></script>
<script src="../assets/plugins/inputlimiter/jquery.inputlimiter.1.3.1.min.js"></script>
<script src="../assets/plugins/chosen/chosen.jquery.min.js"></script>
<script src="../assets/plugins/colorpicker/js/bootstrap-colorpicker.js"></script>
<script src="../assets/plugins/tagsinput/jquery.tagsinput.min.js"></script>
<script src="../assets/plugins/validVal/js/jquery.validVal.min.js"></script>
<script src="../assets/plugins/daterangepicker/daterangepicker.js"></script>
<script src="../assets/plugins/daterangepicker/moment.min.js"></script>
<script src="../assets/plugins/datepicker/js/bootstrap-datepicker.js"></script>
<script src="../assets/plugins/timepicker/js/bootstrap-timepicker.min.js"></script>
<script src="../assets/plugins/switch/static/js/bootstrap-switch.min.js"></script>
<script src="../assets/plugins/jquery.dualListbox-1.3/jquery.dualListBox-1.3.min.js"></script>
<script src="../assets/plugins/autosize/jquery.autosize.min.js"></script>
<script src="../assets/plugins/jasny/js/bootstrap-inputmask.js"></script>
       <script src="../assets/js/formsInit.js"></script>
        <script>
            $(function () { formInit(); });
        </script>
        
     <!--END PAGE LEVEL SCRIPT-->
     

        
        <!--END PAGE CONTENT -->