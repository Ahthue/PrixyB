<!DOCTYPE html>
<html>
    <head>
    	<title>Prixy | Formation</title>
    	<meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="icon" href="bootstrap/img/favicon.png">
      <script src="bootstrap/js/jquery.js"></script>
		  <script src="bootstrap/js/bootstrap.min.js"></script>
      <script src="bootstrap/js/app.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
      <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <link href="bootstrap/fontawesome/css/font-awesome.min.css" rel="stylesheet">
	    <link href="bootstrap/css/style.css" rel="stylesheet">
	</head>

	<body>

<?php include('nav.php'); ?>
    
<div class="container-fluid text-center input-co">
  <h1>Réinitialiser son mot de passe</h1>
  <form method="post">

    <!-- zone de texte pour le mot de passe -->
    <div class="input-group col-lg-6 col-lg-offset-3 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 input-co">
      <span class="input-group-addon" id="basic-addon3">Adresse e-mail</span>
      <input type="mail" class="form-control" name="mdp" maxlength="25" placeholder="Renseignez votre adresse e-mail" required="required">         
    </div>

    <!-- ligne + bouton valider-->
    <div class="col-lg-2 col-lg-offset-5 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-6 col-xs-offset-3 input-co aled">
      <input type="submit" name="validerConnexion" value="Valider">
    </div>

  </form>
</div>

<?php include ('footer.php'); ?>
	

	</body>
</html>