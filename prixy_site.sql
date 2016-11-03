CREATE DATABASE IF NOT EXISTS Prixy_Site;
USE Prixy_Site;

-- Table: FORMATION --

CREATE TABLE FORMATION
(
        ref_form         Varchar (15) NOT NULL ,
		nom_form 		 Varchar(500),
        duree_form       float (8, 2) ,
        tarif_form       Float (10,2),        
        type_public_form Varchar (140),
        PRIMARY KEY (ref_form )		
);

-- Liens des formations sources --

-- formation B201 : pdf
-- formation B202 http://www.ib-formation.fr/catalogue/nbs-details/catref/universib-formations-bureautique-office-excel-powerpoint-excel/ref/b202/excel-graphiques-avances
-- formation CS53 http://www.ib-formation.fr/Catalogue/NBS-Details/guidkey/CS53
-- formation G7797 http://www.ib-formation.fr/catalogue/nbs-details/catref/universib-formations-metiers-multimedia-pao-cao-cao-dao/ref/g7797/autocad-autocad-lt-niveau-1
-- formation SAP21 http://www.ib-formation.fr/catalogue/nbs-details/catref/ib-editeurs-sap-sap-erp-financials/ref/sap21/sap-erp-financials-comptabilite-generale-clients-et-fournisseurs
-- formation SAP20 http://www.ib-formation.fr/catalogue/nbs-details/catref/ib-editeurs-sap-sap-erp-financials/ref/sap20/sap-erp-financials-comptabilite-financiere-et-reporting
-- formation MG740http://www.ib-formation.fr/catalogue/nbs-details/catref/universib-gouvernance-informatique-gestion-de-projets-et-methodes-referentiels-et-certifications/ref/mg740/prince2-foundation
-- formation MG741 http://www.ib-formation.fr/catalogue/nbs-details/catref/universib-gouvernance-informatique-gestion-de-projets-et-methodes-referentiels-et-certifications/ref/mg741/prince2-practitioner
-- formation G7829 http://www.ib-formation.fr/catalogue/nbs-details/catref/universib-formations-metiers-management-management-hierarchique-et-non-hierarchique/ref/g7829/manager-transversal
-- formation OB301 http://www.ib-formation.fr/catalogue/nbs-details/catref/universib-formations-informatiques-java-jee-c-c-developpement-dapplications/ref/ob301/developper-des-applications-web-java-avec-les-servlets-et-les-jsp

-- Insertion des formations --
INSERT INTO FORMATION(ref_form, nom_form, duree_form, tarif_form, type_public_form)
VALUES("B201","Formation Excel - Les bases : Tableaux, Graphiques, et Calculs fondamentaux.", "2", "620,00", "Débutant souhaitant devenir autonome");
INSERT INTO FORMATION(ref_form, nom_form, duree_form, tarif_form, type_public_form)
VALUES("B202", "Formation Excel - graphiques Avancés.", "1", "310,00", "Utilisateur moyen souhaitant devenir meilleur");
INSERT INTO FORMATION(ref_form, nom_form, duree_form, tarif_form, type_public_form)
VALUES("CS53", "Formation Mettre en oeuvre la sécurité des réseaux IOS Cisco (IINS).", "5", "3550,00", "Expert souhaitant validé leur acquis");
INSERT INTO FORMATION(ref_form, nom_form, duree_form, tarif_form, type_public_form)
VALUES("G7797", "Formation AUTOCAD/AUTOCAD LT - Niveau 1.", "4", "1820.00", "Utilisateur moyen souhaitant devenir meilleur");
INSERT INTO FORMATION(ref_form, nom_form, duree_form, tarif_form, type_public_form)
VALUES("SAP21", "Formation SAP ERP Financials - Comptabilité général clients et fournisseurs.", "5", "3400,00", "Expert sans validation des acquis");
INSERT INTO FORMATION(ref_form, nom_form, duree_form, tarif_form, type_public_form)
VALUES("SAP20", "Formation SAP ERP Financials - Comptabilité financière et reporting.", "5", "3400,00", "Utilisateur moyen souhaitant devenir meilleur");
INSERT INTO FORMATION(ref_form, nom_form, duree_form, tarif_form, type_public_form)
VALUES("MG740", "Formation PRINCE2 - Foundation", "3", "1915,00", "Utilisateur moyen souhaitant devenir meilleur");
INSERT INTO FORMATION(ref_form, nom_form, duree_form, tarif_form, type_public_form)
VALUES("MG741", "Formation PRINCE2 - Practitioner", "2", "1550,00", "Expert souhaitant validé leur acquis");
INSERT INTO FORMATION(ref_form, nom_form, duree_form, tarif_form, type_public_form)
VALUES("G7829", "Formation Manager Transversal", "8", "4395,00", "Débutant dans le domaine");
INSERT INTO FORMATION(ref_form, nom_form, duree_form, tarif_form, type_public_form)
VALUES("OB301", "Formation Développer des applications Web JAVA avec les servlets et les JSP", "4", "1930,00", "Utilisateur moyen souhaitant devenir meilleur");

-- Table: CATEGORIE --

CREATE TABLE CATEGORIE
(
        id_categ   Varchar (15) NOT NULL ,
        type_categ Varchar (140) ,
        PRIMARY KEY (id_categ )
		
);

--Insertion des catégories --
INSERT INTO CATEGORIE
VALUES("CA1", "Bureautique");
INSERT INTO CATEGORIE
VALUES("CA2", "Multimédia");
INSERT INTO CATEGORIE
VALUES("CA3","CAO/PAO");
INSERT INTO CATEGORIE
VALUES("CA4","Progiciel de Gestion");
INSERT INTO CATEGORIE
VALUES("CA5","Gestion de Projet");
INSERT INTO CATEGORIE
VALUES("CA6","Management d\'équipe");


-- Table: CERTIFICATION --

CREATE TABLE CERTIFICATION
(
        id_certif      Varchar (15) NOT NULL ,
        delivre_certif Bool ,
        titre_certif   Varchar (140) ,
        PRIMARY KEY (id_certif )
);

-- Insertion des certifications La valeur CE1 permettant d'attribuer aucune certification --
INSERT INTO CERTIFICATION
VALUES("CE1", "false", "La formation ne délivre pas de certification");
INSERT INTO CERTIFICATION
VALUES("CE2", "true", "TOSA excel  - Niveau Basique");
INSERT INTO CERTIFICATION
VALUES("CE3", "true", "CCNA Security");
INSERT INTO CERTIFICATION
VALUES("CE4", "true", "PRINCE2 - FOUNDATION");
INSERT INTO CERTIFICATION
VALUES("CE5", "true", "PRINCE2 - PRACTITIONER");

-- Table: APPARTENIR --

CREATE TABLE APPARTENIR
(
        ref_form Varchar (15) NOT NULL ,
        id_categ Varchar (15) NOT NULL ,
        PRIMARY KEY (ref_form ,id_categ ),
		CONSTRAINT FK_APPARTENIR_ref_form FOREIGN KEY (ref_form) REFERENCES FORMATION(ref_form),
		CONSTRAINT FK_APPARTENIR_id_categ FOREIGN KEY (id_categ) REFERENCES CATEGORIE(id_categ)
);

-- Insertion pour savoir à quelle catégorie appartiens une formation --
INSERT INTO APPARTENIR
VALUES("B201","CA1");
INSERT INTO APPARTENIR
VALUES("B202","CA1");
INSERT INTO APPARTENIR
VALUES("CS53","CA2");
INSERT INTO APPARTENIR
VALUES("G7797","CA3");
INSERT INTO APPARTENIR
VALUES("SAP21","CA4");
INSERT INTO APPARTENIR
VALUES("SAP20","CA4");
INSERT INTO APPARTENIR
VALUES("MG740","CA5");
INSERT INTO APPARTENIR
VALUES("MG741","CA5");
INSERT INTO APPARTENIR
VALUES("G7829","CA6");
INSERT INTO APPARTENIR
VALUES("OB301","CA2");

-- Table: DELIVRER --

CREATE TABLE DELIVRER
(
        ref_form  Varchar (15) NOT NULL ,
        id_certif Varchar (15) NOT NULL ,
        PRIMARY KEY (ref_form ,id_certif ),
		CONSTRAINT FK_DELIVRER_ref_form FOREIGN KEY (ref_form) REFERENCES FORMATION(ref_form),
		CONSTRAINT FK_DELIVRER_id_certif FOREIGN KEY (id_certif) REFERENCES CERTIFICATION(id_certif)
);

