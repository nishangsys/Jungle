<style>
form, table{
	background:#fff;
	padding:10px 10px;
}
</style>
      <!--PAGE CONTENT -->
        <div id="content" >
             
            <div class="inner" style="min-height: 1200px; background-image: url(../img/a.jpg);
	background-position: center center;
	background-size: cover;">
                <div class="row">
                    <div class="col-lg-9">
                  
                      
                    </div>
                </div>
                  <hr />
                 <!--BLOCK SECTION -->
                 <div class="row">
                    <div class="col-lg-12">
                       
                    <?php
					if(isset($_GET['dashboard'])){
	include '../content/reports.php';
	}
	if(isset($_GET['new_clients'])){
	include '../laundry/chose_clients.php';
	}
	if(isset($_GET['add_clients'])){
	include '../laundry/add_clients.php';
	}
	if(isset($_GET['add_clothe'])){
	include '../laundry/add_clothe.php';
	}
	if(isset($_GET['add_clothe1'])){
	include '../laundry/add_clothe1.php';
	}
	if(isset($_GET['add_service'])){
	include '../laundry/add_service.php';
	}
	if(isset($_GET['new'])){
	include '../laundry/new.php';
	}
	if(isset($_GET['continue'])){
	include '../laundry/continue.php';
	}
	if(isset($_GET['servicing'])){
	include '../laundry/servicing.php';
	}
	if(isset($_GET['validate'])){
	include '../laundry/validate.php';
	}
	if(isset($_GET['daily_income'])){
	include '../laundry/daily_reports.php';
	}
 if(isset($_GET['income_statement'])){
	include '../laundry/income_state.php';
	}
	if(isset($_GET['receipts'])){
	include '../laundry/receipts.php';
	}
	if(isset($_GET['job_history'])){
	include '../laundry/job_history.php';
	}
	if(isset($_GET['debtors'])){
	include '../laundry/debtors.php';
	}
	if(isset($_GET['register'])){
	include '../laundry/register.php';
	}
	if(isset($_GET['new_job'])){
	include '../laundry/new_job.php';
	}
	if(isset($_GET['today'])){
	include '../laundry/today.php';
	}
	if(isset($_GET['all_customers'])){
	include '../laundry/all_customers.php';
	}
	if(isset($_GET['express_jobs'])){
	include '../laundry/express_jobs.php';
	}
	if(isset($_GET['all_completed'])){
	include '../laundry/all_completed.php';
	}	
	if(isset($_GET['new_cjob'])){
	include '../laundry/company.php';
	}	
	if(isset($_GET['ccontinue'])){
	include '../laundry/ccontinue.php';
	}	
	if(isset($_GET['com_servicing'])){
	include '../laundry/com_servicing.php';
	}	?>
                    
                    
                    
                    </div></div>
                           
                 </div>
                    
                
                    
                    
           
        <!--END PAGE CONTENT -->