<?php		
	$keyword = strval($_POST['query']);
	$search_param = "{$keyword}%";
	$area=$_GET['area'];
$conn =new mysqli('localhost', 'nishang', 'google1234' , 'super_db');

	$sql = $conn->prepare("SELECT * FROM finals  WHERE qty>0 and area='$area' and  name LIKE ? ");
	$sql->bind_param("s",$search_param);			
	$sql->execute();
	$result = $sql->get_result();
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
		$countryResult[] = $row["name"];
		}
		echo json_encode($countryResult);
	}
	$conn->close();
?>