-- Insertion permettant de connaitre quelle certification est délivré en fin de formation (CE1 si aucune certification) --
INSERT INTO DELIVRER
VALUES("B201", "CE2");
INSERT INTO DELIVRER
VALUES("B202", "CE1");
INSERT INTO DELIVRER
VALUES("CS53", "CE3");
INSERT INTO DELIVRER
VALUES("G7797", "CE1");
INSERT INTO DELIVRER
VALUES("SAP21", "CE1");
INSERT INTO DELIVRER
VALUES("SAP20", "CE1");
INSERT INTO DELIVRER
VALUES("MG740", "CE4");
INSERT INTO DELIVRER
VALUES("MG741", "CE5");
INSERT INTO DELIVRER
VALUES("G7829", "CE1");
INSERT INTO DELIVRER
VALUES("OB301", "CE1");

-- Table: NECESSITER --

CREATE TABLE NECESSITER
(
        ref_form           Varchar (15) NOT NULL ,
        ref_form_form Varchar (15) NOT NULL ,
        PRIMARY KEY (ref_form ,ref_form_form ),
		CONSTRAINT FK_NECESSITER_ref_form FOREIGN KEY (ref_form) REFERENCES FORMATION(ref_form),
		CONSTRAINT FK_NECESSITER_ref_form_FORMATION FOREIGN KEY (ref_form_form) REFERENCES FORMATION(ref_form)
);

-- Insertion permettant de connaitre si une formation nécessite d'en avoir suivie une autre. --

INSERT INTO NECESSITER
VALUES("B202", "B201");
INSERT INTO NECESSITER
VALUES("B201", "B200");
INSERT INTO NECESSITER
VALUES("CS53", "Aucune");
INSERT INTO NECESSITER
VALUES("G7797", "Aucune");
INSERT INTO NECESSITER
VALUES("SAP21", "SAP20");
INSERT INTO NECESSITER
VALUES("SAP20", "SAP01");
INSERT INTO NECESSITER
VALUES("MG740", "Aucune");
INSERT INTO NECESSITER
VALUES("MG741", "MG740");
INSERT INTO NECESSITER
VALUES("G7829", "Aucune");
INSERT INTO NECESSITER
VALUES("OB301", "OB300");


-- Table: SESSION --

CREATE TABLE SESSION
(
        id_sess   Varchar (15) NOT NULL ,
        date_sess Date,
        ref_form  Varchar (15) NOT NULL,
        PRIMARY KEY (id_sess ,ref_form ),
		CONSTRAINT FK_SESSION_ref_form FOREIGN KEY (ref_form) REFERENCES FORMATION(ref_form),
);

-- Insertion des sessions de la formation B201 --
INSERT INTO SESSION
VALUES("SS01", "2016/02/02", "B201");
INSERT INTO SESSION
VALUES("SS02", "2016/02/17", "B201");
INSERT INTO SESSION
VALUES("SS03", "2016/03/03", "B201");
INSERT INTO SESSION
VALUES("SS04", "2016/03/14", "B201");
INSERT INTO SESSION
VALUES("SS05", "2016/03/29", "B201");
INSERT INTO SESSION
VALUES("SS06", "2016/04/13", "B201");
INSERT INTO SESSION
VALUES("SS07", "2016/04/28", "B201");
INSERT INTO SESSION
VALUES("SS08", "2016/05/09", "B201");
INSERT INTO SESSION
VALUES("SS09", "2016/05/24", "B201");
INSERT INTO SESSION
VALUES("SS10", "2016/06/08", "B201");
INSERT INTO SESSION
VALUES("SS11", "2016/06/23", "B201");
INSERT INTO SESSION
VALUES("SS12", "2016/07/04", "B201");
INSERT INTO SESSION
VALUES("SS13", "2016/07/19", "B201");
INSERT INTO SESSION
VALUES("SS14", "2016/08/24", "B201");
INSERT INTO SESSION
VALUES("SS15", "2016/09/08", "B201");
INSERT INTO SESSION
VALUES("SS16", "2016/09/19", "B201");

-- Insertion des sessions de la formation B202 --
INSERT INTO SESSION
VALUES("SS01", "2016/04/28", "B202");
INSERT INTO SESSION
VALUES("SS02", "2016/06/09", "B202");
INSERT INTO SESSION
VALUES("SS03", "2016/09/22", "B202");
INSERT INTO SESSION
VALUES("SS04", "2016/11/02", "B202");
INSERT INTO SESSION
VALUES("SS05", "2016/12/19", "B202");

-- Insertion des sessions de la formation CS53 --
INSERT INTO SESSION
VALUES("SS01", "2016/06/20", "CS53");
INSERT INTO SESSION
VALUES("SS02", "2016/09/05", "CS53");
INSERT INTO SESSION
VALUES("SS03", "2016/11/28", "CS53");

-- Insertion des session de la formation G7797 --
INSERT INTO SESSION
VALUES("SS01", "2016/05/09", "G7797");
INSERT INTO SESSION
VALUES("SS02", "2016/09/05", "G7797");
INSERT INTO SESSION
VALUES("SS03", "2016/10/03", "G7797");
INSERT INTO SESSION
VALUES("SS04", "2016/11/07", "G7797");
INSERT INTO SESSION
VALUES("SS05", "2016/12/12", "G7797");

-- Insertion des session de la formation SAP21 --
INSERT INTO SESSION
VALUES("SS01", "2016/05/30", "SAP21");
INSERT INTO SESSION
VALUES("SS02", "2016/06/27", "SAP21");
INSERT INTO SESSION
VALUES("SS03", "2016/07/18", "SAP21");
INSERT INTO SESSION
VALUES("SS04", "2016/08/22", "SAP21");
INSERT INTO SESSION
VALUES("SS05", "2016/09/12", "SAP21");
INSERT INTO SESSION
VALUES("SS06", "2016/10/17", "SAP21");
INSERT INTO SESSION
VALUES("SS07", "2016/11/21", "SAP21");
INSERT INTO SESSION
VALUES("SS08", "2016/12/19", "SAP21");

-- Insertion des session de la formation SAP20 --
INSERT INTO SESSION
VALUES("SS01", "2016/04/25", "SAP20");
INSERT INTO SESSION
VALUES("SS02", "2016/05/23", "SAP20");
INSERT INTO SESSION
VALUES("SS03", "2016/07/04", "SAP20");
INSERT INTO SESSION
VALUES("SS04", "2016/09/05", "SAP20");
INSERT INTO SESSION
VALUES("SS05", "2016/10/03", "SAP20");
INSERT INTO SESSION
VALUES("SS06", "2016/11/14", "SAP20");
INSERT INTO SESSION
VALUES("SS07", "2016/12/12", "SAP20");

-- Insertion des session de la formation MG740 --
INSERT INTO SESSION
VALUES ("SS01", "2016/06/13", "MG740");
INSERT INTO SESSION
VALUES ("SS02", "2016/07/04", "MG740");
INSERT INTO SESSION
VALUES ("SS03", "2016/09/05", "MG740");
INSERT INTO SESSION
VALUES ("SS04", "2016/10/24", "MG740");
INSERT INTO SESSION
VALUES ("SS05", "2016/11/21", "MG740");
INSERT INTO SESSION
VALUES ("SS06", "2016/11/28", "MG740");

-- Insertion des session de la formation MG741 --
INSERT INTO SESSION
VALUES ("SS01", "2016/06/16", "MG741");
INSERT INTO SESSION
VALUES ("SS02", "2016/07/07", "MG741");
INSERT INTO SESSION
VALUES ("SS03", "2016/09/08", "MG741");
INSERT INTO SESSION
VALUES ("SS04", "2016/10/27", "MG741");
INSERT INTO SESSION
VALUES ("SS05", "2016/11/24", "MG741");
INSERT INTO SESSION
VALUES ("SS06", "2016/12/01", "MG741");

-- Insertion des session de la formation G7829 --
INSERT INTO SESSION
VALUES("SS01", "2016/06/09", "G7829");
INSERT INTO SESSION
VALUES("SS02", "2016/08/07", "G7829");
INSERT INTO SESSION
VALUES("SS03", "2016/09/01", "G7829");
INSERT INTO SESSION
VALUES("SS04", "2016/09/29", "G7829");
INSERT INTO SESSION
VALUES("SS05", "2016/10/13", "G7829");
INSERT INTO SESSION
VALUES("SS06", "2016/11/07", "G7829");
INSERT INTO SESSION
VALUES("SS07", "2016/12/01", "G7829");
INSERT INTO SESSION
VALUES("SS08", "2016/12/08", "G7829");
INSERT INTO SESSION
VALUES("SS09", "2016/12/21", "G7829");
INSERT INTO SESSION
VALUES("SS10", "2017/01/05", "G7829");
INSERT INTO SESSION
VALUES("SS11", "2017/01/19", "G7829");
INSERT INTO SESSION
VALUES("SS12", "2017/02/16", "G7829");

