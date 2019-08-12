
<?php
include 'inc/dbconn.php';

if(isset($_GET['type']) && isset($_GET['cat']) && isset($_GET['area'])){
        $items = [];
        $area =  $_GET['area'];
        $type =  $_GET['type']; //drinks or food
        $cat = $_GET['cat']; // all,beer,top,chicken ... 
        if($type == "food"){
                if($cat == "all"){//name,qty,sp,image_name
                        $query = $con->query("SELECT pro_id as id, product as name, price as sp, image_name FROM foods") or die(mysqli_error($con));

                }else{
                        $query = $con->query("SELECT pro_id as id, product as name, price as sp, image_name  FROM foods where serial = '$cat'") or die(mysqli_error($con));
                }
        //http://localhost/baragent/apis/items.php?area=10&cat=all&type=food
        }else if ($type == "drinks"){
                if($cat == "all"){
                        $query = $con->query("SELECT * FROM finals where qty > 0 and area = '$area'") or die(mysqli_error($con));

                }else{
                        $query = $con->query("SELECT * FROM finals where qty > 0 and disc = '$cat' and area = '$area'") or die(mysqli_error($con));
                }
        }
         while($row=$query->fetch_array()){ 
                $item['id'] = $row['id'];
                $item['name'] = $row['name'];
                $item['quantity'] = $row['qty'];
                $item['sp'] = $row['sp'];
                $item['image'] = $row['image_name']; 
                array_push($items, $item);
           
        }
        echo json_encode($items);

}else die("Some thing is missing");

?>
