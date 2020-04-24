<?php
include 'connection.php';

$queryResult=$connect->query("SELECT * FROM tbl_phone");

$result=array();

while($fetchData=$queryResult->fetch_assoc()){
	$result[]=$fetchData;
}

echo json_encode($result);

?>