-- Insertion des session de la formation OB301 --
INSERT INTO SESSION
VALUES("SS01", "2016/04/25", "OB301");
INSERT INTO SESSION
VALUES("SS02", "2016/06/06", "OB301");
INSERT INTO SESSION
VALUES("SS03", "2016/06/13", "OB301");
INSERT INTO SESSION
VALUES("SS04", "2016/06/20", "OB301");
INSERT INTO SESSION
VALUES("SS05", "2016/07/04", "OB301");
INSERT INTO SESSION
VALUES("SS06", "2016/10/10", "OB301");
INSERT INTO SESSION
VALUES("SS07", "2016/10/24", "OB301");
INSERT INTO SESSION
VALUES("SS08", "2016/11/07", "OB301");
INSERT INTO SESSION
VALUES("SS09", "2016/11/14", "OB301");
INSERT INTO SESSION
VALUES("SS10", "2016/11/28", "OB301");
INSERT INTO SESSION
VALUES("SS11", "2016/12/05", "OB301");


-- Table: OBJECTIF --

CREATE TABLE OBJECTIF
(
        id_obj   Varchar (15) NOT NULL ,
        lib_obj  Varchar (300),
        ref_form Varchar (15) NOT NULL,
        PRIMARY KEY (id_obj ,ref_form),
		CONSTRAINT FK_OBJECTIF_ref_form FOREIGN KEY (ref_form) REFERENCES FORMATION(ref_form)
);

-- Insertion des objectifs de la formation B201 --
INSERT INTO OBJECTIF
VALUES("OB01", "Savoir construire des tableaux en soignant leur mise en forme d'une facçon immédiate.", "B201");
INSERT INTO OBJECTIF
VALUES("OB02", "Comprendre comment analyser vos résultats à l\'aide de différents calculs.", "B201");
INSERT INTO OBJECTIF
VALUES("OB03", "Gagner du temps en modifiant simultanément plusieurs tableaux.", "B201");
INSERT INTO OBJECTIF
VALUES("OB04", "Savoir trier et filtrer des données dans une table.", "B201");
INSERT INTO OBJECTIF
VALUES("OB05", "Pouvoir présenter vos données sous forme de graphiques simples.", "B201");

-- Insertion des objectifs de la formation B202 --
INSERT INTO OBJECTIF
VALUES("OB01", "Savoir présenter des données chiffrées en utilisant les graphiques les plus adaptés.", "B202");
INSERT INTO OBJECTIF
VALUES("OB02", "Comprendre comment améliorer la lisibilité d\'un graphique.", "B202");
INSERT INTO OBJECTIF
VALUES("OB03", "Pouvoir créer des modèles de graphiques et de classeur pour gagner du temps.", "B202");

-- Insertion des objectifs de la formation CS53 --
INSERT INTO OBJECTIF
VALUES("OB01", "Identifier les éléments d'une stratégie de sécurité permettant de contrer les menaces pesant sur le Système d\'Information.", "CS53");
INSERT INTO OBJECTIF
VALUES("OB02", "Savoir mettre en oeuvre les contre-mesures de sécurité visant à protéger les différents éléments du réseau et de l\'infrastructure.", "CS53");
INSERT INTO OBJECTIF
VALUES("OB03", "Être en mesure de déployer et maintenir les technologies de contrôle et de maîtrise des menaces dans des réseaux de petite ou moyenne taille.", "CS53");
INSERT INTO OBJECTIF
VALUES("OB04", "Découvrir les stratégies et les technologies de sécurisation des connectivités VPN", "CS53");

-- Insertion des objectifs de la formation G7797 --
INSERT INTO OBJECTIF
VALUES("OB01", "Acquérir les bases essentielles du logiciel Autocad pour réaliser des plans et des dessins en 2D.", "G7797");
INSERT INTO OBJECTIF
VALUES("OB02", "Réaliser et produire des plans et des dessins techniques avec AUTOCAD.", "G7797");

-- Insertion des objectifs de la formation SAP21 --
INSERT INTO OBJECTIF
VALUES("OB01", "Acquérir les compétences nécessaires au paramétrage de base de la comptabilité générale, clients et fournisseurs.", "SAP21");

-- Insertion des objectifs de la formation SAP20 --
INSERT INTO OBJECTIF
VALUES("OB01", "Avoir une vue d\’ensemble des processus comptables, des entités organisationnelles et des données de base ainsi que les connexions avec les autres processus métiers.", "SAP20");

-- Insertion des objectifs de la formation MG740 --
INSERT INTO OBJECTIF
VALUES("OB01", "Identifier la constitution, les concepts et l\'application de la méthode de gestion de projets PRINCE2", "MG740");
INSERT INTO OBJECTIF
VALUES("OB02", "Reconnaître les composants, les techniques et les processus de PRINCE2 ainsi que leur interdépendance", "MG740");
INSERT INTO OBJECTIF
VALUES("OB03", "Disposer des connaissances nécessaires pour participer à un projet géré selon PRINCE2", "MG740");
INSERT INTO OBJECTIF
VALUES("OB04", "Passer l'examen PRINCE2 Foundation", "MG740");

-- Insertion des objectifs de la formation MG741 --
INSERT INTO OBJECTIF
VALUES("OB01", "Approfondir sa connaissance des processus, des composants et des techniques de PRINCE2", "MG741");
INSERT INTO OBJECTIF
VALUES("OB02", "Prendre connaissance des meilleures pratiques pour utiliser la méthode PRINCE2 dans la gestion de ses projets", "MG741");
INSERT INTO OBJECTIF
VALUES("OB03", "Savoir appliquer les concepts de la méthodologie PRINCE2® à un scénario", "MG741");
INSERT INTO OBJECTIF
VALUES("OB04", "Passer l’examen PRINCE2 Practitioner", "MG741");

-- Insertion des objectifs de la formation G7829 --
INSERT INTO OBJECTIF
VALUES("OB01", "Identifier les conditions d'un management transversal efficace.", "G7829");
INSERT INTO OBJECTIF
VALUES("OB02", "Mobiliser les acteurs concernés.", "G7829");
INSERT INTO OBJECTIF
VALUES("OB03", "Augmenter son pouvoir de persuasion pour manager et impliquer sans lien hiérarchique.", "G7829");
INSERT INTO OBJECTIF
VALUES("OB04", "Créer les conditions de la coopération en situation fonctionnelle.", "G7829");
INSERT INTO OBJECTIF
VALUES("OB05", "Adapter ses comportements de manager transversal pour plus d\'efficacité.", "G7829");
INSERT INTO OBJECTIF
VALUES("OB06", "Créer une relation de confiance avec les acteurs des missions transverses.", "G7829");

-- Insertion des objectifs de la formation OB301 --
INSERT INTO OBJECTIF
VALUES("OB01", "Comprendre concepts et enjeux des architectures Web.", "OB301");
INSERT INTO OBJECTIF
VALUES("OB02", "Comprendre et savoir évaluer l’architecture et la conception des principaux Framework Web du marché.", "OB301");
INSERT INTO OBJECTIF
VALUES("OB03", "Acquérir des savoir-faire pour concevoir, développer et déployer des applications web basées sur les technologies JSP et servlet.", "OB301");

-- Table: PROG --

CREATE TABLE PROG(
        id_prog  Varchar (15) NOT NULL ,
        lib_prog Varchar (140),
        ref_form Varchar (15) NOT NULL ,
        PRIMARY KEY (id_prog ,ref_form ),
		CONSTRAINT FK_PROG_ref_form FOREIGN KEY (ref_form) REFERENCES FORMATION(ref_form)
);

-- Insertion du Programme dans ces grandes lignes de la formation B201 --
INSERT INTO PROG
VALUES ("P01", "Insérer des formules de calcul.", "B201");
INSERT INTO PROG
VALUES ("P02", "Soigner la mise en forme de vos tableaux.", "B201");
INSERT INTO PROG
VALUES ("P03", "Améliorer la présentation d\'un tableau dans une page.", "B201");
INSERT INTO PROG
VALUES ("P04", "Saisir et trier les données d\'une base.", "B201");
INSERT INTO PROG
VALUES ("P05", "Créer des graphiques adaptés aux données.", "B201");
INSERT INTO PROG
VALUES ("P06", "Améliorer la mise en forme d\'un graphique.", "B201");

-- Insertion du Programme dans ces grandes lignes de la formation B202 --
INSERT INTO PROG
VALUES("P01", "Suggestion des graphiques par rapport aux tableaux de données.", "B202");
INSERT INTO PROG
VALUES("P02", "Créer des graphiques adaptés aux données.", "B202");
INSERT INTO PROG
VALUES("P03", "Améliorer la mise en forme d\'un graphique.", "B202");
INSERT INTO PROG
VALUES("P04", "Améliorer la lisibilité des données d\un graphique.", "B202");
INSERT INTO PROG
VALUES("P05", "Utiliser différentes sources de données pour construire le graphique.", "B202");
INSERT INTO PROG
VALUES("P06", "Modifier la source de données du graphique.", "B202");
INSERT INTO PROG
VALUES("P07", "Utiliser des modèles pour gagner du temps.", "B202");
INSERT INTO PROG
VALUES("P08", "Insérer un graphique excel dans un document Word", "B202");

