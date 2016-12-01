<!DOCTYPE html>
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
	
	<?php include('testnav.php'); ?>
	
	<div class="container-fluid text-center input-co">
	  <h1>Se connecter</h1>
	  <form method="post">

		<!-- zone de texte pour le login -->
		<div class="input-group col-lg-6 col-lg-offset-3 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 input-co">
			<span class="input-group-addon" id="basic-addon3">Login</span>
			<input type="text" class="form-control" name="login" maxlength="25" value = "<?php if(isset($_COOKIE['pseudo'])) echo $_COOKIE['pseudo']?>" placeholder="Renseignez votre identifiant de connexion" required="required">
		</div>

		<!-- zone de texte pour le mot de passe -->
		<div class="input-group col-lg-6 col-lg-offset-3 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 input-co">
		  <span class="input-group-addon" id="basic-addon3">Mot de passe</span>
		  <input type="password" class="form-control" name="mdp" maxlength="25" value = "<?php if(isset($_COOKIE['pass'])) echo $_COOKIE['pass']?>" placeholder="Renseignez votre mot de passe" required="required">         
		</div>
		<?php echo $erreurConnexion; ?>
		
		<!-- ligne + bouton valider-->
		<div class="col-lg-2 col-lg-offset-5 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-6 col-xs-offset-3 input-co">
		  <input type="submit" name="validerConnexion" value="Connecter">
		</div>
		
		<!-- lien vers l'inscription et l'oubli de mot de passe -->     
		<div class="aled">                  
		  <div class="col-lg-6 col-lg-push-3 col-md-6 col-md-push-3 col-sm-6 col-sm-push-3 col-xs-6 text-left input-co">
			<a href="inscription.php">Nouvel adhérent ?</a>
		  </div>
		  <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 text-right input-co">
			<a href="oublimdp.php?t=0">Mot de passe oublié ?</a>
		  </div>
		</div>
	  </form>
	</div>


	<?php include ('footer.php'); ?>
	

	</body>
</html>