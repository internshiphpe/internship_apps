<?php

/*
* Following code will create a new product row
* All product details are read from HTTP Post Request
*/

// array for JSON response
$response = array();

if($_SERVER['REQUEST_METHOD']=='POST'){

  // include db connect class
   require_once __DIR__ . '/db_connect.php';

	//$aadhar = $_POST['aadhar'];
        $semester = $_POST['sem'];
 $sql="SELECT * FROM student WHERE semester= $semester" ;
 $result = $conn->query($sql);
if ($result->num_rows > 0) {
  
   $response["products"] = array();

   while($row = $result->fetch_assoc()) {
       // temp user array
       $product = array();
       $product["id"] = $row["id"]; 
	   $product["aadhar"] = $row["aadhar"];
       $product["name"] = $row["name"];
       $product["usn"] = $row["usn"];
       $product["course"] = $row["course"];
       $product["semester"] = $row["semester"];
       $product["section"] = $row["section"];
	   $product["fname"] = $row["fname"]; 
	   $product["foccupation"] = $row["foccupation"];
       $product["mname"] = $row["mname"];
       $product["moccupation"] = $row["moccupation"];
       $product["dob"] = $row["dob"];
       $product["caste"] = $row["caste"];
       $product["religion"] = $row["religion"];
	   $product["bgroup"] = $row["bgroup"];
	   $product["sex"] = $row["sex"]; 
	   $product["actual_cat"] = $row["actual_cat"];
       $product["nationality"] = $row["nationality"];
       $product["pmailid"] = $row["pmailid"];
       $product["smailid"] = $row["smailid"];
       $product["smobno"] = $row["smobno"];
       $product["pmobno"] = $row["pmobno"];
	   $product["cetno"] = $row["cetno"];
	   $product["dissue"] = $row["dissue"]; 
	   $product["rank"] = $row["rank"];
       $product["r_urban"] = $row["r_urban"];
       $product["quota"] = $row["quota"];
       $product["pcollege"] = $row["pcollege"];
       $product["marks"] = $row["marks"];
       $product["percentage"] = $row["percentage"];
       $product["image"] = $row["image"];
	   
	  $product["hmname"] = $row["hmname"];
      $product["post"] = $row["post"];
       $product["address"] = $row["address"];
       $product["district"] = $row["district"];
       $product["pincode"] = $row["pincode"];
	   
	   

       // push single product into final response array
       array_push($response["products"], $product);
   }
   // success
   $response["success"] = 1;

   // echoing JSON response
   echo json_encode($response);
} else {
   // no products found
   $response["success"] = 0;
   $response["message"] = "No products found";

   // echo no users JSON
   echo json_encode($response);
}
}
?>