-- Insertion du Programme dans ces grandes lignes de la formation CS53 --
INSERT INTO PROG
VALUES("P01", "Introduction aux principes de sécurité réseau.", "CS53");
INSERT INTO PROG
VALUES("P02", "Protéger l\'infrastructure réseau.", "CS53");
INSERT INTO PROG
VALUES("P03", "Contrôle et maîtrise des menaces", "CS53");
INSERT INTO PROG
VALUES("P04", "Connectivté sécurisée.", "CS53");

-- Insertion du Programme dans ces grandes lignes de la formation G7797 --
INSERT INTO PROG
VALUES("P01", "Prendre en main AUTOCAD", "G7797");
INSERT INTO PROG
VALUES("P02", "Réaliser les dessins avec AUTOCAD", "G7797");
INSERT INTO PROG
VALUES("P03", "Modifier un dessin", "G7797");
INSERT INTO PROG
VALUES("P04", "Manipuler le texte et les styles dans AUTOCAD", "G7797");
INSERT INTO PROG
VALUES("P05", "Annoter et composer les plans", "G7797");
INSERT INTO PROG
VALUES("P06", "Importer et exporter des fichier AUTOCAD", "G7797");

-- Insertion du Programme dans ces grandes lignes de la formation SAP21 --
INSERT INTO PROG
VALUES("P01", "Option de base", "SAP21");
INSERT INTO PROG
VALUES("P02", "Données de base", "SAP21");
INSERT INTO PROG
VALUES("P03", "Contrôle des pièces", "SAP21");
INSERT INTO PROG
VALUES("P04", "Contrôle des écritures", "SAP21");
INSERT INTO PROG
VALUES("P05", "Rapprochement", "SAP21");

-- Insertion du Programme dans ces grandes lignes de la formation SAP20 --
INSERT INTO PROG
VALUES("P01", "Présentation de la comptabilité financière", "SAP20");
INSERT INTO PROG
VALUES("P02", "Comptabilité générale", "SAP20");
INSERT INTO PROG
VALUES("P03", "Comptabilité fournisseurs", "SAP20");
INSERT INTO PROG
VALUES("P04", "Comptabilité clients", "SAP20");
INSERT INTO PROG
VALUES("P05", "Comptabilité des immobilisations", "SAP20");
INSERT INTO PROG
VALUES("P06", "Comptabilité bancaire", "SAP20");
INSERT INTO PROG
VALUES("P07", "Opération de clôture dans la comptabilité général", "SAP20");

-- Insertion du Programme dans ces grandes lignes de la formation MG740 --
INSERT INTO PROG
VALUES("P01", "Introduction à la gestion de proget PRINCE2", "MG740");
INSERT INTO PROG
VALUES("P02", "Les Thèmes", "MG740");
INSERT INTO PROG
VALUES("P03", "Les Processus", "MG740");
INSERT INTO PROG
VALUES("P04", "Les Principes", "MG740");
INSERT INTO PROG
VALUES("P05", "Mise en pratique de la méthodologie", "MG740");
INSERT INTO PROG
VALUES("P06", "Examen test PRINCE2 FOUNDATION", "MG740");
INSERT INTO PROG
VALUES("P07", "Passage de l\examen PRINCE2 FOUNDATION", "MG740");

-- Insertion du Programme dans ces grandes lignes de la formation MG741 --
INSERT INTO PROG
VALUES("P01", "Approfondissement de tous les éléments de PRINCE2", "MG741");
INSERT INTO PROG
VALUES("P02", "Mise en pratique de la méthode", "MG741");
INSERT INTO PROG
VALUES("P03", "Examen test PRINCE2 PRACTICIEN", "MG741");
INSERT INTO PROG
VALUES("P04", "Passage de l\examen PRINCE2 PRACTITIONER", "MG741");

-- Insertion du Programme dans ces grandes lignes de la formation G7829 --
INSERT INTO PROG
VALUES("P01", "Activité à distance", "G7829");
INSERT INTO PROG
VALUES("P02", "1ière partie : Le manager transversal stratège (2jours)", "G7829");
INSERT INTO PROG
VALUES("P03", "Assumer sa légitimité de manager transversal", "G7829");
INSERT INTO PROG
VALUES("P04", "Activité à distance", "G7829");
INSERT INTO PROG
VALUES("P05", "2ième partie : Le manager transversal coordinateur (2jours)", "G7829");
INSERT INTO PROG
VALUES("P06", "Développer son influence pour mobiliser sans autorité hiérarchique", "G7829");
INSERT INTO PROG
VALUES("P07", "Assurer la coordination d\'une activité fonctionnelle", "G7829");
INSERT INTO PROG
VALUES("P08", "Activité à distance", "G7829");
INSERT INTO PROG
VALUES("P09", "3ième partie : Le manager transversal communicant (2jours)", "G7829");
INSERT INTO PROG
VALUES("P10", "Développer des comportements de coopération", "G7829");
INSERT INTO PROG
VALUES("P11", "Contractualiser la relation avec les différents intervenants", "G7829");
INSERT INTO PROG
VALUES("P12", "Activité à distance", "G7829");
INSERT INTO PROG
VALUES("P13", "4ième partie : Le manager transversal leader", "G7829");
INSERT INTO PROG
VALUES("P14", "Développer son leadership personnel de manager transversal", "G7829");
INSERT INTO PROG
VALUES("P15", "Développer une relation de confiance avec ses différents interlocuteurs", "G7829");
INSERT INTO PROG
VALUES("P16", "Gérer les situations relationnelles délicates avec les acteurs concernés", "G7829");
INSERT INTO PROG
VALUES("P17", "Activité à distance", "G7829");

-- Insertion du Programme dans ces grandes lignes de la formation OB301--
INSERT INTO PROG
VALUES("P01", "Introduction à JEE", "OB301");
INSERT INTO PROG
VALUES("P02", "JEE :  La spécification JAVA des applications d\'entreprise", "OB301");
INSERT INTO PROG
VALUES("P03", "Présentation des servlets", "OB301");
INSERT INTO PROG
VALUES("P04", "Les pages JSP", "OB301");
INSERT INTO PROG
VALUES("P05", "JSP et Servlet", "OB301");
INSERT INTO PROG
VALUES("P06", "Formulaires", "OB301");
INSERT INTO PROG
VALUES("P07", "Les contextes et sessions", "OB301");
INSERT INTO PROG
VALUES("P08", "JSTL et expression language", "OB301");
INSERT INTO PROG
VALUES("P09", "Les Taglib", "OB301");
INSERT INTO PROG
VALUES("P10", "Pour aller encore plus loin", "OB301");
INSERT INTO PROG
VALUES("P11", "Déploiement d\'une application web", "OB301");
INSERT INTO PROG
VALUES("P12", "Sécuriser les applicatons web", "OB301");
INSERT INTO PROG
VALUES("P13", "Les frameworks MVC", "OB301");

-- Table: SOUS_PROG --

CREATE TABLE SOUS_PROG(
        id_sousprog  Varchar (15) NOT NULL ,
        lib_sousprog Varchar (140) ,
        id_prog      Varchar (15) NOT NULL ,
        ref_form     Varchar (15) NOT NULL ,
        PRIMARY KEY (id_sousprog ,id_prog ,ref_form ),
		CONSTRAINT FK_SOUS_PROG_id_prog FOREIGN KEY (id_prog) REFERENCES PROG(id_prog),
		CONSTRAINT FK_SOUS_PROG_ref_form FOREIGN KEY (ref_form) REFERENCES FORMATION(ref_form)
);

----------------------------------------------------------------------
-- Insertion des sous programmes de la formation B201 --
----------------------------------------------------------------------
-- Insertion des sous programmes de la formation B201 Programme P01 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Insérer les fonctions statiques (somme cumulée, max, min, nb, moyenne...).", "P01", "B201");
INSERT INTO SOUS_PROG
VALUES("SP02", "Visualiser les formules dans une feuille de calcul.", "P01", "B201");
INSERT INTO SOUS_PROG
VALUES("SP03", "Calculer les pourcentages dans une facture.", "P01", "B201");
INSERT INTO SOUS_PROG
VALUES("SP04", "Gagner du temps en recopiant une formule de calcul.", "P01", "B201");
INSERT INTO SOUS_PROG
VALUES("SP05", "Nommer une zone pour faciliter la lecture d'une formule.", "P01", "B201");

-- Insertion des sous programmes de la formation B201 Programme P02 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Renvoyer à la ligne automatiquement dans une cellule.", "P02", "B201");
INSERT INTO SOUS_PROG
VALUES("SP02", "Utiliser les formats personnalisés.", "P02", "B201");
INSERT INTO SOUS_PROG
VALUES("SP03", "Masquer l\'affichage des zéros dans un tableau.", "P02", "B201");

