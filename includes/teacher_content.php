
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
                    <h3 style="margin-top:-30px">Action <i class="icon-caret-right  " style="color:#F00"></i>  <i class="icon-caret-right  " style="color:#009"></i>  <span style="color:#f00"><?php echo $_GET['link']; ?>   
<a href="?ware_house&link=Warehouse%20Stock">
<button class="btn btn-primary"><i class="icon-plus icon-white"></i> NEW STOCK</button></a></span> 



</h3>
                    
                    <?php
					if(isset($_GET['dashboard'])){
	include '../content/reports.php';
	}
	if(isset($_GET['add_clients'])){
	include '../content/add_clients.php';
	}
	
	if(isset($_GET['add_tbls'])){
	include '../content/add_tbls.php';
	}
	if(isset($_GET['receipts'])){
	include '../content/receipts.php';
	}
	if(isset($_GET['clients'])){
	include '../content/clients_menu.php';
	}
	if(isset($_GET['record_exp'])){
	include '../content/our_exp.php';
	}
	if(isset($_GET['service_menu'])){
	include '../content/add_servicemenu.php';
	}
	
	if(isset($_GET['our_reports'])){
	include '../content/our_reports.php';
	}
	if(isset($_GET['our_appointments'])){
	include '../content/our_appointments.php';
	}
	
	if(isset($_GET['multi_add'])){
	include '../content/multi_add.php';
	}
	
	
	if(isset($_GET['staff_menu'])){
	include '../content/register_staff.php';
	}
	if(isset($_GET['add_types'])){
	include '../content/add_types.php';
	}
	if(isset($_GET['add_otherservices'])){
	include '../content/add_otherservices.php';
	}
	
	
	if(isset($_GET['adding_services'])){
	include '../content/adding_services.php';
	}
	if(isset($_GET['add_services'])){
	include '../content/add_services.php';
	}
	if(isset($_GET['servicing_client'])){
	include '../content/servicing_client.php';
	}
	
		if(isset($_GET['go_ahead'])){
	include '../content/serve.php';
	}			
		
		if(isset($_GET['add_goods'])){
	include '../content/categories.php';
	}	
	
	if(isset($_GET['add_sectors'])){
	include '../content/sectors.php';
	}	
	
		if(isset($_GET['record_goods'])){
	include '../content/all_sectors.php';
	}	
	
	if(isset($_GET['doing_recording'])){
	include '../content/chosing_categories.php';
	}	
		if(isset($_GET['recordin_goods'])){
	include '../content/add_goods.php';
	}	
		if(isset($_GET['generate'])){
	include '../content/generate.php';
	}
	
	if(isset($_GET['generate_s'])){
	include '../content/generate_s.php';
	}		
		if(isset($_GET['generating'])){
	include '../content/generating.php';
	}	
	if(isset($_GET['add_debtors'])){
	include '../content/add_debtors.php';
	}		
		if(isset($_GET['adding_goods'])){
	include '../content/adding_goods.php';
	}		
	
	
		if(isset($_GET['validate'])){
	include '../content/checkout.php';
	}		
		if(isset($_GET['daily_income'])){
	include '../content/daily_reports.php';
	}
		if(isset($_GET['daily_exp'])){
	include '../content/Daily Expenditure.php';
	}	
	if(isset($_GET['income_statement'])){
	include '../content/income_state.php';
	}
	if(isset($_GET['most_profitable'])){
	include '../content/most_profitable.php';
	}
	if(isset($_GET['best_sales'])){
	include '../content/most_sales.php';
	}
	if(isset($_GET['debtors'])){
	include '../content/debtors.php';
	}	
	if(isset($_GET['more'])){
	include '../content/more.php';
	}
	if(isset($_GET['add_debts'])){
	include '../content/add_debts.php';
	}		
	if(isset($_GET['paying_debts'])){
	include '../content/paying_debts.php';
	}
	if(isset($_GET['add_class'])){
	include '../content/spending_cats.php';
	}
	if(isset($_GET['record_expense'])){
	include '../content/record_expense.php';
	}
	if(isset($_GET['chosing_date'])){
	include '../content/recording_expense.php';
	
	}
	if(isset($_GET['recording_expense'])){
	include '../content/recording_expense.php';
	
	}
		
	if(isset($_GET['see_more'])){
	include '../content/see_more.php';
	
	}	
	if(isset($_GET['our_stocks'])){
	include '../content/all_mystock.php';
	
	}	
	if(isset($_GET['sales_meter'])){
	include '../content/sales_meter.php';
		}	
		if(isset($_GET['supply_meter'])){
	include '../content/supply_meter.php';
		}
	
	if(isset($_GET['create_user'])){
	include '../content/register.php';
		}
		
		if(isset($_GET['Accounts'])){
	include '../content/other_users.php';
		}
		if(isset($_GET['update_name'])){
	include '../content/update_name.php';
		}
	if(isset($_GET['my_license'])){
	include '../content/license.php';
		}
		
		
		if(isset($_GET['suppliers'])){
	include '../content/suppliers.php';
		}
		if(isset($_GET['add_supplier'])){
	include '../content/creditors.php';
		}
		if(isset($_GET['receive'])){
	include '../content/update_credit.php';
		}
		if(isset($_GET['pay_supplier'])){
	include '../content/my_creditors.php';
		}
		if(isset($_GET['view_history'])){
	include '../content/credit_history.php';
		}
	if(isset($_GET['pay_history'])){
	   include '../content/pay_history.php';
   }
	if(isset($_GET['finished'])){
	include '../content/finished.php';
	}
	if(isset($_GET['food_cat'])){
	include '../content/food_cat.php';
	}
	if(isset($_GET['add_food'])){
	include '../content/add_food.php';
	}
	if(isset($_GET['adding_foods'])){
	include '../content/add_foods.php';
	}	
	
	if(isset($_GET['ware_house'])){
	include '../content/ware_hose.php';
	}
	if(isset($_GET['form'])){
		include '../content/saving_req.php';
	}
	if(isset($_GET['supply'])){
		include '../content/supplies.php';
	}
	if(isset($_GET['supplying'])){
		include '../content/do_supply.php';
	}
	if(isset($_GET['each'])){
		include '../content/each.php';
	}
	if(isset($_GET['store'])){
		include '../content/store.php';
	}
	if(isset($_GET['bodiro'])){
		include '../content/bodiro.php';
	}
	if(isset($_GET['wbodiro'])){
		include '../content/wbodiro.php';
	}
	if(isset($_GET['save_each'])){
		include '../content/save_each.php';
	}
	if(isset($_GET['save'])){
		include '../content/save.php';
	}
	
	if(isset($_GET['print_each'])){
		include '../content/print_each.php';
	}
	if(isset($_GET['print_price'])){
		include '../content/print_price.php';
	}
	if(isset($_GET['print_pricel'])){
		include '../content/print_pricel.php';
	}
	if(isset($_GET['price_image'])){
		include '../content/update_price_image.php';
	}
	if(isset($_GET['view_sales'])){
		include '../content/view_sales.php';
	}
	if(isset($_GET['viewing_sales'])){
		include '../content/viewing_sales.php';
	}
	if(isset($_GET['supply_reports'])){
		include '../content/supply_reports.php';
	}
	if(isset($_GET['view'])){
		include '../content/view.php';
	}
	if(isset($_GET['undo_supply'])){
		include '../content/undo_supply.php';
	}
	if(isset($_GET['view_supplies'])){
		include '../content/view_supplies.php';
	}
		
		if(isset($_GET['opening_stocks'])){
		include '../content/opening_stocks.php';
	}
		if(isset($_GET['edit_sform'])){
		include '../content/edit_sform.php';
	}
		if(isset($_GET['edit_form'])){
		include '../content/edits_form.php';
	}
	if(isset($_GET['sales_report'])){
		include '../content/print_income.php';
	}
			
					?>
                    
                    
                    
                    </div></div>
                           
                 </div>
                    
                
                    
                    
           
        <!--END PAGE CONTENT -->