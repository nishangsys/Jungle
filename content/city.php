<?php
//fetch.php
$con = mysqli_connect("localhost", "root", "", "journal");
$output = '';
if(isset($_POST["query"]))
{
 $search = mysqli_real_escape_string($con, $_POST["query"]);
 $query = "
  SELECT * FROM papers
  WHERE bys LIKE '%".$search."%'
  OR titles LIKE '%".$search."%' 
  OR subject LIKE '%".$search."%' 
  OR school LIKE '%".$search."%' 
  OR country LIKE '%".$search."%'
  OR year LIKE '%".$search."%'
 ";
}
else
{
 $query = "
  SELECT * FROM papers ORDER BY id
 ";
}
$result = mysqli_query($con, $query);
if(mysqli_num_rows($result) > 0)
{
 $output .= '
  <div class="table-responsive">
   <table class="table table bordered">
    <tr>
     <th>Publisher Name</th>
     <th>Topic</th>
     <th>Subject</th>
     <th>Institution </th>
     <th>Country</th>
	  <th>Year</th>
	  <th>Download</th>
    </tr>
 ';
 while($row = mysqli_fetch_array($result))
 {
  $output .= '
   <tr>
    <td>'.$row["bys"].'</td>
    <td>'.$row["titles"].'</td>
    <td>'.$row["subject"].'</td>
    <td>'.$row["school"].'</td>
    <td>'.$row["country"].'</td>
	<td>'.$row["year"].'</td>
	<td><a href="download?id='.$row['replies'].' "> <i class="fa fa-paperclip fa-fw fa-2x" style="color:#000"></i></a></td>
   </tr>
  ';
 }
 echo $output;
}
else
{
 echo 'Data Not Found';
}

?>