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
    

<div class="container input-co text-center">
      <h1>Formulaire d'inscription</h1>
	  
	  <!-- formulaire d'inscription -->
      <form action="inscription.php" method = "post">

        <!-- Zone de texte pour le nom et prénom -->    
        <div class="row col-lg-12"> 
          <div class="input-group col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
            <span class="input-group-addon" id="basic-addon3">Nom</span>
            <input type="text" class="form-control" name="nom" maxlength = "25" placeholder = "Exemple : Bono" required = "required" value = "">
          </div>

          <div class="row input-group col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
            <span class="input-group-addon" id="basic-addon3">Prénom</span>
            <input type="text" class="form-control" maxlength = "25" name="prenom" placeholder = "Exemple : Jean" required = "required" value = "">
          </div>
        </div>

        <!-- Bouton radio pour choisir son sexe (répété 3 fois pour chaque résolution d'écran => CASSE COUILLES) -->  
        <div class = "row col-lg-12">
          
          <span class="funkyradio hidden-lg hidden-md"> 
                <span class="funkyradio-rose col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
                    <input type="radio" name="radio" id="radio1" value = "femme"/>
                    <label for="radio1"><i class="fa fa-female fa-lg"></i>&emsp;Je suis une femme !</label>
                </span>
                <span class="funkyradio-primary col-sm-6 col-sm-push-2 col-xs-10 col-xs-offset-1">
                    <input type="radio" name="radio" id="radio2" value = "homme"/>
                    <label for="radio2"><i class="fa fa-male fa-lg"></i>&emsp;Je suis un homme !</label>
                </span>
            </span> 
          <span class="funkyradio hidden-md hidden-sm hidden-xs"> 
                <span class="funkyradio-rose col-lg-3 col-lg-offset-3">
                    <input type="radio" name="radio" id="radio3" value = "femme" />
                    <label for="radio3"><i class="fa fa-female fa-lg"></i>&emsp;Je suis une femme !</label>
                </span>
                <span class="funkyradio-primary col-lg-3">
                    <input type="radio" name="radio" id="radio4" value = "homme" />
                    <label for="radio4"><i class="fa fa-male fa-lg"></i>&emsp;Je suis un homme !</label>
                </span>
            </span> 
          <span class="funkyradio hidden-lg hidden-sm hidden-xs"> 
                <span class="funkyradio-rose col-md-3 col-md-offset-3">
                    <input type="radio" name="radio" id="radio5" value = "femme"/>
                    <label for="radio5"><i class="fa fa-female fa-lg"></i>&nbsp;&nbsp;Je suis une femme !</label>
                </span>
                <span class="funkyradio-primary col-md-3">
                    <input type="radio" name="radio" id="radio6" value = "homme"/>
                    <label for="radio6"><i class="fa fa-male fa-lg"></i>&nbsp;&nbsp;Je suis un homme !</label>
                </span>
            </span>       
        </div>

        <!-- une date calendrier qui permet de choisir sa date de naissance -->  
        <div class="row col-lg-12 col-md-12"> 
          <div class="input-group col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
            <span class="input-group-addon" id="basic-addon3">Date de naissance</span>
            <input type="date" class="form-control" name="ddn" maxlength = "100" required = "required" placeholder="Date de naissance">
          </div>

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

        
        <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1"><hr></div>

        <!-- Zone de texte pour le login, le mdp et la confimation de mdp --> 
 
          <div class="input-group col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
            <span class="input-group-addon" id="basic-addon3">Login</span>
            <input type="text" class="form-control" name = "login" maxlength = "25" placeholder = "Veuillez entrer votre pseudonyme de connexion ici." required = "required" value = "" >
          </div>

          <div class="row input-group col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
            <span class="input-group-addon" id="basic-addon3">Mot de passe *</span>
            <input type="password" class="form-control" name = "mdp" maxlength = "25" pattern="^(?=.{8,})(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).*$" title = "Le mot de passe requiert 8 caractères min., 1 majuscule min., une minuscule min. et un nombre." placeholder = "Veuillez insérer votre mot de passe dans ce champ." required = "required">
          </div>
          <p class = "row col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1 text-left">* Au moins 8 caractères avec au moins une majuscule, une minuscule et un nombre</p>
          
          
          <div class="row input-group col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">            
            <span class="input-group-addon" id="basic-addon3">Confirmer MdP</span>
            <input type="password" class="form-control" name = "conf_mdp" maxlength = "25" pattern="^(?=.{8,})(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).*$" title = "Le mot de passe requiert 8 caractères min., 1 majuscule min., une minuscule min. et un nombre." placeholder = "Confirmer votre mot de passe." required = "required">
          </div>                    
		  <br />
        </div>

		

        <!-- Bouton de validation du formulaire d'inscription --> 
        <div class = "row"></div>
        <div class = "col-lg-2 col-lg-push-5 col-md-2 col-md-push-5 col-sm-2 col-sm-push-5 col-xs-4 col-xs-push-4">
          <input type="submit" name = "validerInscription" class="form-control">
        </div>
      </form>
    </div>


<?php include ('footer.php'); ?>
	
	</body>
</html>

<script>
$(document).ready(function(){
    $('[data-toggle="popover"]').popover(); 
});
</script>

