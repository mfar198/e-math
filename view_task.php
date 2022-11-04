<?php 
include 'db_connect.php';
if(isset($_GET['id'])){
	$qry = $conn->query("SELECT * FROM task_list where id = ".$_GET['id'])->fetch_array();
	foreach($qry as $k => $v){
		$$k = $v;
	}
}
?>
<div class="container-fluid">
	<dl>
		<dt><b class="border-bottom border-primary">Task</b></dt>
		<dd><?php echo ucwords($task) ?></dd>
	</dl>
	<dl>
		<dt><b class="border-bottom border-primary">Status</b></dt>
		<dd>
			<?php 
        	if($status == 1){
		  		echo "<span class='badge badge-secondary'>Pending</span>";
        	}elseif($status == 2){
		  		echo "<span class='badge badge-primary'>On-Progress</span>";
        	}elseif($status == 3){
		  		echo "<span class='badge badge-success'>Done</span>";
        	}
        	?>
		</dd>
	</dl>
	<dl>
		<dt><b class="border-bottom border-primary">Video</b></dt>
		<dd>
		<?php function convertYoutube($string) {
								return preg_replace(
								"/\s*[a-zA-Z\/\/:\.]*youtu(be.com\/watch\?v=|.be\/)([a-zA-Z0-9\-_]+)([a-zA-Z0-9\/\*\-\_\?\&\;\%\=\.]*)/i",
								"<iframe width=\"400\" height=\"260\" src=\"//www.youtube.com/embed/$2\" allowfullscreen></iframe>",
								$string
								);
								}
								
								$url = html_entity_decode($video);
								echo convertYoutube($url);
								?>
		</dd>
	</dl>
	<?php
		if(empty($material)){
				
	
		}else{ ?>
	<dl>
		<dt><b class="border-bottom border-primary">Material</b></dt>	
		<dd><?php echo html_entity_decode($material) ?></dd>
		<!--<a class="btn btn-primary btn-sm" href="download.php?filename=<?php echo $material ?>">Download</a>-->
		<!--<a href="download1.php?FileNo=<?echo $material;?>">File Name</a>-->
		<a class="btn btn-primary btn-sm" href="downloadtask.php?file_id=<?php echo $material ?>">Download</a>
	</dl>
	<?php }
		?>
	<dl>
		<dt><b class="border-bottom border-primary">Description</b></dt>
		<dd><?php echo html_entity_decode($description) ?></dd>
	</dl>
</div>