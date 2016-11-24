<!--equipe.html par ludovic barthelemi du Groupe B en PPE-->

<!DOCTYPE html>
    <head>
    	<title>Prixy | Formation</title>
    	<meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="icon" href="bootstrap/img/favicon.png">
      <script src="bootstrap/js/jquery.js"></script>
		  <script src="bootstrap/js/bootstrap.min.js"></script>
	    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <link href="bootstrap/fontawesome/css/font-awesome.min.css" rel="stylesheet">
	    <link href="bootstrap/css/style.css" rel="stylesheet">
	</head>

	<body>

<?php session_start(); ?>
<?php include('testnav.php'); ?>
<?php $langue = "fr-FR"; $page = "Equipe"; ?>

<?php 
	$str = array();
	$str = change_langue($langue, $page); 
?>

<!--L'EQUIPE-->

<div class="container marketing" style="margin-top:200px;">

        <div class="col-lg-6">
          <img class="img-circle center-block formateur" src="bootstrap/img/formateur1.jpg" width="180" height="180">
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title"><strong>C. Joubert - <?php echo $str[1]; ?></strong></h3>
              <div class="panel-body">
                <p class="text-justify"><?php echo $str[2]; ?></p>
                <hr>
                <div class="col-xs-12 social-btns">
                 
                    <div class="col-xs-3 col-md-1 col-lg-3 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-facebook" title="Facebook">
                        <i class="fa fa-facebook fa-2x"></i> </a>
                    </div>
                  
                    <div class="col-xs-3 col-md-1 col-lg-3 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-twitter" title="Twitter">
                        <i class="fa fa-twitter fa-2x"></i> </a>
                    </div>
                  
                    <div class="col-xs-3 col-md-1 col-lg-3 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-linkedin" title="LinkedIn">
                        <i class="fa fa-linkedin fa-2x"></i> </a>
                    </div>
                  
                    <div class="col-xs-3 col-md-1 col-lg-3 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-github" title="GitHub">
                        <i class="fa fa-github fa-2x"></i> </a>
                    </div>
                  
                </div>

              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <img class="img-circle center-block formateur" src="bootstrap/img/formateur1.jpg" width="180" height="180">
          <div class="panel panel-info">
            <div class="panel-heading" style="height:231px;">
              <h3 class="panel-title"><strong>S. Millot - <?php echo $str[3]; ?></strong></h3>
              <div class="panel-body">
                <p class="text-justify"><?php echo $str[4]; ?></p>
                <hr>
                <div class="col-xs-12 social-btns">
                 
                    <div class="col-xs-3 col-md-1 col-lg-3 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-facebook" title="Facebook">
                        <i class="fa fa-facebook fa-2x"></i> </a>
                    </div>
                  
                    <div class="col-xs-3 col-md-1 col-lg-3 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-twitter" title="Twitter">
                        <i class="fa fa-twitter fa-2x"></i> </a>
                    </div>
                  
                    <div class="col-xs-3 col-md-1 col-lg-3 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-linkedin" title="LinkedIn">
                        <i class="fa fa-linkedin fa-2x"></i> </a>
                    </div>
                  
                    <div class="col-xs-3 col-md-1 col-lg-3 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-github" title="GitHub">
                        <i class="fa fa-github fa-2x"></i> </a>
                    </div>
                  
                </div>
              </div>
            </div>
          </div>
        </div>

<hr class="col-lg-offset-3 col-lg-6 col-lg-offset-3">
        <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3">
          <img class="img-circle center-block formateur" src="bootstrap/img/formateur1.jpg" alt="Generic placeholder image" width="180" height="180">
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title border"><strong>L. Schmitt - <?php echo $str[5]; ?></strong></h3>
              <div class="panel-body">
                <p class="text-justify"><?php echo $str[6]; ?></p>
                <hr>
                <div class="col-xs-12 social-btns">
                 
                    <div class="col-xs-3 col-md-1 col-lg-3 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-facebook" title="Facebook">
                        <i class="fa fa-facebook fa-2x"></i> </a>
                    </div>
                  
                    <div class="col-xs-3 col-md-1 col-lg-3 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-twitter" title="Twitter">
                        <i class="fa fa-twitter fa-2x"></i> </a>
                    </div>
                  
                    <div class="col-xs-3 col-md-1 col-lg-3 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-linkedin" title="LinkedIn">
                        <i class="fa fa-linkedin fa-2x"></i> </a>
                    </div>
                  
                    <div class="col-xs-3 col-md-1 col-lg-3 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-github" title="GitHub">
                        <i class="fa fa-github fa-2x"></i> </a>
                    </div>
                  
                </div>
              </div>
            </div>
          </div>
        </div>
</div>

<hr class="col-lg-offset-3 col-lg-6 col-lg-offset-3">

<!--EQUIPE EXTERIEUR-->

<div class="container" style="margin-top:100px;">
        <div class="col-lg-12">
          <div class="panel panel-info">
            <h3 class="panel-body text-center">
              <?php echo $str[7]; ?>
            </h3>  
          </div>
        </div>
</div>

<?php include ('footer.php'); ?>

	</body>
</html>