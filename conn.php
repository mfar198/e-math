<?php
	$conn = new PDO( 'mysql:host=localhost;dbname=emathsys', 'root', '');
	if(!$conn){
		die("Fatal Error: Connection Failed!");
	}
?>