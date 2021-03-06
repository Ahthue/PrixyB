<!-- Page en lien des formations créer par Jonathan MARTINS du groupe B en PPE -->
<!-- Page modifié par ludovic barthelemi-->

<!DOCTYPE html lang="fr">
<html>
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
			
			//Traitement de la référence
			echo '<div class="container">';						
				//requête pour le nom de la formation séléctionné
				$req_sql = execSQL('SELECT * FROM FORMATION F 											
												WHERE F.ref_form="'.$_GET['ref'].'";');
				foreach ($req_sql as $values)
				{
					echo '<h1 class="text-center">' . $values[4]. '</h1>';			
				}
				echo '<div class="container col-lg-8 col-sm-8">';
					//requête pour les programmes détaillé de la formation séléctionné
					$req_sql1 = execSQL('SELECT * FROM PROG P										
													INNER JOIN FORMATION F ON F.ref_form= P.ref_form
													WHERE F.ref_form="'.$_GET['ref'].'";');
					
					//requête pour les sous_programme détaillé de la formation séléctionné
					$req_sql2 = execSQL('SELECT * FROM SOUS_PROG SP
													INNER JOIN PROG P ON P.id_prog = SP.id_prog
													INNER JOIN FORMATION F ON F.ref_form= P.ref_form
													WHERE F.ref_form="'.$_GET['ref'].'";');	
					
					//Boucles faisant l'affichage du programme et du sous programme
					
					echo '<h2>Programme détaillé de la formation : </h2>';
					foreach($req_sql1 as $values1)
					{
						if($values1[3] == $_GET['ref'])
						{
							$ref_prog = $values1[0];
							echo '<h3>◘ ' .$values1[1]. '</h3>';
							foreach ($req_sql2 as $values2)
							{			
								if($values2[3] == $_GET['ref'] && $values2[2] == $ref_prog)
									echo '<p> &nbsp ► ' .$values2[1]. '</p>';
							}		
						}
					}
				echo '</div>';
				
				echo '<div class="container col-lg-4 col-sm-4">';
					//requête pour la catégorie de la formation séléctionné
					$req_sql3 = execSQL('SELECT * FROM CATEGORIE CA
													INNER JOIN APPARTENIR A ON A.id_categ = CA.id_categ
													INNER JOIN FORMATION F ON F.ref_form = A.ref_form
													WHERE F.ref_form="'.$_GET['ref'].'";');	
						
					//Afficher le domaine de la formation	
					foreach ($req_sql3 as $values3)
					{
						echo '<h2>' .'Domaine : ' .'</h2>';
						echo  '<h4>' .$values3[1]. '</h4>';
					}
					echo '<hr>';
					
					//requête pour les objectifs de la formation séléctionné
					$req_sql7 = execSQL('SELECT * FROM OBJECTIF OB												
													INNER JOIN FORMATION F ON F.ref_form = OB.ref_form
													WHERE F.ref_form="'.$_GET['ref'].'";');	
						
					//Afficher le domaine de la formation	
					echo '<h2>' .'Objectif : ' .'</h2>';
					foreach ($req_sql7 as $values7)
					{					
						echo  '<h4>♦ ' .$values7[1]. '</h4>';
					}
					echo '<hr>';
					
					
					//requête pour les pré-requis à une formation.
					$req_sql4 = execSQL('SELECT * FROM NECESSITER N	
													INNER JOIN NECESSITER F ON F.ref_form = N.ref_form
													WHERE F.ref_form="'.$_GET['ref'].'";');	
					
					//Afficher le prérequis de la formation
					foreach($req_sql4 as $values4)
					{
						echo '<h2>' .'Pré-requis à la formation : ' .'</h2>';
						echo  '<h4>' .$values4[1]. '</h4>';
					}
					echo '<hr>';
					
					//Afficher le type de public visé par cette formation
					foreach($req_sql as $values)
					{
						echo '<h2>' .'Type de Public : ' .'</h2>';
						echo  '<h4>' .$values[3]. '</h4>';
					}
					echo '<hr>';
				
					//requête pour la certification de la formation séléctionné
					$req_sql5 = execSQL('SELECT * FROM CERTIFICATION CE
													INNER JOIN DELIVRER D ON D.id_certif = CE.id_certif
													INNER JOIN FORMATION F ON F.ref_form = D.ref_form
													WHERE F.ref_form="'.$_GET['ref'].'";');	
						
					//Afficher la certification de la formation	
					foreach ($req_sql5 as $values5)
					{
						echo '<h2>' .'Délivre une certification : ' .'</h2>';
						echo  '<h4>' .$values5[2]. '</h4>';
					}
					echo '<hr>';
				
					//Afficher la durée de la formation
					foreach($req_sql as $values)
					{
						echo '<h2>' .'Durée de la formation : ' .'</h2>';
						$heure = (int)$values[1] * 7; //7 étant le nombre d'heure proposé dans une journée de formation
						echo  '<h4>' .$values[1]. ' jour(s) soit ' .$heure. ' heures !</h4>'; 
					}
					echo '<hr>';
						
					//Afficher le tarif de la formation	
					foreach($req_sql as $values)
					{
						echo '<h2>' .'Tarif de la formation : ' .'</h2>';
						echo  '<h4>' .$values[2]. ' € </h4>';
					}
					
					//requête pour les sessions de la formation séléctionné
					$req_sql6 = execSQL('SELECT * FROM SESSION S
													INNER JOIN FORMATION F ON F.ref_form = S.ref_form
													WHERE F.ref_form="'.$_GET['ref'].'";');	
						
					//Afficher la liste des sessions de la formation
					echo '<h2>' .'Liste des Sessions : ' .'</h2>';
					foreach ($req_sql6 as $values6)
					{	
						$base_date = $values6[1];
						$new_date = date("d-m-Y", strtotime($base_date));	
						echo  '<h4>' .$new_date. '</h4>';
					}
					echo '<hr>';
					
				echo '</div>';
			echo '</div>';
		?>
		<?php include ('footer.php'); ?>
	</body>
</html>