-- Insertion des sous programmes de la formation B201 Programme P03 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Savoir répéter automatiquement les titres d\'un tableau lors d\'une impression.", "P03", "B201");
INSERT INTO SOUS_PROG
VALUES("SP02", "Définir des zones d\'impression.", "P03", "B201");
INSERT INTO SOUS_PROG
VALUES("SP03", "Mettre à l\'échelle un tableau.", "P03", "B201");
INSERT INTO SOUS_PROG
VALUES("SP04", "Afficher les sauts de page.", "P03", "B201");

-- Insertion des sous programmes de la formation B201 Programme P04 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Réaliser des tris multicritères (64 ordres de tri).", "P04", "B201");
INSERT INTO SOUS_PROG
VALUES("SP02", "Créer un format personnalisé pour trier des cellules alphanumériques.", "P04", "B201");
INSERT INTO SOUS_PROG
VALUES("SP03", "Trier selon un ordre personnalisé.", "P04", "B201");

-- Insertion des sous programmes de la formation B201 Programme P05 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Suggestion des meilleurs graphiques par rapport à la structure des tableaux.", "P05", "B201");
INSERT INTO SOUS_PROG
VALUES("SP02", "Comparer des résultats en créant un histgramme.", "P05", "B201");
INSERT INTO SOUS_PROG
VALUES("SP03", "Visualiser une répartition avec un graphique en secteur (camembert).", "P05", "B201");

-- Insertion des sous programmes de la formation B201 Programme P06 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Modifier les couleurs.", "P06", "B201");
INSERT INTO SOUS_PROG
VALUES("SP02", "Insérer une image dans le graphique", "P06", "B201");
INSERT INTO SOUS_PROG
VALUES("SP03", "Insérer des titres.", "P06", "B201");
INSERT INTO SOUS_PROG
VALUES("SP04", "Afficher les données chiffrées dans un graphique.", "P06", "B201");
INSERT INTO SOUS_PROG
VALUES("SP05", "Expliciter les résultats grâce à des zones de texte.", "P06", "B201");


----------------------------------------------------------------------
-- Insertion des sous programmes de la formation B202 --
----------------------------------------------------------------------
-- Insertion des sous programmes de la formation B202 Programme P01 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Créer un graphique à partir de l\'outil d\'analyse rapide.", "P01", "B202");
INSERT INTO SOUS_PROG
VALUES("SP02", "Liste de graphiques recommandés par Excel pour représenter au mieux vos informations ou choisir dans tous les graphiques.", "P01", "B202");

-- Insertion des sous programmes de la formation B202 Programme P02 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Créer un graphique combiné (histogramme + courbe).", "P02", "B202");
INSERT INTO SOUS_PROG
VALUES("SP02", "Visualiser une répartition avec un graphique en secteur (secteur de secteur et barre de secteurs).", "P02", "B202");
INSERT INTO SOUS_PROG
VALUES("SP03", "Mettre en relief une évolution avec un graphique en courbe.", "P02", "B202");
INSERT INTO SOUS_PROG
VALUES("SP04", 'Créer des mini-graphiques dans des cellules (graphiques \"Sparkline\")', "P02", "B202");
INSERT INTO SOUS_PROG
VALUES("SP05", "Créer un graphique à barres (ex : pyramide des âges).", "P02", "B202");
INSERT INTO SOUS_PROG
VALUES("SP06", "Utiliser un graphique en nuage de points.", "P02", "B202");
INSERT INTO SOUS_PROG
VALUES("SP07", "Créer un graphique bulle.", "P02", "B202");

-- Insertion des sous programmes de la formation B202 Programme P03 --
INSERT INTO SOUS_PROG
VALUES ("SP01", "Différentes façon de modifier un graphique :", "P03", "B202");
INSERT INTO SOUS_PROG
VALUES ("SP02", " - Éléments de graphique, styles de graphiques, filtre du graphique.", "P03", "B202");
INSERT INTO SOUS_PROG
VALUES ("SP03", " - Menu contextuel en se plaçant toujours dans le graphique.", "P03", "B202");
INSERT INTO SOUS_PROG
VALUES ("SP04", " - Clic droit e la souris sur l'objet à modifier (légende, série de données, axe, etc...).", "P03", "B202");
INSERT INTO SOUS_PROG
VALUES ("SP05", " - Double clic pour obtenir un volet sur le côté de l\'écran.", "P03", "B202");
INSERT INTO SOUS_PROG
VALUES ("SP06", "Insérer une image dans le graphique.", "P03", "B202");

-- Insertion des sous programmes de la formation B202 Programme P04 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Réorganiser l\'ordre des séries dans un histogramme.", "P04", "B202");
INSERT INTO SOUS_PROG
VALUES("SP02", "Afficher les données chiffrées dans un graphique", "P04", "B202");
INSERT INTO SOUS_PROG
VALUES("SP03", "Expliciter les résultats grâce à des commentaires.", "P04", "B202");
INSERT INTO SOUS_PROG
VALUES("SP04", "Modifier l\'échelle de valeurs de l\'axe des ordonnées.", "P04", "B202");
INSERT INTO SOUS_PROG
VALUES("SP05", "Afficher/masquer le quadrillage et la légende.", "P04", "B202");
INSERT INTO SOUS_PROG
VALUES("SP06", "Afficher un deuxième axe des ordonnées dans un graphique combiné.", "P04", "B202");
INSERT INTO SOUS_PROG
VALUES("SP07", "Gérer les cellules vides dans une courbe.", "P04", "B202");
INSERT INTO SOUS_PROG
VALUES("SP08", "Protéger un graphique.", "P04", "B202");
INSERT INTO SOUS_PROG
VALUES("SP09", "Insérer une courbe de tendance pour visualiser les résultats futurs.", "P04", "B202");

-- Insertion des sous programmes de la formation B202 Programme P05 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Créer un graphique croisé dynamique à partir d\'une base de données.", "P05", "B202");
INSERT INTO SOUS_PROG
VALUES("SP02", "Créer un graphique croisé dynamique à partir d\'un tableau croisé dynamique.", "P05", "B202");

-- Insertion des sous programmes de la formation B202 Programme P06 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Afficher ou masquer une partie des données en utilisant le mode plan.", "P06", "B202");
INSERT INTO SOUS_PROG
VALUES("SP02", "Ajouter ou supprimer des séries à la source de données.", "P06", "B202");

-- Insertion des sous programmes de la formation B202 Programme P07 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Créer un modèle de graphique pour enregistrer les paramètres de mise en forme.", "P07", "B202");
INSERT INTO SOUS_PROG
VALUES("SP02", "Utiliser le modèle personnalisé pour créer un nouveau graphique.", "P07", "B202");
INSERT INTO SOUS_PROG
VALUES("SP03", "Enregistrer vos tableaux standars dans un modèle de classeur.", "P07", "B202");
INSERT INTO SOUS_PROG
VALUES("SP04", "Créer un nouveau classeur à partir du modèle.", "P07", "B202");

-- Insertion des sous programmes de la formation B202 Programme P08 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Copier un tableau Excel dans un document Word.", "P08", "B202");
INSERT INTO SOUS_PROG
VALUES("SP02", "Copier un tableau Excel dans un document Word avec liaison.", "P08", "B202");

----------------------------------------------------------------------
-- Insertion des sous programmes de la formation CS53 --
----------------------------------------------------------------------
-- Insertion des sous programmes de la formation CS53 Programme P01 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Les fondamentaux de la sécurité réseau.", "P01", "CS53");
INSERT INTO SOUS_PROG
VALUES("SP02", "Comprendre les stratégies de sécurité avec une approche Life-Cycle.", "P01", "CS53");
INSERT INTO SOUS_PROG
VALUES("SP03", "Construire une stratégie de sécurité pour les réseaux Borderless.", "P01", "CS53");

-- Insertion des sous programmes de la formation CS53 Programme P02 --
INSERT INTO SOUS_PROG
VALUES("SP01", "introduction à la protection des réseaux Cisco.", "P02", "CS53");
INSERT INTO SOUS_PROG
VALUES("SP02", "protéger l\'infrastructure réseau avec Cisco Configuration Professional.", "P02", "CS53");
INSERT INTO SOUS_PROG
VALUES("SP03", "Sécuriser le plan de manager sur l\'IOS Cisco.", "P02", "CS53");
INSERT INTO SOUS_PROG
VALUES("SP04", "Configurer le AAA avec Cisco Secure ACS (Access Control Server).", "P02", "CS53");
INSERT INTO SOUS_PROG
VALUES("SP05", "Sécuriser le plan de données sur les switches Catalyst.", "P02", "CS53");
INSERT INTO SOUS_PROG
VALUES("SP06", "Sécuriser le plan de données dans les environnements IPV6.", "P02", "CS53");

