<?php

	include 'connection.php';
	
	$id = $_POST['id'];
	$phone_name = $_POST['phone_name'];
	$price = $_POST['price'];
	
	
	$connect->query("UPDATE tbl_phone SET phone_name='".$phone_name."', price='".$price."' WHERE id=". $id);

?>
