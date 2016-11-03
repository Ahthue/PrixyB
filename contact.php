<!--contact.html par ludovic barthelemi du Groupe B en PPE-->
<!-- modifié par Jonathan MARTINS du groupe B en ppe -->

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

	<?php 
			include('nav.php'); 
			include('fonction.inc.php');
	?>

	<!--ADRESSE-->

	<div class="container" style="margin-top:150px;">
	  
	  <div class="adresse col-lg-6 text-center">
		<h1 class="adresseacces">Adresse</h1>
		<hr>
		<address class="lead">
		  <strong>Prixy, Inc.</strong><br>
		  40, Avenue des Sciences<br>
		  69007 Lyon<br>
		  Tel : 04.72.23.50.00<br>
		  email : contact.pro@prixy.fr<br>
		</address>
	  </div>
	  <div class=" plan hidden-xs col-lg-6 text-center">
		<h1 class="adresseacces">Plan d'Accès</h1>
		<hr>
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2782.311388416495!2d4.880600615804721!3d45.78498902000136!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47f4c01935fe5dc9%3A0xec3fc9284490715d!2s40+Rue+des+sciences%2C+69100+Villeurbanne!5e0!3m2!1sfr!2sfr!4v1457280339673" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
	  </div>

	</div>


	<!--FORMULAIRE-->

	<div class="container" style="margin-top:80px;" >
	  <form class="form-horizontal formulaire" role="form" method="post" action="#">
	  <fieldset>

	  <!-- Form Name -->
	  <h1 class="text-center">Formulaire de contact</h1>
	  <div class="help-block text-center">Tous les champs avec * doivent être remplies</div>
	  <hr>

	  <!-- Text input-->
	  <div class="form-group">
		<label class="col-md-4 control-label" for="textinput">Nom *</label>  
		<div class="col-md-4">
			<input id="textinput" name="nom" type="text" placeholder="" class="form-control input-md" required = "">
			
		</div>
	  </div>

	  <!-- Text input-->
	  <div class="form-group">
		<label class="col-md-4 control-label" for="textinput">Prénom *</label>  
		<div class="col-md-4">
			<input id="textinput" name="prenom" type="text" placeholder="" class="form-control input-md" required = "">
			
		</div>
	  </div>

	<!-- Text input-->

	  <div class="form-group">
		<label class="col-md-4 control-label" for="textinput">E-mail *</label>  
		<div class="col-md-4">
			<input id="textinput" name="mail" type="email" placeholder="exemple@exemple.fr" class="form-control input-md">		
			<?php echo $errMail; ?>
		</div>
	  </div>

	  <!-- Textarea -->
	  <div class="form-group">
		<label class="col-md-4 control-label" for="textarea">Message *</label>
		<div class="col-md-4">                     
		  <textarea class="form-control" id="textarea" name="message" placeholder="Ecrivez votre message ici ..."></textarea>
			<?php echo $errMessage; ?>
		</div>
	  </div>

	  <!-- Checkboxes -->
	  <div class="form-group">
		<label class="col-md-4 control-label" for="checkboxes">Copie du message </label>
		<div class="col-md-4">
		  <label class="checkbox-inline" for="checkboxes-0">
			<input type="checkbox" name="cbCopie" id="checkboxes-0" value="1">
			Oui
		  </label>	  
		</div>
	  </div>
	  
	  <!-- Are you a human ? -->
	  <div class="form-group">
		<label for="human" class="col-md-4 control-label"> 
			<?php 
				$nb1 = GenererNombreAleatoire();
				$nb2 = GenererNombreAleatoire();
				$resHuman = $nb1 + $nb2;
				echo "$nb1 + $nb2 *";
			?> 
		</label>
		<div class="col-md-4">
			<input type="text" class="form-control" id="human" name="human" placeholder="Votre Réponse" required = "">		
			<?php 		
				echo "<input type='hidden' name='resHuman' value='$resHuman'>";				
				echo $errHuman; 			
			?>		
		</div>
	  </div>

	  <!-- Button -->
	  <div class="form-group">
		<label class="col-md-4 control-label" for="singlebutton"></label>
		<div class="col-md-4">
			<button id="singlebutton" name="envoyer" class="btn btn-primary">Envoyer</button>
			<?php	
				if ($resHuman == isset($human))
				{				
				//Fonctionne que si l'on n'est pas en local.
				//EnvoieFormulaire($nom, $prenom, $mail, $message, $cbCopie, $human);
				}
			?>
		</div>
	  </div>

	  </fieldset>
	  </form>
	</div>

	<div class="container" style="margin-top:60px;">
	  <div class="row formulaire partenaires">
		<div class="col-lg-12 col-xs-12 text-center">
		  <h1>PARTENAIRES</h1>
		  <hr>
		  <div class="row">
			<div class="col-lg-4 col-md-6 col-xs-12">
			  <a href="#"><img src="bootstrap/img/microsoft.jpg" class="thumbnail partenaire" width="250px" height="150px"></a>
			</div>
			<div class="col-lg-4 col-md-6 col-xs-12">
			  <a href="#"><img src="bootstrap/img/sap.jpg" class="thumbnail partenaire" width="250px" height="150px"></a>
			</div>
			<div class="col-lg-4 col-md-6 col-xs-12">
			 <a href="#"><img src="bootstrap/img/cisco.jpg" class="thumbnail partenaire" width="250px" height="150px"></a>
			</div>
			<div class="col-lg-4 col-md-6 col-xs-12">
			  <a href="#"><img src="bootstrap/img/samsung.jpg" class="thumbnail partenaire" width="250px" height="150px"></a>
			</div>
			<div class="col-lg-4 col-md-6 col-xs-12">
			  <a href="#"><img src="bootstrap/img/google.jpg" class="thumbnail partenaire" width="250px" height="150px"></a>
			</div>
			<div class="col-lg-4 col-md-6 col-xs-12">
			  <a href="#"><img src="bootstrap/img/ldlc.jpg" class="thumbnail partenaire" width="250px" height="150px"></a>
			</div>
			<div class="col-lg-4 col-md-6 col-xs-12">
			  <a href="#"><img src="bootstrap/img/intel.jpg" class="thumbnail partenaire" width="250px" height="150px"></a>
			</div>
			<div class="col-lg-4 col-md-6 col-xs-12">
			  <a href="#"><img src="bootstrap/img/vmware.jpg" class="thumbnail partenaire" width="250px" height="150px"></a>
			</div>
			<div class="col-lg-4 col-md-6 col-xs-12">
			  <a href="#"><img src="bootstrap/img/nvidia.jpg" class="thumbnail partenaire" width="250px" height="150px"></a>
			</div>

		  </div>
		</div>
	  </div>
	</div>

	<?php include ('footer.php'); ?>

	</body>
</html>