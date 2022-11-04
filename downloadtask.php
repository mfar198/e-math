<?php
	require_once 'conn.php';
	
	if(ISSET($_REQUEST['file_id'])){
		$file = $_REQUEST['file_id'];
		$query = $conn->prepare("SELECT * FROM `task_list` WHERE `material`='$file'");
		$query->execute();
		$fetch = $query->fetch();
	
		header("Content-Disposition: attachment; filename=".$fetch['material']);
		header("Content-Type: application/octet-stream;");
		readfile("assets/uploads/".$fetch['material']);
	}
?>