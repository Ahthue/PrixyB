<?php require "localization.php"; ?>

<div class="navbar-header navbar-fixed-top navbar-inverse">
  <button data-toggle="collapse" data-target="#items_nav_container" class="navbar-toggle">
      <span class="sr-only">Afficher le menu</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
  </button>
  <h2 class="navbar-brand bgh2">PRIXY</h2>
  <div id="items_nav_container" class="items_nav collapse navbar-collapse">
    <a class="item_nav" href="/PrixyPPE/index.php">
      <span class="glyphicon glyphicon-home"> <b>Accueil</b></span>
    </a>
    <a class="item_nav" href="/PrixyPPE/equipe.php">
      <span class="glyphicon glyphicon-globe"> <b>L'équipe</b></span>
    </a>
    <a class="item_nav" href="/PrixyPPE/formations.php">
    <span class="glyphicon glyphicon-book"> <b>Formations</b></span>
    </a>
    <a class="item_nav" href="/PrixyPPE/contact.php">
      <span class="glyphicon glyphicon-user"> <b>Contact &amp; Partenaires</b></span>
    </a>
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
        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Langue <span class="caret"></span></button>
        <ul class="dropdown-menu" role="menu">
          <li><a href="?lang=fr_FR">Fr</a></li>
          <li><a href="?lang=en_US">An</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>