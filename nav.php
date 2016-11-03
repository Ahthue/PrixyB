<?php require "localization.php"; ?>

<head>
      <title>Prixy | Formation</title>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="icon" href="../bootstrap/img/favicon.png">
      <script src="./bootstrap/js/jquery-1.12.1.min.js"></script>
      <script src="./bootstrap/js/bootstrap.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
      <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
      <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <link href="./bootstrap/fontawesome/css/font-awesome.min.css" rel="stylesheet">
      <link href="./bootstrap/css/style.css" rel="stylesheet">
  </head>

<!--NAVIGATION-->

<!--CATEGORIE MENU-->

<nav class="navbar navbar-header navbar-fixed-top navbar-inverse">
  <span class="nav-brand">
    <a href="/PrixyPPE/index.php" class="navbar-brand">Prixy</a>
  </span>
    <ul class="nav navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="/PrixyPPE/index.php">
          <span class="glyphicon glyphicon-home">
            
          </span> &nbsp;&nbsp; <?php print T_("Accueil"); ?>
        </a> 
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/PrixyPPE/equipe.php">
          <span class="glyphicon glyphicon glyphicon-globe">
            
          </span> &nbsp;&nbsp; <?php print T_("L'équipe"); ?>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/PrixyPPE/formations.php">
          <span class="glyphicon glyphicon-book">
            
          </span> &nbsp;&nbsp; <?php echo T_("Formations"); ?>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/PrixyPPE/contact.php">
          <span class="glyphicon glyphicon-user">
            
          </span> &nbsp;&nbsp;<?php echo T_("Contact"); ?> &amp; <?php echo T_("Partenaires"); ?>
        </a>
      </li>

<!--SOCIAL NETWORK-->

      <li class="nav-item hidden-sm hidden-xs">
        <a class="nav-link" href="#" title="Facebook">
          <i class="fa fa-facebook fa-lg"></i>
        </a>
      </li>
      <li class="nav-item hidden-sm hidden-xs">
        <a class="nav-link"  href="#" title="Twitter">
          <i class="fa fa-twitter fa-lg"></i>
        </a> 
      </li>
      <li class="nav-item hidden-sm hidden-xs">
        <a class="nav-link"  href="#" title="LinkedIn">
          <i class="fa fa-linkedin fa-lg"></i>
        </a> 
      </li>
      <li class="nav-item hidden-sm hidden-xs">
        <a class="nav-link" href="#" title="Youtube">
          <i class="fa fa-youtube fa-lg"></i>
        </a>
      </li>
      <li class="nav-item hidden-sm hidden-xs">
        <a class="nav-link" href="#" title="Pinterest">
          <i class="fa fa-pinterest-p fa-lg"></i>
        </a>
      </li>

     

  

<!--BARRE RECHERCHE-->

    <form class="navbar-form pull-lg-right pull-right barrechercher">
      <div class="btn-group" role="group">
        <a href="connexion.php" class="btn btn-md btn-primary" role="button"><?php print T_("Connexion"); ?></a>

        <!-- <button type="button" class="btn btn-md btn-primary pull-right" title="Connexion" data-toggle="popover" data-placement="bottom" data-trigger="focus" data-content="Je sais pas faire" >Connexion</button> -->
        <a href="inscription.php" class="btn btn-md btn-primary" role="button"><?php print T_("Inscription"); ?></a>

        <!--<input type="text" class="form-control rechercher" placeholder="Rechercher ...">
        <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search "></span></span><span class="hidden-lg">Chercher</span></button>-->
      </div>
     </form>
     <li>
     <div class="btn-group btn_langue">
        <button type="button" class="btn btn-primary"><?php echo T_("Langue"); ?></button>
        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
          <span class="caret"></span>
        </button>
        <ul class="dropdown-menu" role="menu">
          <li><a href="?lang=fr_FR?" onClick="OnClick();"><?php echo T_("Français"); ?></a></li>
          <li><a href="?lang=en_US"><?php echo T_("Anglais"); ?></a></li>
        </ul>
      </div>
    </li>
   </ul>
</nav>    
