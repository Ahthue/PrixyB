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
      <!--
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
      <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
      -->
	    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <link href="bootstrap/fontawesome/css/font-awesome.min.css" rel="stylesheet">
	    <link href="bootstrap/css/style.css" rel="stylesheet">
	</head>

	<body>

<?php include('testnav.php'); ?>
    

<!--PRESENTATION-->


<div class="container input-co text-center">
  <h1>Modifier votre profil</h1>

  <!-- formulaire d'inscription -->
  <form action="inscription.php" method = "post">

    <!-- Zone de texte pour le mail, l'adresse, le cp et la ville --> 
    
      <div class="input-group col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
        <span class="input-group-addon" id="basic-addon3">Adresse mail</span>
        <input type="email" class="form-control" name = "mail" maxlength = "100" placeholder = "Exemple : bono.jean@monmail.com" required = "required" value = "">
      </div>

      <div class="row input-group col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
        <span class="input-group-addon" id="basic-addon3">Adresse</span>
        <input type="text" class="form-control" name = "adr" maxlength = "25" placeholder = "Veuillez insérer votre adresse ici." required = "required" value = "">
      </div>

        <div class="row input-group col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
          <div class="input-group">
              <span class="input-group-addon" id="basic-addon3">CP</span>
            <input type="text" class="form-control" name = "cp" maxlength = "25" placeholder = "Veuillez insérer votre code postale ici." required = "required" value = "">
          </div>
        </div>

        <div class="row input-group col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
            <div class="input-group">
              <span class="input-group-addon" id="basic-addon3">Ville</span>
            <input type="text" class="form-control" name = "ville" maxlength = "25" placeholder = "Veuillez insérer le nom de votre ville d'habitation ici." required = "required" value = "">
            </div>
        </div>

        <div class="row input-group col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
            <div class="input-group">
              <span class="input-group-addon" id="basic-addon3">Tel. fixe</span>
            <input type="tel" class="form-control" name = "tel_fixe" maxlength = "15" placeholder = "Votre numéro de téléphone fixe ici" required = "required" value = "">
            </div>
        </div>
      
      <div class="row input-group col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
            <div class="input-group">
              <span class="input-group-addon" id="basic-addon3">Tel. mobile</span>
            <input type="tel" class="form-control" name = "tel_mobile" maxlength = "15" placeholder = "Votre numéro de portable ici" value = "">
            </div>
        </div>

    <!-- Zone de texte pour le login, le mdp et la confimation de mdp --> 

      <div class="input-group col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
        <span class="input-group-addon" id="basic-addon3">Login</span>
        <input type="text" class="form-control" name = "login" maxlength = "25" placeholder = "Veuillez entrer votre pseudonyme de connexion ici." required = "required" value = "" >
      </div>

      <hr>

      <div class="row input-group col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
        <span class="input-group-addon" id="basic-addon3">Mot de passe *</span>
        <input type="password" class="form-control" name = "mdp" maxlength = "25" pattern="^(?=.{8,})(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).*$" title = "Le mot de passe requiert 8 caractères min., 1 majuscule min., une minuscule min. et un nombre." placeholder = "Veuillez insérer votre mot de passe dans ce champ." required = "required">
      </div>
      <p class = "row col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1 text-left">* Au moins 8 caractères avec au moins une majuscule, une minuscule et un nombre</p>
      
      
      <div class="row input-group col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">            
        <span class="input-group-addon" id="basic-addon3">Confirmer MdP</span>
        <input type="password" class="form-control" name = "conf_mdp" maxlength = "25" pattern="^(?=.{8,})(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).*$" title = "Le mot de passe requiert 8 caractères min., 1 majuscule min., une minuscule min. et un nombre." placeholder = "Confirmer votre mot de passe." required = "required">
      </div>
      <hr>
      <!-- Bouton de validation du formulaire d'inscription --> 
      <div class="row input-group col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
        <div class="col-lg-6">
          <input type="submit" name="validerInscription" class="form-control" value="Valider">
        </div>
        <div class="col-lg-6">
          <input type="submit" name="validerInscription" class="form-control" value="Annuler">
        </div>
      </div>
  </form>
</div>

<?php include ('footer.php'); ?>
	

<script>
$(document).ready(function(){
    $('[data-toggle="popover"]').popover(); 
});
</script>

	</body>
</html>