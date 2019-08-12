<html>
 <head>
  <title>Live Add Edit Delete Datatables Records using PHP Ajax</title>


  <script src="js/jquery-1.12.4.js"></script>
  <link rel="stylesheet" href="css/bootstrap.min.css" />
  <script src="js/jquery.dataTables.min.js"></script>
  <script src="js/dataTables.bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/bootstrap-datepicker.css" />
  <script src="js/bootstrap-datepicker.js"></script>
  <style>
  body
  {
   margin:0;
   padding:0;
   background-color:#f1f1f1;
  }
  .box
  {
   width:96%;
   padding:20px;
   background-color:#fff;
   border:1px solid #ccc;
   border-radius:5px;
   margin-top:25px;
   box-sizing:border-box;
  }
  </style>
 </head>
 <body>
  <div class="container box">
  
   <div class="table-responsive">
   <br />
   <div align="right">
     <button type="button" name="add" id="add" class="btn btn-primary">Add New Wholesale Stock</button>
    </div>
    <br />
    <div id="alert_message"></div>
    <table id="user_data" class="table table-bordered table-striped">
     <thead>
      <tr>
       <th>Product</th>
       <th>Qty</th>
       <th>Cost Price</th>
       
       <th>Selling Price</th>
       <th>Units</th>
       <th></th>
      </tr>
     </thead>
    </table>
   </div>
  </div>
 </body>
</html>

<script type="text/javascript" language="javascript" >
 $(document).ready(function(){
  
  fetch_data();

  function fetch_data()
  {
   var dataTable = $('#user_data').DataTable({
    "processing" : true,
    "serverSide" : true,
    "order" : [],
    "ajax" : {
     url:"fetch.php",
     type:"POST"
    }
   });
  }
  
  function update_data(id, column_name, value)
  {
   $.ajax({
    url:"update.php",
    method:"POST",
    data:{id:id, column_name:column_name, value:value},
    success:function(data)
    {
     $('#alert_message').html('<div class="alert alert-success">'+data+'</div>');
     $('#user_data').DataTable().destroy();
     fetch_data();
    }
   });
   setInterval(function(){
    $('#alert_message').html('');
   }, 300);
  }

  $(document).on('blur', '.update', function(){
   var id = $(this).data("id");
   var column_name = $(this).data("column");
   var value = $(this).text();
   update_data(id, column_name, value);
  });
  
  $('#add').click(function(){
   var html = '<tr>';
    html += '<td contenteditable id="data1"></td>';
   html += '<td contenteditable id="data2"></td>';
   html += '<td contenteditable id="data3"></td>';
   html += '<td contenteditable id="data4"></td>';
   html += '<td contenteditable id="data5"></td>';
   
   html += '<td><button type="button" name="insert" id="insert" class="btn btn-primary btn-xs">SAVE RECORDS</button></td>';
   html += '</tr>';
   $('#user_data tbody').prepend(html);
  });
  
  $(document).on('click', '#insert', function(){
   var name = $('#data1').text();
   var qty = $('#data2').text();
   var cost = $('#data3').text();
   var sp = $('#data4').text();
    var disc = $('#data5').text();
   
   if(name != '' && sp != '')
   {
    $.ajax({
     url:"insert.php",
     method:"POST",
     data:{name:name, cost:cost,qty:qty,sp:sp,disc:disc},
     success:function(data)
     {
      $('#alert_message').html('<div class="alert alert-success">'+data+'</div>');
      $('#user_data').DataTable().destroy();
      fetch_data();
     }
    });
    setInterval(function(){
     $('#alert_message').html('');
    }, 300);
   }
   else
   {
    alert("Both Fields is required");
   }
  });
  
  $(document).on('click', '.delete', function(){
   var id = $(this).attr("id");
   if(confirm("Are you sure you want to remove this?"))
   {
    $.ajax({
     url:"delete.php",
     method:"POST",
     data:{id:id},
     success:function(data){
      $('#alert_message').html('<div class="alert alert-success">'+data+'</div>');
      $('#user_data').DataTable().destroy();
      fetch_data();
     }
    });
    setInterval(function(){
     $('#alert_message').html('');
    }, 300);
   }
  });
 });
</script>
