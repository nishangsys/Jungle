


        <!-- MENU SECTION -->
       <div id="left" >
            <div class="media user-media well-small">
                <a class="user-link" href="?my_profile">
                
                    
                </a>
                <br />
                <div class="media-body">
                    <h5 class="media-heading"> <?php echo $user; ?></h5>
                    <ul class="list-unstyled user-info">
                        
                        <li>
                             <a class="btn btn-success btn-xs btn-circle" style="width: 10px;height: 12px;"></a> Online
                           
                        </li>
                       
                    </ul>
                </div>
                <br />
            </div>

            <ul id="menu" class="collapse">

                
                <li class="panel active">
                    <a href="?dashboard&link=Admin Dashboard" >
                        <i class="icon-table"></i> Dashboard
	   
                       
                    </a>                   
                </li>
                
                
                
       <li class="panel">
                    <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#DDL-nav">
                        <i class=" icon-sitemap"></i>  Master
	    <span class="pull-right">
                            <i class="icon-angle-left"></i>
                        </span>
                          &nbsp; <span class="label label-primary">3</span>&nbsp;
                    </a>
                    <ul class="collapse" id="DDL-nav">
                       
                            <ul class="collapse" id="DDL1-nav">
                              
                            </ul>

                        </li>
                        <li><a href="?add_clients&link=Add Clients"><i class="icon-angle-right"></i> Add Cleints  </a></li>
                        
                          <li><a href="?add_clothe&link=Adding Cliothe Types"><i class="icon-angle-right"></i> Define Single Prices  </a></li>
                          
                            <li><a href="?add_clothe1&link=Adding Cliothe Types"><i class="icon-angle-right"></i> Define Prices in KG  </a></li>
                       
                         <li><a href="?add_service&link=Add laundry service"><i class="icon-angle-right"></i> Add laundry service  </a></li>
                    </ul>
                </li>        
                
                
     
                
                
                  


            

     
     
     

                   <li class="panel ">
                    <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#form-nav">
                        <i class="icon-pencil"></i> New Jobs & Customers
	   
                        <span class="pull-right">
                            <i class="icon-angle-left"></i>
                        </span>
                          &nbsp;&nbsp;
                    </a>
                    <ul class="collapse" id="form-nav">
                        <li class=""><a href="?register"><i class="icon-angle-right"></i> Register Client </a></li>
                        <li class=""><a href="?new_job"><i class="icon-angle-right"></i> New Job to Existing Clients </a></li>
                        
                         <li class=""><a href="?new_cjob"><i class="icon-angle-right"></i> Company Jobs </a></li>
                        
                         <li class=""><a href="?all_customers"><i class="icon-angle-right"></i> All Customers Details </a></li>
                     
                    </ul>
                </li>
     
        
                     
   <li class="panel">
                    <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#chart-nav">
                        <i class="icon-bar-chart"></i> All Job details
	   
                        <span class="pull-right">
                            <i class="icon-angle-left"></i>
                        </span>
                          &nbsp; <span class="label label-danger">4</span>&nbsp;
                    </a>
                    <ul class="collapse" id="chart-nav">

<li><a href="?express_jobs" ><i class="icon-angle-right"></i> All Express Jobs  </a></li>

                        <li><a href="?all_completed" ><i class="icon-angle-right"></i> All Completed Jobs  </a></li>
                          <li><a href="?job_history" ><i class="icon-angle-right"></i> All Jobs History </a></li>
                        <li><a href="../libchart/stats/ver.php" target="_new"><i class="icon-angle-right"></i> Income Versus Expenditure</a></li>
                        <li><a href="../libchart/stats/exp.php" target="_new"><i class="icon-angle-right"></i> Month Expense Reports </a></li>
                        <li><a href="../libchart/stats/yeexp.php" target="_new"><i class="icon-angle-right"></i> Yearly Global Expense </a></li>
                    </ul>
                </li>        
                         
        
        
        
     
                        
                        
                
                
                <li class="panel ">
                    <a href="?receipts&link=Print Receipts " data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#component-nav">
           <i class="icon-plus"></i> Receipts
	   
                        <span class="pull-right">
                        </span>
                        </a>
                        </li>          


       
                                  
                        
                        <li class="panel " >
                    <a href="?debtors&link=Our Debtors" data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#component-nav" style="color:#f00; font-weight:bold">
                       <i class=" icon-folder-open-alt"></i>  Debtors  
	   
                        <span class="pull-right">
                        </span>
                        </a>
                        </li>  
                        
                   
                        
                        
   <li class="panel ">
                    <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#component-nav">
                        <i class="icon-tasks"> </i> Our Reports 
	   
                        <span class="pull-right">
                          <i class="icon-angle-left"></i>
                        </span>
                       &nbsp; <span class="label label-primary">3</span>&nbsp;
                    </a>
                    <ul class="collapse" id="component-nav">
                       
                        <li class=""><a href="?daily_income&link=Daily Income"><i class="icon-angle-right"></i> Daily Income</a></li>
                       
                         <li class=""><a href="?income_statement&link=Income Statement"><i class="icon-angle-right"></i> Income Statement </a></li>
                    </ul>
                </li>                           
                        
                        
                        
                        
        
             
             
             
             
             
             
             
             
             
                        
                        
                        
                        


            </ul>

        </div>
        <!--END MENU SECTION -->
        
        
        
        

    <!-- GLOBAL SCRIPTS -->
    <script src="../assets/plugins/jquery-2.0.3.min.js"></script>
     <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/plugins/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <!-- END GLOBAL SCRIPTS -->

    <!-- PAGE LEVEL SCRIPTS -->
    <script src="../assets/plugins/flot/jquery.flot.js"></script>
    <script src="../assets/plugins/flot/jquery.flot.resize.js"></script>
    <script src="../assets/plugins/flot/jquery.flot.time.js"></script>
     <script  src="../assets/plugins/flot/jquery.flot.stack.js"></script>
    <script src="../assets/js/for_index.js"></script>
   
    <!-- END PAGE LEVEL SCRIPTS -->