-- Insertion des sous programmes de la formation CS53 Programme P03 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Contrôle et maîtrise des menaces.", "P03", "CS53");
INSERT INTO SOUS_PROG
VALUES("SP02", "Implémenter des listes de contrôle d\'accès pour limites les menaces.", "P03", "CS53");
INSERT INTO SOUS_PROG
VALUES("SP03", "Comprendre les fondamentaux des pare-feux.", "P03", "CS53");
INSERT INTO SOUS_PROG
VALUES("SP04", "Mettre en oeuvre les stratégies dde pare_feux en mode Zone-Based.", "P03", "CS53");
INSERT INTO SOUS_PROG
VALUES("SP05", "Configurer les stratégies de base des pare-feux sur le matériel Cisco ASA.", "P03", "CS53");
INSERT INTO SOUS_PROG
VALUES("SP06", "Comprenddre les fondamentaux d\IPS - Implémenter Cisco IOS IPS.", "P03", "CS53");

-- Insertion des sous programmes de la formation CS53 Programme P04 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Comprendre les fondamentaux des technologies VPN.", "P04", "CS53");
INSERT INTO SOUS_PROG
VALUES("SP02", "Introduction aux infrastructures de clés publics.", "P04", "CS53");
INSERT INTO SOUS_PROG
VALUES("SP03", "Présentation des fondamentaux d\'IPsec.", "P04", "CS53");
INSERT INTO SOUS_PROG
VALUES("SP04", "Implémenter les VPN site à site sur les routeurs Cisco IOS.", "P04", "CS53");
INSERT INTO SOUS_PROG
VALUES("SP05", "Implémenter les SSL VPN avec du matériel Cisco ASA.", "P04", "CS53");

----------------------------------------------------------------------
-- Insertion des sous programmes de la formation G7797 --
----------------------------------------------------------------------
-- Insertion des sous programmes de la formation G7797 Programme P01 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Se familiariser avec l\’interface : zone-écrans ; menus ; boîte à outils.", "P01", "G7797");
INSERT INTO SOUS_PROG
VALUES("SP02", "Configurer et utiliser la souris.", "P01", "G7797");
INSERT INTO SOUS_PROG
VALUES("SP03", "Savoir saisir les commandes.", "P01", "G7797");
INSERT INTO SOUS_PROG
VALUES("SP04", "Identifier les formats de fichier.", "P01", "G7797");

-- Insertion des sous programmes de la formation G7797 Programme P02 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Débuter un nouveau dessin.", "P02", "G7797");
INSERT INTO SOUS_PROG
VALUES("SP02", "Créer un objet avec des lignes et des hachures.", "P02", "G7797");
INSERT INTO SOUS_PROG
VALUES("SP03", "Créer des cercles, arcs de cercle et ellipses.", "P02", "G7797");
INSERT INTO SOUS_PROG
VALUES("SP04", "Utiliser les aides au dessin : accrochage ; grille ; coordonnées...", "P02", "G7797");

-- Insertion des sous programmes de la formation G7797 Programme P03 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Utiliser les barres d\’outils.", "P03", "G7797");
INSERT INTO SOUS_PROG
VALUES("SP02", "Modifier les attributs.", "P03", "G7797");
INSERT INTO SOUS_PROG
VALUES("SP03", "Construire un objet à partir d’objets existants.", "P03", "G7797");
INSERT INTO SOUS_PROG
VALUES("SP04", "Gérer les calques.", "P03", "G7797");
INSERT INTO SOUS_PROG
VALUES("SP05", "Créer des blocs.", "P03", "G7797");

-- Insertion des sous programmes de la formation G7797 Programme P04 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Réaliser l\’habillage et la cotation du dessin.", "P04", "G7797");
INSERT INTO SOUS_PROG
VALUES("SP02", "Gérer les styles : cote ; tolérances ; ligne de repères ; unité...", "P04", "G7797");
INSERT INTO SOUS_PROG
VALUES("SP03", "Créer du texte multiligne, choisir le style de texte, les polices.", "P04", "G7797");

-- Insertion des sous programmes de la formation G7797 Programme P05 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Créer un plan 2D.", "P05", "G7797");
INSERT INTO SOUS_PROG
VALUES("SP02", "L\’Espace Objet /papier.", "P05", "G7797");
INSERT INTO SOUS_PROG
VALUES("SP03", "Gérer les échelles et l\’affichage.", "P05", "G7797");
INSERT INTO SOUS_PROG
VALUES("SP04", "Créer des bibliothèques.", "P05", "G7797");

-- Insertion des sous programmes de la formation G7797 Programme P06 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Importer et exporter dans les différents formats.", "P06", "G7797");
INSERT INTO SOUS_PROG
VALUES("SP02", "Gestion et sauvegarde des mises en page.", "P06", "G7797");
INSERT INTO SOUS_PROG
VALUES("SP03", "Éditer les plans (imprimante/traceur).", "P06", "G7797");

----------------------------------------------------------------------
-- Insertion des sous programmes de la formation SAP21 --
----------------------------------------------------------------------
-- Insertion des sous programmes de la formation SAP21 Programme P01 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Gestion des entités organisationnelles dans la comptabilité financière.", "P01", "SAP21");
INSERT INTO SOUS_PROG
VALUES("SP02", "Nouvelle comptabilité générale.", "P01", "SAP21");
INSERT INTO SOUS_PROG
VALUES("SP03", "Explication du principe des variantes.", "P01", "SAP21");
INSERT INTO SOUS_PROG
VALUES("SP04", "Gestion des versions d\’exercices.", "P01", "SAP21");
INSERT INTO SOUS_PROG
VALUES("SP05", "Connaissances des fonctions de base des devises.", "P01", "SAP21");

-- Insertion des sous programmes de la formation SAP21 Programme P02 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Gestion des comptes généraux.", "P02", "SAP21");
INSERT INTO SOUS_PROG
VALUES("SP02", "Gestion des centres de profit et des segments.", "P02", "SAP21");
INSERT INTO SOUS_PROG
VALUES("SP03", "Gestion des comptes clients et des fournisseurs.", "P02", "SAP21");

-- Insertion des sous programmes de la formation SAP21 Programme P03 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Configuration de l\’en-tête et des postes individuels des pièces FI.", "P03", "SAP21");
INSERT INTO SOUS_PROG
VALUES("SP02", "Gestion des périodes comptables.", "P03", "SAP21");
INSERT INTO SOUS_PROG
VALUES("SP03", "Gestion des autorisations d\’enregistrement.", "P03", "SAP21");
INSERT INTO SOUS_PROG
VALUES("SP04", "Création de pièces simples en comptabilité financière.", "P03", "SAP21");

-- Insertion des sous programmes de la formation SAP21 Programme P04 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Analyse de la ventilation d\’une pièce.", "P04", "SAP21");
INSERT INTO SOUS_PROG
VALUES("SP02", "Gestion des valeurs par défaut.", "P04", "SAP21");
INSERT INTO SOUS_PROG
VALUES("SP03", "Configuration du contrôle de modifications.", "P04", "SAP21");
INSERT INTO SOUS_PROG
VALUES("SP04", "Configuration de la contre-passation de pièce.", "P04", "SAP21");
INSERT INTO SOUS_PROG
VALUES("SP05", "Configuration des conditions de paiement et des escomptes.", "P04", "SAP21");
INSERT INTO SOUS_PROG
VALUES("SP06", "Connaissance et gestion des taxes et des codes TVA.", "P04", "SAP21");
INSERT INTO SOUS_PROG
VALUES("SP07", "Gestion des écritures et des opérations inter-sociétés.", "P04", "SAP21");
INSERT INTO SOUS_PROG
VALUES("SP08", "Configuration de l’intégration en temps réel CO vers FI.", "P04", "SAP21");

-- Insertion des sous programmes de la formation SAP21 Programme P05 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Rapprochement des postes non soldés.", "P05", "SAP21");
INSERT INTO SOUS_PROG
VALUES("SP02", "Analyse et écriture des écarts de paiement.", "P05", "SAP21");
INSERT INTO SOUS_PROG
VALUES("SP03", "Traitement des différences de change.", "P05", "SAP21");

----------------------------------------------------------------------
-- Insertion des sous programmes de la formation SAP20 --
----------------------------------------------------------------------
-- Insertion des sous programmes de la formation SAP20 Programme P01 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Liste des composantes de base de SAP ERP.", "P01", "SAP20");

-- Insertion des sous programmes de la formation SAP20 Programme P02 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Compréhension des structures organisationnelles dans la comptabilité financière.", "P02", "SAP20");
INSERT INTO SOUS_PROG
VALUES("SP02", "Gestion des fiches comptes généraux.", "P02", "SAP20");
INSERT INTO SOUS_PROG
VALUES("SP03", "Comptabilisation dans le grand livre.", "P02", "SAP20");

