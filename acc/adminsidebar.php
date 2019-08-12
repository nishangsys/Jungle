<?php
require_once '../functions/functions.php';
session_start();

if(!isset($_SESSION['user_name'])){
echo '<meta http-equiv="Refresh" content="2; url=login.php">';

}

else {
	@session_start();
	
	if(($_SESSION['banned'])!='20'){
		echo "<script>alert('Sorry. Page restriction by the administartor')</script>";
		echo "<script>window.open('index.php?names','_self')</script>";
		
			
	}
	else {
?>
<div class="left" style="line-height:1">   
    
  <div id='cssmenu'  >
<ul  >

 <li ><a href='adminpage.php?allrooms'><span><img src="../img/house.png" /> All Rooms</span></a></a>
  
   </li>
   
    
   <li class='active has-sub'><a href='#'><span><img src="../img/res.png" /> Reservations</span></a>
   <ul>
            <li ><a href="adminpage.php?reservations"><span>Make Reservation</span></a>
                 <li ><a href="adminpage.php?allreserves"><span>All Pending</span></a>   
                  <li ><a href="adminpage.php?see_allreserves"><span>All Reservations</span></a>    
                        <li ><a href="adminpage.php?cancelre"><span><span style="color:#f00">Cancel </span> / Confirm</span></a>                 
                  <li ><a href="adminpage.php?roomchange"><span>Change Room</span></a>
                  
                  <li ><a href="adminpage.php?datechange"><span>Change Date</span></a>

            
      </ul>
   </li>
   
   
    <li class='active has-sub'><a href='#'><span><img src="../img/newc.png" /> New Client/Discount</span></a>
   <ul>
         
                        <li ><a href="adminpage.php?room_change" ><span style="color:#f0f">Change Room</span></a>

            <li ><a href="adminpage.php?checkout"><span style="color:#f00; text-decoration:blink">Check Out </span></a>
            
                        <li ><a href="adminpage.php?discount"><span >Discount a Room </span></a>


            
      </ul>
   </li>
   
   
   
   
   
  <li class='active has-sub'><a href='#'><span><img src="../img/hp.png" /> Room's Status</span></a>
   <ul>
            <li ><a href="adminpage.php?occupied"><span>Occupied Rooms</span></a>
          <li ><a href="adminpage.php?vacated"><span>Vaccated Rooms</span></a>


      <li ><a href="adminpage.php?reserved"><span>Reserved Rooms</span></a>
      
            
      </ul>
   </li>
   
         
           
   <li class='active has-sub'><a href="#"><span><img src="../img/ht.png" /> Hall Rental </span></a>
      
      <ul>
      
      <li ><a href="adminpage.php?new_hallrental"><span>New Client</span></a>
      
      <li><a href="adminpage.php?all_hallrental" style="font-size:14px"><span>Receive Cash</span></a>
            <li><a href="adminpage.php?update_hallpyments" style="font-size:14px"><span>Update Payments</span></a>

            <li ><a href="adminpage.php?all_hallreceipts"><span>All Receipts</span></a>
            <li ><a href="adminpage.php?search_hallondate"><span>Search Records</span></a>
             <li ><a href="adminpage.php?see_allhallres"><span style="color:#F00">Cancel / </span><span style="color:#000">Extend </span></a>
            
 <li ><a href="adminpage.php?hall_dailyrec"><span>Daily Reports</span></a>
  <li ><a href="adminpage.php?hall_monthlyrec"><span>Monthly Reports</span></a>


      
      
      
      </ul></li>
      
   
   
   
   <li class='active has-sub'><a href="#"><span><i class="fa fa-folder-open fa-2x"></i> Financial Records</span></a>
      
      <ul>
      
      <li ><a href="adminpage.php?today"><span>Daily Records</span></a>
      
      <li><a href="adminpage.php?seeee" style="font-size:14px"><span>Monthly Records</span></a>
      
      
      
      </ul></li>
  
   
   
      <li class='active has-sub'><a href="#"><span><img src="../img/gad.png" /> All Stocks</span></a>
      
      <ul>
      
          <li class='has-sub'><a href="adminpage.php?bstock"><span>Bar Stocks</span></a>
                    <li class='has-sub'><a href="adminpage.php?restaustock"><span>Restau Stocks</span></a>

            
          
      </ul>
   
   
   
      <li class='active has-sub'><a href="#"><span><img src="../img/user_green.png" /> Visitors</span></a>
      
      <ul>
      
          <li class='has-sub'><a href="adminpage.php?all_inquiries"><span>See All</span></a>
            
          
      </ul></li>
 
  
  
  
   <li class='active has-sub'><a href="adminpage.php?client_records"><span><img src="../img/log.png" /> Check In/out Records</span></a>
      
      <ul>
      
      <li ><a href="adminpage.php?client_records"><span>All Records</span></a>
  
      
      
      
      </ul></li>
  
  
  
 
  <li class='active has-sub'><a href="#"><span><img src="../img/tower.png" />  Add Room </span></a>
      
      <ul>
      
      <li class='has-sub'><a href="adminpage.php?addroom"><span>Add a Room </span></a>
      
      <li class='has-sub'><a href="adminpage.php?addblock"><span>Add a Block </span></a>
      
       <li class='has-sub'><a href="adminpage.php?addcate"><span>A Category </span></a>
       
       
       
      </ul></li>
         
          
      
             <li class='active has-sub'><a href="#"><span>  <i class="fa fa-users fa-2x"></i> Create Account </span></a>
      
      <ul>
      
      <li class='has-sub'><a href="adminpage.php?new_account"><span>Users Account </span></a>
              <li class='has-sub'><a href="adminpage.php?changepwd"><span>Change Password </span></a>

      <!----
       <li class='has-sub'><a href="adminpage.php?register"><span>Class Account </span></a>
      ---->
    
      
       
          
      </ul></li>
      
      
      <li class='active has-sub'><a href="#"><span>  <img src="../img/env.png" /> Inbox </span></a>
      
      <ul>
      
              <li class='has-sub'><a href="adminpage.php?all_deletes"><span>Deleted Goods </span></a>      
                    <li class='has-sub'><a href="adminpage.php?all_paybacks"><span>Pay Backs </span></a>      
    
          
      </ul></li>
          
           
        <li class='active has-sub'><a href="#"><span>  <img src="../img/sett.png" /> Settings Zone </span></a>
      
      <ul>
      
              <li class='has-sub'><a href="adminpage.php?overtime"><span>Set Overtime </span></a>      
    
          
      </ul></li>
       
       
    
	  
	
      
   
     
          <li ><a href="adminpage.php?update_name" ><span><i class="fa fa-refresh fa-2x "></i>  Update Address</span> </a>
         
          </li>
          
       
     
     
 
    
      
  
   

</div>
    </div>
    

      
  
   


    
    <?php } } ?>