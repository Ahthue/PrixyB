<!--formations.html par ludovic barthelemi du Groupe B en PPE-->
<!-- Modifié par Jonathan MARTINS du groupe B en PPE -->

<!DOCTYPE html>
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
			include('nav.php');
			include ('fonction.inc.php');	

		?>

		<!--SUR MESURE-->

		<div class="container adresse formations" style="margin-top:150px;" id="formations2">
			<div class="col-lg-12">
				<h1>Formation " Sur mesure "</h1>
				<hr>
				<p class="text-center surmesure">Pour répondre à un besoin de formation précis, PRIXY
				organise un entretien de cadrage pour définir avec son client un contenu spécifique
				et proposer un programme détaillé prenant en compte le contexte du projet, le profil
				des apprenants, les disponibilités...<br>
				La formation sur-mesure est exclusivement réservée aux collaborateurs de l’entreprise
				cliente ; elle se déroule dans les locaux de PRIXY en plusieurs sessions le cas échéant
				</p>
				<h2 class="formacontact"><a href="contact.php"><kbd>CONTACT</kbd></a></h2>
			</div>
		</div>


		<!--CATALOGUE-->

		<div class="container formations2" style="margin-top:150px;" id="formations2">
			<form class="form-horizontal">
				<fieldset>

					<!-- Form Name -->
					<h1>Formation " Catalogue "</h1>
					<hr>
					
					<!-- Select Basic -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="selectbasic">Domaines</label>
							<div class="col-md-4">
								<select id="selectbasic" name="domaine" class="form-control">
									<option value=""></option>
									<option value="Bureautique">Bureautique</option>
									<option value="Multimédia">Multimédia</option>
									<option value="CAO/PAO">CAO/PAO</option>
									<option value="Progiciel de gestion">Progiciel de gestion</option>
									<option value="Gestion Projet">Gestion Projet</option>
									<option value="Management d\'équipe">Management d'équipe</option>
								</select>
							</div>
						</div>

					<!-- Search input-->
					<div class="form-group">
						<label class="col-md-4 control-label" for="searchinput">Référence</label>
						<div class="col-md-4">
							<input id="searchinput" name="reference" type="search" class="form-control input-md">
							<p class="help-block">ex : B201</p>
						</div>
					</div>

					<!--Date-->
					<div class="form-group">
						<label class="col-md-4 control-label" for="searchinput">Date de début</label>
						<div class="col-md-4">
							<input type="date" name="date" class="date" class="">
						</div>
					</div>


					<!-- Select Basic -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="selectbasic">Durée</label>
						<div class="col-md-4">
							<select id="selectbasic" name="duree" class="form-control">
								<option value=""> </option>
								<option value="1">1 jour</option>
								<option value="2">2 jours</option>
								<option value="3">3 jours</option>
								<option value="4">4 jours</option>
								<option value="5">5 jours</option>
								<option value="6">6 jours</option>
								<option value="7">7 jours</option>
								<option value="8">8 jours</option>
								<option value="9">9 jours</option>
								<option value="10">10 jours</option>
							</select>
					  </div>
					</div>

					
					<!-- Select Basic -->
					<!--<div class="form-group">
					  <label class="col-md-4 control-label" for="selectbasic">Outils</label>
					  <div class="col-md-4">
						<select id="selectbasic" name="selectbasic" class="form-control">
						  <option value="1"></option>
						  <option value="2">Excel</option>
						  <option value="3">Word</option>
						  <option value="4">Paint</option>
						  <option value="5">Wordpress</option>
						  <option value="6">Sublim Text 2</option>
						  <option value="7">Visual Studio</option>
						  <option value="8">Google</option>
						</select>
					  </div>
					</div>-->

					<!-- Select Basic -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="selectbasic">Niveau</label>
						<div class="col-md-4">
							<select id="selectbasic" name="niveau" class="form-control">
								<option value=""></option>
								<option value="D%">Débutant</option>
								<option value="U%">Intermédiaire</option>
								<option value="E%">Expert</option>
							</select>
						</div>
					</div>

					<!-- Button -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="singlebutton"></label>
							<div class="col-md-4">
								<button id="singlebutton" name="recherche" class="btn btn-primary">Recherche</button>
								<br><hr>
								
							</div>
					</div>
				</fieldset>
			</form>
		</div>

		<!-- Ajout de la liste des formations -->
		<div class="container">
			<?php
				if(isset($_GET['recherche'] ))
				{				
					echo rechercheCatag();
				}	
				else			
				{
					echo catalogue();					
				}
			?>
		</div>
				
		<?php include ('footer.php'); ?>

	</body>
</html>