-- Insertion des sous programmes de la formation SAP20 Programme P03 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Gestion des fiches fournisseurs.", "P03", "SAP20");
INSERT INTO SOUS_PROG
VALUES("SP02", "Gestion des opérations comptables dans la comptabilité fournisseurs.", "P03", "SAP20");
INSERT INTO SOUS_PROG
VALUES("SP03", "Gestion de l\’intégration entre la comptabilité financière et la gestion des articles.", "P03", "SAP20");
INSERT INTO SOUS_PROG
VALUES("SP04", "Gestion des opérations de clôture dans la comptabilité fournisseurs.", "P03", "SAP20");

-- Insertion des sous programmes de la formation SAP20 Programme P04 --
INSERT INTO SOUS_PROG
VALUES ("SP01", "Gestion des fiches clients.", "P04", "SAP20");
INSERT INTO SOUS_PROG
VALUES ("SP02", "Gestion des opérations comptables dans la comptabilité clients.", "P04", "SAP20");
INSERT INTO SOUS_PROG
VALUES ("SP03", "Gestion de la correspondance client.", "P04", "SAP20");
INSERT INTO SOUS_PROG
VALUES ("SP04", "Création de cas litigieux dans la comptabilité clients.", "P04", "SAP20");
INSERT INTO SOUS_PROG
VALUES ("SP05", "Gestion des factures dans la gestion des commandes client.", "P04", "SAP20");
INSERT INTO SOUS_PROG
VALUES ("SP06", "Utilisation d\’outils de clôture dans la comptabilité clients.", "P04", "SAP20");

-- Insertion des sous programmes de la formation SAP20 Programme P05 --
INSERT INTO SOUS_PROG
VALUES ("SP01", "Gestion des fiches d\’immobilisation.", "P05", "SAP20");
INSERT INTO SOUS_PROG
VALUES ("SP02", "Exécution des mouvements d\’immobilisation.", "P05", "SAP20");
INSERT INTO SOUS_PROG
VALUES ("SP03", "Exécution des activités de clôture de période dans la comptabilité des immobilisations.", "P05", "SAP20");

-- Insertion des sous programmes de la formation SAP20 Programme P06 --
INSERT INTO SOUS_PROG
VALUES ("SP01", "Gestion des fiches dans la comptabilité bancaire.", "P06", "SAP20");
INSERT INTO SOUS_PROG
VALUES ("SP02", "Gestion des transactions commerciales dans la comptabilité bancaire.", "P06", "SAP20");

-- Insertion des sous programmes de la formation SAP20 Programme P07 --


----------------------------------------------------------------------
-- Insertion des sous programmes de la formation MG740 --
----------------------------------------------------------------------
-- Insertion des sous programmes de la formation MG740 Programme P01 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Historique.", "P01", "MG740");
INSERT INTO SOUS_PROG
VALUES("SP02", "Tour d\'horizon.", "P01", "MG740");
INSERT INTO SOUS_PROG
VALUES("SP03", "PRINCE2 et la gestion de projet.", "P01", "MG740");

-- Insertion des sous programmes de la formation MG740 Programme P02 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Cas d\'affaire.", "P02", "MG740");
INSERT INTO SOUS_PROG
VALUES("SP02", "Organisation.", "P02", "MG740");
INSERT INTO SOUS_PROG
VALUES("SP03", "Plans.", "P02", "MG740");
INSERT INTO SOUS_PROG
VALUES("SP04", "Progression.", "P02", "MG740");
INSERT INTO SOUS_PROG
VALUES("SP05", "Risques.", "P02", "MG740");
INSERT INTO SOUS_PROG
VALUES("SP06", "Qualité.", "P02", "MG740");
INSERT INTO SOUS_PROG
VALUES("SP07", "Changements.", "P02", "MG740");

-- Insertion des sous programmes de la formation MG740 Programme P03 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Diriger le projet.", "P03", "MG740");
INSERT INTO SOUS_PROG
VALUES("SP02", "Élaborer le projet.", "P03", "MG740");
INSERT INTO SOUS_PROG
VALUES("SP03", "Initialiser le projet.", "P03", "MG740");
INSERT INTO SOUS_PROG
VALUES("SP04", "Contrôler une séquence.", "P03", "MG740");
INSERT INTO SOUS_PROG
VALUES("SP05", "Gérer la livraison des produits.", "P03", "MG740");
INSERT INTO SOUS_PROG
VALUES("SP06", "Gérer une limite de séquence.", "P03", "MG740");
INSERT INTO SOUS_PROG
VALUES("SP07", "Clore le projet.", "P03", "MG740");

-- Insertion des sous programmes de la formation MG740 Programme P04 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Leçons tirées de l'expérience.", "P04", "MG740");
INSERT INTO SOUS_PROG
VALUES("SP02", "Rôles et responsabilités définis.", "P04", "MG740");
INSERT INTO SOUS_PROG
VALUES("SP03", "Justification continue pour l\'entreprise.", "P04", "MG740");
INSERT INTO SOUS_PROG
VALUES("SP04", "Management par séquences.", "P04", "MG740");
INSERT INTO SOUS_PROG
VALUES("SP05", "Management par exception.", "P04", "MG740");
INSERT INTO SOUS_PROG
VALUES("SP06", "Focalisation produit.", "P04", "MG740");
INSERT INTO SOUS_PROG
VALUES("SP07", "Adaptation à l\'environnement de projet.", "P04", "MG740");

-- Insertion des sous programmes de la formation MG740 Programme P05 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Étude de cas.", "P05", "MG740");

-- Insertion des sous programmes de la formation MG740 Programme P06 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Révision.", "P06", "MG740");
INSERT INTO SOUS_PROG
VALUES("SP02", "Test blanc.", "P06", "MG740");

-- Insertion des sous programmes de la formation MG740 Programme P07 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Examen délivré en salle et en français.", "P07", "MG740");


----------------------------------------------------------------------
-- Insertion des sous programmes de la formation MG741 --
----------------------------------------------------------------------
-- Insertion des sous programmes de la formation MG741 Programme P01 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Attribuer les rôles selon les acteurs.", "P01", "MG741");
INSERT INTO SOUS_PROG
VALUES("SP02", "Gouvernance et matrice des responsabilités.", "P01", "MG741");
INSERT INTO SOUS_PROG
VALUES("SP03", "Vue détaillée des produits de management.", "P01", "MG741");
INSERT INTO SOUS_PROG
VALUES("SP04", "Vue détaillée des thèmes, processus et principes.", "P01", "MG741");
INSERT INTO SOUS_PROG
VALUES("SP05", "Vue détaillée des techniques recommandées.", "P01", "MG741");
INSERT INTO SOUS_PROG
VALUES("SP06", "Les interactions entre les produits de management, les processus et les thèmes.", "P01", "MG741");
INSERT INTO SOUS_PROG
VALUES("SP07", "Adaptation et intégration des 4 éléments PRINCE2 sur un projet.", "P01", "MG741");
INSERT INTO SOUS_PROG
VALUES("SP08", "Adaptation des produits de management PRINCE2 à l’environnement projet.", "P01", "MG741");

-- Insertion des sous programmes de la formation MG741 Programme P02 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Appliquer les principes PRINCE2 aux projets.", "P02", "MG741");
INSERT INTO SOUS_PROG
VALUES("SP02", "Utiliser et adapter les produits de management PRINCE2.", "P02", "MG741");
INSERT INTO SOUS_PROG
VALUES("SP03", "Utiliser les techniques recommandées.", "P02", "MG741");
INSERT INTO SOUS_PROG
VALUES("SP04", "Mise en pratique de l\’élaboration, l\’initialisation, le contrôle et la clôture d’un projet PRINCE2 sur une étude de cas.", "P02", "MG741");

-- Insertion des sous programmes de la formation MG741 Programme P03 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Révision.", "P03", "MG741");
INSERT INTO SOUS_PROG
VALUES("SP02", "Test blanc.", "P03", "MG741");

-- Insertion des sous programmes de la formation MG741 Programme P04 --


----------------------------------------------------------------------
-- Insertion des sous programmes de la formation G7829 --
----------------------------------------------------------------------
-- Insertion des sous programmes de la formation G7829 Programme P01 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Pour acquérir une connaissance théorique avant la formation en salle : un vidéocast \"Les spécificités du management transversal\".", "P01", "G7829");

-- Insertion des sous programmes de la formation G7829 Programme P02 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Se positionner dans son rôle de manager transversal.", "P02", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP02", "Enjeux et défis actuels de la transversalité.", "P02", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP03", "Les spécificités du management transversal parmi les autres modes de management : projet, processus, réseau...", "P02", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP04", "Agir dans et avec l\'organisation : la plus value du management transversal.", "P02", "G7829");

