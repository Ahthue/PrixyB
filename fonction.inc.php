<!-- Fonction php créer par Jonathan MARTINS du groupe B en PPE -->
<!-- Page modifié par ludovic barthelemi-->

<?php

		include 'db.inc.php';
		
		//Fonction de connexion à la BDD
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
		
		// Fonction qui permet de faire une insertion par rapport à une reqûête SQL en paramètre
		function execSQL_insert($requete)
		{
			switch (BDD_TYPE) 
			{
				case 'mysqli':

					$mysqli = new mysqli(BDD_HOST, BDD_USER, BDD_PASSWORD, BDD_BASE);
					$mysqli->set_charset("utf8");
					mysqli_query($mysqli, $requete);
					mysqli_close($mysqli);
					break;
				
				case 'PDO':

					$connexion = new PDO('mysql:host='. BDD_HOST .';dbname='. BDD_BASE . ";charset=utf8", BDD_USER, BDD_PASSWORD, array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'utf8\''));
					$connexion->exec("SET NAMES utf8");
					$connexion->query($requete);
					$connexion = null;
					break;
			}	
		}
		
		// Fonction injection SQL
		function injec_SQL($post)
		{
			// Remplace les ' par des \'
			if (preg_match("/'/i", "$post")) 
			{ 
				$post = str_replace("'", "\'", strtolower($post));
			}

			// Remplace les " par des \"
			if (preg_match('/"/i', "$post")) 
			{ 
				$post = str_replace('"', '\"', strtolower($post));
			}

			// Remplace les select par des selects
			if (preg_match("/select/i", "$post")) 
			{ 
				$post = str_replace("select ", "selects ", strtolower($post));
			}

			// Remplace les from par des froms
			if (preg_match("/from/i", "$post")) 
			{ 
				$post = str_replace("from ", "froms ", strtolower($post));
			}

			// Remplace les delete par des deletes
			if (preg_match("/delete/i", "$post")) 
			{ 
				$post = str_replace("delete ", "deletes ", strtolower($post));
			}

			// Remplace les drop par des drops
			if (preg_match("/drop/i", "$post")) 
			{ 
				$post = str_replace("drop ", "drops ", strtolower($post));
			}

			// Remplace les update par des updates
			if (preg_match("/update/i", "$post")) 
			{ 
				$post = str_replace("update ", "updates ", strtolower($post));
			}

			// Remplace les insert into par des inserts into
			if (preg_match("/insert into/i", "$post")) 
			{ 
				$post = str_replace("insert into", "inserts into", strtolower($post));
			}

			// Remplace les union par des unions
			if (preg_match("/union/i", "$post")) 
			{ 
				$post = str_replace("union ", "unions ", strtolower($post));
			}

			// Remplace les view par des views
			if (preg_match("/view/i", "$post")) 
			{ 
				$post = str_replace("view ", "views ", strtolower($post));
			}
			return $post;
		}
		
		
		// ** Contact **
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
		
		//fonction pour la recherche de base/chargement de tout le catalogue.
		function catalogue()
		{
			$form_c = execSQL('SELECT ref_form, nom_form, duree_form, tarif_form, type_public_form, langue_form FROM FORMATION ORDER BY 5;');
			foreach($form_c as $value_c)
			{			
				echo '<a href="page_formation.php?ref='.$value_c[0].'"> <div class="presentation_form">';
					echo '<h3 class="col-lg-12">' .$value_c[1] .'</h3> <br>';
					echo '<p class="col-lg-5 col-sm-6">' .$value_c[3] .'</p>';
					echo '<p class= "col-lg-5 col-sm-6">' .$value_c[2] .' jour(s) </p></br>';
				echo '</div> </a>';
			}		
		}
		
		//fonction pour la recherche à la demande de l'utilisateur après séléction des critère de recherche.
		function rechercheCatag()	
		{
			$req = " SELECT ref_form, nom_form, duree_form, tarif_form, type_public_form, langue_form FROM FORMATION F ";
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

		//Fonction pour l'internationnalisation
		function change_langue($langue, $page)
		{
			$req_langue = execSQL('SELECT texte_str, id_str	
						FROM STRING 
						WHERE langue_str="'.$langue.'" 
						AND page_str="'.$page.'";');

			$str = array();
													
			foreach($req_langue as $v)
			{
				$str[$v[1]] = $v[0];
			}
			
			return $str;
		}
		
		
		// ** Inscription **
		// 	Initialisation des variables (bcp de variables :( )
		$nom = null;
		$prenom = null;
		$sexe = null;
		$dateNaiss = null;
		$mail = null;
		$adr = null;
		$cp = null;
		$ville = null;
		$login = null;
		$mdp = null;
		$confMdp = null;
		$errLogin = null;
		$errMdp = null;
		$inscrire = true;
		
		// Vérifie si on a appuyer sur valider => récupère les valeur des champs de saisis
		if (isset($_POST["validerInscription"])) 
		{ 
			//$mysqli = new mysqli(BDD_HOST, BDD_USER, BDD_PASSWORD, BDD_BASE);
			$nom = addslashes(injec_SQL($_POST['nom'])); //filter_input(INPUT_POST, 'nom', FILTER_SANITIZE_STRING); $nom = mysqli_real_escape_string(strip_tags(stripslashes($nom))); var_dump($nom);
			$prenom = addslashes(injec_SQL($_POST['prenom']));
			$dateNaiss =  date_format(date_create($_POST['ddn']),'d/m/Y');
			$mail = addslashes(injec_SQL($_POST['mail'])); 
			$adr = addslashes(injec_SQL($_POST['adr']));
			$cp = injec_SQL($_POST['cp']);
			$ville = addslashes(injec_SQL($_POST['ville']));
			$login = addslashes(injec_SQL($_POST['login']));
			$mdp = $_POST['mdp'];
			$confMdp = $_POST['conf_mdp'];
			$tel_fixe = injec_SQL($_POST['tel_fixe']);
			$tel_mobile = injec_SQL($_POST['tel_mobile']);
			
			// Si sexe choisit => sexe pris en compte, sinon => sexe pas pris en compte (null)
			if (!isset($_POST['radio'])) 
				$sexe = "non renseigné";
			else
				$sexe = $_POST['radio']; 
			
			$req_login = 'SELECT id_pers FROM PERSONNE WHERE login_pers="'.$login.'"';
			
			// Test si le login est déjà utilisé par un autre membre
			if(execSQL($req_login))
			{
				$errLogin = "<p class = 'col-lg-6 col-lg-offset-3 text-danger text-left'>Le login <b>$login</b> est déjà utilisé par un autre membre !</p>";
				$inscrire = false;
			}

			// Test si le mdp est pareil que la confirmation de mdp avec message d'erreur si pas le cas
			if ($mdp !== $confMdp) 
			{
				$errMdp = "<p class = 'col-lg-6 col-lg-offset-3 text-danger text-left'>Les deux mots de passe ne sont pas identiques !</p>";
				$inscrire = false;
			}

			// Requête d'insertion qui va renseigner les infos du membres dans la BDD       
			if($inscrire)
			{
				$req_insc = 'INSERT INTO PERSONNE(login_pers, nom_pers, prenom_pers, mdp_pers, email_pers, adresse, cp_pers, ville_pers, date_naissance_pers, sexe_pers, tel_fixe_pers, tel_mobile_pers)
									VALUES("'.$login.'", "'.$nom.'", "'.$prenom.'", "'.sha1($mdp).'", "'.$mail.'", "'.$adr.'", "'.$cp.'", "'.$ville.'", "'.$dateNaiss.'", "'.$sexe.'", "'.$tel_fixe.'", "'.$tel_mobile.'");';								
				execSQL($req_insc);	   

				echo '<script type="text/javascript"> 
				alert("Votre inscription a bien été prise en compte ! \nVous allez être redirigé vers la page de connexion !"); 
				document.location.href="connexion.php"; 
				</script>';   
			}
		}
		
		// Requête qui récupère tout les infos du client si il est connecté
		if(isset($_SESSION['id']))
		{
			$req_infos_membre = "SELECT nom_pers, prenom_pers, date_naissance_pers, sexe_pers, adresse, cp_pers, ville_pers, tel_fixe_pers, tel_mobile_pers, login_pers, mdp_pers, email_pers 
												FROM PERSONNE WHERE id_pers = '" . $_SESSION['id'] ."';";
			$infos_membre = execSQL($req_infos_membre);
		}
	
		
		// ** Traitement de la connexion **
		$pseudo = '';
		$pass_hache = '';
		$erreurConnexion = '';

		// On appuie sur le bouton valider => cela enclenche le traitement suivant pour la connexion
		if(isset($_POST['validerConnexion']))
		{
			// Definition des variables lorsque l'on a cliquer sur valider
			$pseudo = injec_SQL($_POST['login']);
			$pass_hache = sha1($_POST['mdp']);

			// Requête qui retourne l'id du membre qui essaye de se connecter
			$resultat = execSQL("SELECT id_pers FROM PERSONNE WHERE login_pers = '$pseudo' AND mdp_pers = '$pass_hache'");
			
			// Si aucun resultat, le membre n'existe pas dans la BDD donc message d'erreur (le membre s'est peut être trompé)			
			if (!$resultat)
			{
				$erreurConnexion = '<div class = "alert-danger col-lg-6 col-lg-push-3 col-sm-10 col-sm-push-1 col-xs-10 col-xs-push-1"><h4>Mauvais identifiant ou mot de passe !</h4></div>';
			}
			// Sinon on démarre une session où l'on va stocker ses identifiants pour les traiter par la suite dans la nav ou pour le profil
			else
			{
				session_start();
				$_SESSION['id'] = $resultat[0][0];
				$_SESSION['pseudonyme'] = $pseudo;
				$_SESSION['password'] = $pass_hache;					

				// Création des cookies (à faire plus tard)  ==> FAIT !
				if (isset($_POST['cookie']))
				{
					$expire = 365*24*3600;		
					setcookie('pseudo',$pseudo,time()+$expire);
					setcookie("pass", $_POST['mdp'],time()+$expire);
				}	
				if (!isset($_POST['cookie']))
				{
					if(isset($_COOKIE['pseudo']))
					{
						setCookie('pseudo', false, (time() - 3600), '/');
						unset($_COOKIE['pseudo']);
					}
					if(isset($_COOKIE['pass']))
					{
						setCookie('pass', false, (time() - 3600), '/');
						unset($_COOKIE['pass']);
					}
				}

				header("Location: index.php"); // Redirection vers la page d'accueil si les identifiants sont valides
				exit;
			}
		}
	
?>