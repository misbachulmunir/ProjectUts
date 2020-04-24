<?php
	include 'connection.php';
	$id=$_POST['id'];
	$connect->query("DELETE FROM tbl_phone WHERE id=".$id);

?>
