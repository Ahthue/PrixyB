<!DOCTYPE html>
	<?php $langue = "fr-FR"; $page = "Index"; ?>	
	<?php session_start(); ?>
	<?php include 'testnav.php'; ?>
<html>
	<head>
		<title>Prixy | Formation</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="icon" href="bootstrap/img/favicon.png">
		 <script src="bootstrap/js/jquery-1.12.1.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="bootstrap/fontawesome/css/font-awesome.min.css" rel="stylesheet">
		<link href="bootstrap/css/style.css" rel="stylesheet">
	</head>
	
	<body>
	
	    
	<?php 
		$str = array();
		$str = change_langue($langue, $page); 
	?>

	<!--PRESENTATION-->
	<div class="container">	
			<div class="featurette" id="about" style="margin-top:200px;">
				<img class="imageprixy featurette-image img-responsive pull-right" src="/PrixyPPE/bootstrap/img/logoPrixy.png" style="opacity:0.9;margin-left:50px;">
				<div class="lead text-justify">
				  <p> ~ <?php echo $str[1]; ?>
				  </p>
				  <p> ~ <?php echo $str[2]; ?>
				  </p>
				</div>
			</div>
	</div>

	<!--TIMELINE-->

	<div class="container">
		<h1><?php echo $str[3]; ?></h1>
			<div class="help-block text-center">
				<i class="fa fa-angle-down"></i>  <?php echo $str[4]; ?>  <i class="fa fa-angle-down"></i>
			</div>
		<hr>
		<div class="timeline">
			<li>
				<div class="timeline-badge success"><i class="glyphicon glyphicon-check"></i></div>
				<div class="timeline-panel">
					<div class="timeline-heading">
						<h4 class="timeline-title"><?php echo $str[5]; ?></h4>
					</div>
					<div class="timeline-body">
						<p><?php echo $str[6]; ?>
						</p>
					</div>
				</div>
			</li>
			<li class="timeline-inverted">
				<div class="timeline-badge warning"><i class="fa fa-cogs"></i></div>
				<div class="timeline-panel">
					<div class="timeline-heading">
						<h4 class="timeline-title"><?php echo $str[7]; ?></h4>
					</div>
					<div class="timeline-body">
					  <p><?php echo $str[8]; ?>
					  </p>
					  <p><?php echo $str[9]; ?>
					  </p> 
					</div>
				</div>
			</li>
			<li>
				<div class="timeline-badge danger"><i class="fa fa-server"></i></div>
				<div class="timeline-panel">
					<div class="timeline-heading">
						<h4 class="timeline-title"><?php echo $str[10]; ?></h4>
					</div>
					<div class="timeline-body">
					  <p><?php echo $str[11]; ?></p>
					  <p><?php echo $str[12]; ?>
					  </p>
					</div>
				</div>
			</li>
			<li class="timeline-inverted">
				<div class="timeline-badge "><i class="fa fa-wifi"></i></div>
				<div class="timeline-panel">
					<div class="timeline-heading">
						<h4 class="timeline-title"><?php echo $str[13]; ?></h4>
					</div>
				<div class="timeline-body">
			  <p><?php echo $str[14]; ?></p>
			</div>
		  </div>
		</li>
		<li>
		  <div class="timeline-badge info"><i class="fa fa-home"></i></div>
		  <div class="timeline-panel">
			<div class="timeline-heading">
			  <h4 class="timeline-title"><?php echo $str[15]; ?></h4>
			</div>
			<div class="timeline-body">
			  <p><?php echo $str[16]; ?> </p>
			 </div>
		  </div>
		</li>
		<div class="bs-callout bs-callout-danger">
			<h4><?php echo $str[17]; ?></h4> 
		</div>
		<li>
		  <div class="timeline-panel">
			<div class="timeline-heading">
			  <h4 class="timeline-title"><?php echo $str[18]; ?></h4>
			</div>
			<div class="timeline-body">
			  <p>
				<?php echo $str[19]; ?>
			  </p>
			</div>
		  </div>
		</li>
		<li class="timeline-inverted">
		  <div class="timeline-badge danger"><i class="fa fa-heart"></i></div>
		  <div class="timeline-panel">
			<div class="timeline-heading">
			  <h4 class="timeline-title"><?php echo $str[20];?></h4>
			</div>
			<div class="timeline-body">
			  <p><?php echo $str[21]; ?>
			  </p>
			</div>
		  </div>
		</li>
	  </div>
	</div>

	<?php include ('footer.php'); ?>
		

	<script>
	$(document).ready(function(){
		$('[data-toggle="popover"]').popover(); 
	});
	</script>

	</body>
</html>