-- Insertion des sous programmes de la formation G7829 Programme P03 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Identifier les fondements de sa légitimité managériale.", "P03", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP02", "Trouver sa légitimité dans son contexte.", "P03", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP03", "Prendre en compte les paramètres de son contexte : organisation ; positionnement ; acteurs, soi-même.", "P03", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP04", "Évaluer les enjeux réels de sa mission transversale.", "P03", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP05", "Agir sur les leviers pertinents pour développer sa légitimité de manager transversal.", "P03", "G7829");

-- Insertion des sous programmes de la formation G7829 Programme P04 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Pour mettre en application les bonnes pratiques et les acquis d\’une formation : deux modules e-learning \"Situer son rôle de manager transversal\" et \"La stratégie d\’influence du manager transversal\".", "P04", "G7829");

-- Insertion des sous programmes de la formation G7829 Programme P05 --


-- Insertion des sous programmes de la formation G7829 Programme P06 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Concilier stratégie globale et intérêts locaux.", "P06", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP02", "Identifier les acteurs clés.", "P06", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP03", "Repérer les enjeux des différents partenaires et utiliser une stratégie adaptée.", "P06", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP04", "Agir sur les leviers de l'influence sans autorité statutaire.", "P06", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP05", "Mobiliser les énergies autour d\'objectifs communs.", "P06", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP06", "Définir et faire appliquer localement des référentiels communs pour assurer une cohérence d\'ensemble.", "P06", "G7829");

-- Insertion des sous programmes de la formation G7829 Programme P07 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Identifier les mécanismes de coordination utilisables par le manager transversal.", "P07", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP02", "Utiliser le mode de coordination le plus adapté à la situation : de la standardisation à l\'ajustement mutuel.", "P07", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP03", "Mettre en adéquation les outils avec le mode de coordination recherché.", "P07", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP04", "Utiliser la confrontation des expertises et le transfert d\'expérience.", "P07", "G7829");

-- Insertion des sous programmes de la formation G7829 Programme P08 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Pour mettre en application les bonnes pratiques et les acquis d’une formation : un module e-learning \"Assurer la coordination transversale\".", "P08", "G7829");

-- Insertion des sous programmes de la formation G7829 Programme P09 --


-- Insertion des sous programmes de la formation G7829 Programme P10 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Construire les conditions de la coopération.", "P10", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP02", "Motiver ses interlocuteurs autour de la fonction.", "P10", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP03", "Adopter une logique de contreparties.", "P10", "G7829");

-- Insertion des sous programmes de la formation G7829 Programme P11 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Associer les acteurs et leur ligne hiérarchique.", "P11", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP02", "Clarifier les objectifs, les rôles et les règles du jeu.", "P11", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP03", "Gérer les relations avec la ligne hiérarchique.", "P11", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP04", "Tenir compte de l\'évolution des enjeux et des priorités.", "P11", "G7829");

-- Insertion des sous programmes de la formation G7829 Programme P12 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Pour mettre en application les bonnes pratiques et les acquis d’une formation : un module e-learning \"Les clés de la communication du manager transversal\".", "P12", "G7829");

-- Insertion des sous programmes de la formation G7829 Programme P13 --


-- Insertion des sous programmes de la formation G7829 Programme P14 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Les spécificités du leadership du manager transversal.", "P14", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP02", "Prendre conscience de ses qualités de leader.", "P14", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP03", "Dépasser ses rigidités personnelles, accroître sa flexibilité et son influence personnelle.", "P14", "G7829");

-- Insertion des sous programmes de la formation G7829 Programme P15 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Favoriser les contacts positifs et constructifs.", "P15", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP02", "Trouver le bon niveau d\'influence et de contrôle.", "P15", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP03", "Communiquer et dialoguer franchement et ouvertement.", "P15", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP04", "Créer un climat facilitant l\'adhésion, la responsabilisation et la confiance.", "P15", "G7829");

-- Insertion des sous programmes de la formation G7829 Programme P16 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Donner et recevoir des feed-back de manière positive, non agressive et sans anxiété pour faire progresser la mission.", "P16", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP02", "Identifier ses mécanismes défensifs et ceux des acteurs.", "P16", "G7829");
INSERT INTO SOUS_PROG
VALUES("SP03", "Se doter d\'outils pour résoudre durablement les conflits.", "P16", "G7829");

-- Insertion des sous programmes de la formation G7829 Programme P17 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Pour découvrir un sujet en lien avec votre formation : un module e-learning \"Le leadership du manager transversal\".", "P17", "G7829");

----------------------------------------------------------------------
-- Insertion des sous programmes de la formation OB301 --
----------------------------------------------------------------------
-- Insertion des sous programmes de la formation OB301 Programme P01 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Problématiques et caractéristiques des applications Web (HTTP, HTML et URL).", "P01", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP02", "Les architectures Client / Serveur Web.", "P01", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP03", "Les diverses solutions.", "P01", "OB301");

-- Insertion des sous programmes de la formation OB301 Programme P02 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Description.", "P02", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP02", "Notion de container Web et de container EJB.", "P02", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP03", "Le packaging.", "P02", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP04", "Un descripteur de déploiement universel.", "P02", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP05", "Les serveurs d'application.", "P02", "OB301");

-- Insertion des sous programmes de la formation OB301 Programme P03 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Concepts.", "P03", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP02", "Cycle de vie.", "P03", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP03", "HttpServletRequest et HttpServletResponse.", "P03", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP04", "Définition des pages d\'accueil et d\'erreur.", "P03", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP05", "Gestion des accès concurrents (Multi-Thread)", "P03", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP06", "Exemple d\'outillage (IDE/container Web) avec Eclipse WebTools et Tomcat", "P03", "OB301");

-- Insertion des sous programmes de la formation OB301 Programme P04 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Concepts.", "P04", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP02", "Différence avec les Servlets.", "P04", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP03", "Inclusion statique et dynamique.", "P04", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP04", "Objets implicites.", "P04", "OB301");

-- Insertion des sous programmes de la formation OB301 Programme P05 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Utilisation du model de conception MVC.", "P05", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP02", "Utilisation du \"redirect\" et du \"forward\".", "P05", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP03", "Utilisation conjointe JSP/Servlet.", "P05", "OB301");

-- Insertion des sous programmes de la formation OB301 Programme P06 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Principes.", "P06", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP02", "Les composants graphiques.", "P06", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP03", "Validation et traitement des saisies.", "P06", "OB301");

-- Insertion des sous programmes de la formation OB301 Programme P07 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Différence entre \"Paramètre\" et \"Attribut\".", "P07", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP02", "Les scopes (page, request, application et session).", "P07", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP03", "La gestion des sessions (cookies, URL rewriting).", "P07", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP04", "Retour d\’expérience sur les bonnes pratiques.", "P07", "OB301");

-- Insertion des sous programmes de la formation OB301 Programme P08 --
INSERT INTO SOUS_PROG
VALUES("SP01", "JSTL : la normalisation des Tags \"standards\".", "P08", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP02", "EL (Expression Language) : une nouvelle souplesse pour les JSP.", "P08", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP03", "Structure de contrôle avec \"JSTL core\".", "P08", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP04", "Gestion des messages et de l'I18n (internationalisation) avec \"JSTL fmt\".", "P08", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP05", "Connexion à une base de données avec \"JSTL sql\".", "P08", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP06", "Manipulation XML avec \"JSTL XML\".", "P08", "OB301");

-- Insertion des sous programmes de la formation OB301 Programme P09 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Principe des librairies de Tag.", "P09", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP02", "Les Tag JSP par défaut.", "P09", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP03", "Définir et utiliser ses propres Tags.", "P09", "OB301");

-- Insertion des sous programmes de la formation OB301 Programme P10 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Les listeners.", "P10", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP02", "Les filtres.", "P10", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP03", "Accès aux informations utilisateur (langue, adresse IP, navigateur, etc.).", "P10", "OB301");

-- Insertion des sous programmes de la formation OB301 Programme P11 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Les fichiers WAR.", "P11", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP02", "Les outils de pré-déploiement et déploiement.", "P11", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP03", "Retours d\’expérience : les bonnes pratiques de déploiement.", "P11", "OB301");

-- Insertion des sous programmes de la formation OB301 Programme P12 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Authentification / autorisation.", "P12", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP02", "Sécurité déclarative et Sécurité programmatique.", "P12", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP03", "Utilisation de \"Security Role-Based\".", "P12", "OB301");

-- Insertion des sous programmes de la formation OB301 Programme P13 --
INSERT INTO SOUS_PROG
VALUES("SP01", "Pourquoi utiliser des frameworks plutôt que des JSP/Servlet seuls.", "P13", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP02", "Le modèle de conception MVC2 et le Front Controller.", "P13", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP03", "Les frameworks Struts/Struts2.", "P13", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP04", "Le framework JSF.", "P13", "OB301");
INSERT INTO SOUS_PROG
VALUES("SP05", "Spring MVC.", "P13", "OB301");

