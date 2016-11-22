<?php require "localization.php"; ?>

<head>
      <title>Prixy | Formation</title>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="icon" href="../bootstrap/img/favicon.png">
      <script src="../bootstrap/js/jquery-1.12.1.min.js"></script>
      <script src="../bootstrap/js/bootstrap.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
      <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
      <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <link href="../bootstrap/fontawesome/css/font-awesome.min.css" rel="stylesheet">
      <link href="../bootstrap/css/style.css" rel="stylesheet">
  </head>

	<body>

    <div class="navbar-header navbar-fixed-top navbar-inverse">
      <div class="row">
        <div class="col-lg-12">
          <h2 class="navbar-brand bgh2">PRIXY</h2>
          <button data-toggle="collapse" data-target="#items_nav" class="navbar-toggle">
              <span class="sr-only">Afficher le menu</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <div class="items_nav collapse navbar-collapse">
            <a class="item_nav" href="/PrixyPPE/index.php">
            <span class="glyphicon glyphicon-home"> <b>Accueil</b> </span> </a>
            <a class="item_nav" href="/PrixyPPE/equipe.php">
            <span class="glyphicon glyphicon-globe"> <b>L'équipe</b> </span></a>
            <a class="item_nav" href="/PrixyPPE/formations.php">
            <span class="glyphicon glyphicon-book"> <b>Formations</b></span></a>
            <a class="item_nav" href="/PrixyPPE/contact.php">
            <span class="glyphicon glyphicon-user"> <b>Contact &amp; Partenaires</b></span></a>
            <!-- <a class="item_nav" href="#" title="Facebook">
            <i class="fa fa-facebook fa-lg"></i>
            </a>
            <a class="item_nav"  href="#" title="Twitter">
            <i class="fa fa-twitter fa-lg"></i>
            </a>
            <a class="item_nav"  href="#" title="LinkedIn">
            <i class="fa fa-linkedin fa-lg"></i>
            </a>
            <a class="item_nav" href="#" title="Youtube">
            <i class="fa fa-youtube fa-lg"></i>
            </a>
            <a class="item_nav" href="#" title="Pinterest">
            <i class="fa fa-pinterest-p fa-lg"></i>
            </a> -->
            <div class="buttons_grp">
              <div class="btn-group group_nav pull-right" role="group">
                <a href="connexion.php" class="btn btn-md btn-primary" role="button">Connexion</a>
                <a href="inscription.php" class="btn btn-md btn-primary" role="button">Inscription</a>
              </div>
              <div class="dropdown group_nav2 pull-right">
                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Langue
                <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" role="menu">
                <li><a href="?lang=fr_FR">Fr</a></li>
                <li><a href="?lang=en_US">An</a></li>
                </ul>
              </div>
            </div>
          </div> 
        </div>
      </div>
    </div>

  </body>

</html>