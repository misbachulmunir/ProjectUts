<?php

	include 'connection.php';
	
	$phone_name = $_POST['phone_name'];
	$price = $_POST['price'];
	
	
	$connect->query("INSERT INTO tbl_phone (phone_name,price) VALUES ('".$phone_name."','".$price."')")

?>
