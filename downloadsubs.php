<?php
	require_once 'conn.php';
	
	if(ISSET($_REQUEST['file_id'])){
		$file = $_REQUEST['file_id'];
		$query = $conn->prepare("SELECT * FROM `user_productivity` WHERE `submission`='$file'");
		$query->execute();
		$fetch = $query->fetch();
	
		header("Content-Disposition: attachment; filename=".$fetch['submission']);
		header("Content-Type: application/octet-stream;");
		readfile("assets/uploads/".$fetch['submission']);
	}
?>