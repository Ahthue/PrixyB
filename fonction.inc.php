<!-- Fonction php créer par Jonathan MARTINS du groupe B en PPE -->
<!-- Page modifié par ludovic barthelemi-->

<?php

		include 'db.inc.php';
		
		$errMail = "";
		$errMessage = "";
		$errHuman = "";
		$resHuman = "";
		$mail = "";	
		$message = "";
		$human = "";		
		
		if (isset($_POST['envoyer']))
		{
			//$nom = $_POST['nom'];
			//$prenom = $_POST['prenom'];
			$mail = $_POST['mail'];
			$message = $_POST['message'];
			$human = $_POST['human'];

			// Vérification du mail
			if (($_POST['mail'] == '' ) && (!filter_var('coin@coin.fr', FILTER_VALIDATE_EMAIL)))		
			{
				$errMail = "<p class='text-danger' > Vous n'avez pas spécifié d'E-mail. </p>" ;
			}
			//Vérification du message
			if($_POST['message'] == '')
			{
				$errMessage = "<p class='text-danger' > Vous n'avez pas saisie le message. </p>" ;
			}
			//Vérification du résultat
			if ($_POST['resHuman'] !== $human)
			{
				$errHuman = "<p class='text-danger'> Vous vous êtes trompé ! </p>";								
			}
		}
	
	//Fonction lors de l'envoie d'un formulaire.
	function EnvoieFormulaire($nom, $prenom, $mail, $message, $cbCopie)
	{		
			$from = ("$nom $prenom"); 
			if (!$cbCopie)
			{
				$to = ("contact.pro@prixy.fr");
			}
			else
			{
				$to = ("contact.pro@prixy.fr");
				$too = ($mail);
			}
			$subject = 'Contacter par formulaire du site Prixy ';
			 
			$body = "De: $nom $prenom\n E-Mail: $mail\n Message:\n $message";
		
		return;
	}	
	
	//Fonction pour générer un nombre aléatoire.
	function GenererNombreAleatoire()
	{
		$nb = rand(0 , 30);
		return $nb;
	}
	
	function execSQL($sql)
	{
		switch(BDD_type)
		{
			case 'mysqli':		
				$mysqli = new mysqli(BDD_host, BDD_user, BDD_password, BDD_base);
				$result = mysqli_query($mysqli, $sql);
				$tab = mysqli_fetch_all($result);
				return $tab;
				break;
			
			case 'PDO':
				$connexion = new PDO('mysql:host='.BDD_host.';dbname='.BDD_base, BDD_user, BDD_password);
				$connexion->exec("SET NAMES 'UTF8'");
				$tab = $connexion->query($sql)->fetchAll();
				return $tab;
				break;
		}
	}
	
	//fonction pour la recherche de base/chargement de tout le catalogue.
	function catalogue()
	{
		$form_c = execSQL('SELECT * FROM formation ORDER BY 5;');
		foreach($form_c as $value_c)
		{			
			echo '<a href="page_formation.php?ref='.$value_c[0].'"> <div class="presentation_form">';
				echo '<h3 class="col-lg-12">' .$value_c[4] .'</h3> <br>';
				echo '<p class="col-lg-5 col-sm-6">' .$value_c[3] .'</p>';
				echo '<p class= "col-lg-5 col-sm-6">' .$value_c[1] .' jour(s) </p></br>';
			echo '</div> </a>';
		}		
	}
	
	//fonction pour la recherche à la demande de l'utilisateur après séléction des critère de recherche.
	function rechercheCatag()	
	{
		$req = " SELECT * FROM FORMATION F ";
		$inner = " INNER JOIN APPARTENIR A ON F.ref_form = A.ref_form 
					INNER JOIN CATEGORIE CA ON A.id_categ = CA.id_categ 
					INNER JOIN SESSION S ON S.ref_form = F.ref_form ";
		$doom = " WHERE ";
		$req_sql = $req . $inner;
				
		if(isset($_GET['recherche']))
		{
			if($_GET['domaine'] !== '')
			{ 				
				$domaine = " type_categ = '" .$_GET['domaine']. "' ";				
				$req_sql =  $req_sql . $doom . $domaine;
				$doom = " AND ";				
			}		

			if($_GET['reference'] !== '')
			{				
				$reference = " F.ref_form LIKE '" .$_GET['reference']. "%' ";
				$req_sql = $req_sql . $doom . $reference;
				$doom = " AND ";
			}
			
			if($_GET['date'] !== '')
			{
				$date = " date_sess = STR_TO_DATE('" .$_GET['date']. "', '%Y-%m-%d') ";
				$req_sql = $req_sql . $doom . $date;
				$doom = " AND ";
			}
			
			if($_GET['duree'] !== '')
			{
				$duree = " duree_form = '" .$_GET['duree']. "' ";
				$req_sql = $req_sql . $doom . $duree;
				$doom = " AND ";
			}
			
			if($_GET['niveau'] !== '')
			{
				$niveau = " type_public_form LIKE '" .$_GET['niveau']. "' ";
				$req_sql = $req_sql . $doom . $niveau;
				$doom = " AND ";
			}						
		}
		
		$req_sql = execSQL($req_sql . " GROUP BY F.ref_form ORDER BY 5 ;");			
		if(count($req_sql) == 0)
		{
			echo '<div class="alert alert-danger text-center">';
				echo '<strong> Attention </strong> Il n\'y a pas de formation disponible avec ces conditions de recherches.';
			echo '</div>';
		}
		else
		{
			foreach($req_sql as $value_r)
			{			
				echo '<a href="page_formation.php?ref='.$value_r[0].'"> <div class="presentation_form">';
					echo '<h2 class="col-lg-offset-3 col-sm-offset-2">' .$value_r[4] .'</h2> <br>';
					echo '<p class="col-lg-5 col-sm-6">' .$value_r[3] .'</p>';
					echo '<p class= "col-lg-5 col-sm-6">' .$value_r[1] .' jour(s) </p></br>';
				echo '</div> </a>';
			}
		}
	}
?>