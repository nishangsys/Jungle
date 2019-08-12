<html>
	<body>
		<div id="table"></div>
	</body>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript">
	    $(document).on('keyup','#payment',function(){
	    	$("#balance").val($("#final").val() - $("#payment").val());

	    	payment = $("#payment").val();

	    	$.ajax({
		        url: "payment.php",
		        type: "POST",
		        data:  {payment : payment}, 
		        success: function(response) {
		        }
		    });
	    });

	    $(document).ready(function() {
	    	$.ajax({
		        url: "cal_table.php",
		        type: "POST",
		        data:  {}, 
		        success: function(response) {
		            $("#table").html(response);
		        }
		    });

	    	setInterval(function(){ 
	    		$.ajax({
			        url: "cal_table.php",
			        type: "POST",
			        data:  {}, 
			        success: function(response) {
			            $("#table").html(response);
			        }
			    });
			}, 5000);
		});
	</script>
</html>
