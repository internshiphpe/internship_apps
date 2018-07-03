<?php

if($_SERVER['REQUEST_METHOD']=='POST'){
	$name = $_POST['name'];
	$password = $_POST['password'];
    $email = $_POST['email'];    
$phoneno = $_POST['phoneno'];

	require_once('dbConnect.php');
 
	$sql = "INSERT INTO signup(name,password,email,phoneno) VALUES ('$name','$password','$email','$phoneno')";
 
	

	if(mysqli_query($con,$sql)){
		echo "Success";
	}
 
	mysqli_close($con);
	}else{
		echo "Error";
 }
?>