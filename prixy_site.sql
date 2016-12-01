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
		langue_form Varchar(15),
        PRIMARY KEY (ref_form, langue_form )		
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
INSERT INTO FORMATION(ref_form, nom_form, duree_form, tarif_form, type_public_form, langue_form)
VALUES("B201","Formation Excel - Les bases : Tableaux, Graphiques, et Calculs fondamentaux.", "2", "620,00", "Débutant souhaitant devenir autonome", "fr_FR");
INSERT INTO FORMATION(ref_form, nom_form, duree_form, tarif_form, type_public_form, langue_form)
VALUES("B202", "Formation Excel - graphiques Avancés.", "1", "310,00", "Utilisateur moyen souhaitant devenir meilleur" , "fr_FR");
INSERT INTO FORMATION(ref_form, nom_form, duree_form, tarif_form, type_public_form, langue_form)
VALUES("CS53", "Formation Mettre en oeuvre la sécurité des réseaux IOS Cisco (IINS).", "5", "3550,00", "Expert souhaitant validé leur acquis" , "fr_FR");
INSERT INTO FORMATION(ref_form, nom_form, duree_form, tarif_form, type_public_form, langue_form)
VALUES("G7797", "Formation AUTOCAD/AUTOCAD LT - Niveau 1.", "4", "1820.00", "Utilisateur moyen souhaitant devenir meilleur" , "fr_FR");
INSERT INTO FORMATION(ref_form, nom_form, duree_form, tarif_form, type_public_form, langue_form)
VALUES("SAP21", "Formation SAP ERP Financials - Comptabilité général clients et fournisseurs.", "5", "3400,00", "Expert sans validation des acquis" , "fr_FR");
INSERT INTO FORMATION(ref_form, nom_form, duree_form, tarif_form, type_public_form, langue_form)
VALUES("SAP20", "Formation SAP ERP Financials - Comptabilité financière et reporting.", "5", "3400,00", "Utilisateur moyen souhaitant devenir meilleur" , "fr_FR");
INSERT INTO FORMATION(ref_form, nom_form, duree_form, tarif_form, type_public_form, langue_form)
VALUES("MG740", "Formation PRINCE2 - Foundation", "3", "1915,00", "Utilisateur moyen souhaitant devenir meilleur" , "fr_FR");
INSERT INTO FORMATION(ref_form, nom_form, duree_form, tarif_form, type_public_form, langue_form)
VALUES("MG741", "Formation PRINCE2 - Practitioner", "2", "1550,00", "Expert souhaitant validé leur acquis" , "fr_FR");
INSERT INTO FORMATION(ref_form, nom_form, duree_form, tarif_form, type_public_form, langue_form)
VALUES("G7829", "Formation Manager Transversal", "8", "4395,00", "Débutant dans le domaine", "fr_FR");
INSERT INTO FORMATION(ref_form, nom_form, duree_form, tarif_form, type_public_form, langue_form)
VALUES("OB301", "Formation Développer des applications Web JAVA avec les servlets et les JSP", "4", "1930,00", "Utilisateur moyen souhaitant devenir meilleur" , "fr_FR");

-- Table: CATEGORIE --

CREATE TABLE CATEGORIE
(
        id_categ   Varchar (15) NOT NULL ,
        type_categ Varchar (140) ,
		langue_categ Varchar(15),
        PRIMARY KEY (id_categ, langue_categ)		
);

--Insertion des catégories --
INSERT INTO CATEGORIE(id_categ, type_categ, langue_categ)
VALUES("CA1", "Bureautique" , "fr_FR");
INSERT INTO CATEGORIE(id_categ, type_categ, langue_categ)
VALUES("CA2", "Multimédia" , "fr_FR");
INSERT INTO CATEGORIE(id_categ, type_categ, langue_categ)
VALUES("CA3","CAO/PAO" , "fr_FR");
INSERT INTO CATEGORIE(id_categ, type_categ, langue_categ)
VALUES("CA4","Progiciel de Gestion" , "fr_FR");
INSERT INTO CATEGORIE(id_categ, type_categ, langue_categ)
VALUES("CA5","Gestion de Projet" , "fr_FR");
INSERT INTO CATEGORIE(id_categ, type_categ, langue_categ)
VALUES("CA6","Management d\'équipe" , "fr_FR");


-- Table: CERTIFICATION --

CREATE TABLE CERTIFICATION
(
        id_certif      Varchar (15) NOT NULL ,
        delivre_certif Bool ,
		langue_certif Varchar(15),
        titre_certif   Varchar (140) ,
        PRIMARY KEY (id_certif, langue_certif )
);

-- Insertion des certifications La valeur CE1 permettant d'attribuer aucune certification --
INSERT INTO CERTIFICATION(id_certif, delivre_certif, titre_certif, langue_certif)
VALUES("CE1", "false", "La formation ne délivre pas de certification" , "fr_FR");
INSERT INTO CERTIFICATION(id_certif, delivre_certif,  titre_certif, langue_certif)
VALUES("CE2", "true", "TOSA excel  - Niveau Basique" , "fr_FR");
INSERT INTO CERTIFICATION(id_certif, delivre_certif, titre_certif, langue_certif)
VALUES("CE3", "true", "CCNA Security" , "fr_FR");
INSERT INTO CERTIFICATION(id_certif, delivre_certif, titre_certif, langue_certif)
VALUES("CE4", "true", "PRINCE2 - FOUNDATION" , "fr_FR");
INSERT INTO CERTIFICATION(id_certif, delivre_certif, titre_certif, langue_certif)
VALUES("CE5", "true", "PRINCE2 - PRACTITIONER" , "fr_FR");

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
INSERT INTO APPARTENIR(ref_form, id_categ)
VALUES("B201","CA1");
INSERT INTO APPARTENIR(ref_form, id_categ)
VALUES("B202","CA1");
INSERT INTO APPARTENIR(ref_form, id_categ)
VALUES("CS53","CA2");
INSERT INTO APPARTENIR(ref_form, id_categ)
VALUES("G7797","CA3");
INSERT INTO APPARTENIR(ref_form, id_categ)
VALUES("SAP21","CA4");
INSERT INTO APPARTENIR(ref_form, id_categ)
VALUES("SAP20","CA4");
INSERT INTO APPARTENIR(ref_form, id_categ)
VALUES("MG740","CA5");
INSERT INTO APPARTENIR(ref_form, id_categ)
VALUES("MG741","CA5");
INSERT INTO APPARTENIR(ref_form, id_categ)
VALUES("G7829","CA6");
INSERT INTO APPARTENIR(ref_form, id_categ)
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
INSERT INTO DELIVRER(ref_form, id_certif)
VALUES("B201", "CE2");
INSERT INTO DELIVRER(ref_form, id_certif)
VALUES("B202", "CE1");
INSERT INTO DELIVRER(ref_form, id_certif)
VALUES("CS53", "CE3");
INSERT INTO DELIVRER(ref_form, id_certif)
VALUES("G7797", "CE1");
INSERT INTO DELIVRER(ref_form, id_certif)
VALUES("SAP21", "CE1");
INSERT INTO DELIVRER(ref_form, id_certif)
VALUES("SAP20", "CE1");
INSERT INTO DELIVRER(ref_form, id_certif)
VALUES("MG740", "CE4");
INSERT INTO DELIVRER(ref_form, id_certif)
VALUES("MG741", "CE5");
INSERT INTO DELIVRER(ref_form, id_certif)
VALUES("G7829", "CE1");
INSERT INTO DELIVRER(ref_form, id_certif)
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

INSERT INTO NECESSITER(ref_form, ref_form_form)
VALUES("B202", "B201");
INSERT INTO NECESSITER(ref_form, ref_form_form)
VALUES("B201", "B200");
INSERT INTO NECESSITER(ref_form, ref_form_form)
VALUES("CS53", "Aucune");
INSERT INTO NECESSITER(ref_form, ref_form_form)
VALUES("G7797", "Aucune");
INSERT INTO NECESSITER(ref_form, ref_form_form)
VALUES("SAP21", "SAP20");
INSERT INTO NECESSITER(ref_form, ref_form_form)
VALUES("SAP20", "SAP01");
INSERT INTO NECESSITER(ref_form, ref_form_form)
VALUES("MG740", "Aucune");
INSERT INTO NECESSITER(ref_form, ref_form_form)
VALUES("MG741", "MG740");
INSERT INTO NECESSITER(ref_form, ref_form_form)
VALUES("G7829", "Aucune");
INSERT INTO NECESSITER(ref_form, ref_form_form)
VALUES("OB301", "OB300");


-- Table: SESSION --

CREATE TABLE SESSION
(
        id_sess   Varchar (15) NOT NULL ,
        date_sess Date,
        ref_form  Varchar (15) NOT NULL,
        PRIMARY KEY (id_sess ,ref_form ),
		CONSTRAINT FK_SESSION_ref_form FOREIGN KEY (ref_form) REFERENCES FORMATION(ref_form)
);

-- Insertion des sessions de la formation B201 --
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS01", "2016/02/02", "B201");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS02", "2016/02/17", "B201");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS03", "2016/03/03", "B201");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS04", "2016/03/14", "B201");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS05", "2016/03/29", "B201");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS06", "2016/04/13", "B201");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS07", "2016/04/28", "B201");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS08", "2016/05/09", "B201");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS09", "2016/05/24", "B201");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS10", "2016/06/08", "B201");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS11", "2016/06/23", "B201");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS12", "2016/07/04", "B201");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS13", "2016/07/19", "B201");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS14", "2016/08/24", "B201");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS15", "2016/09/08", "B201");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS16", "2016/09/19", "B201");

-- Insertion des sessions de la formation B202 --
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS01", "2016/04/28", "B202");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS02", "2016/06/09", "B202");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS03", "2016/09/22", "B202");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS04", "2016/11/02", "B202");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS05", "2016/12/19", "B202");

-- Insertion des sessions de la formation CS53 --
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS01", "2016/06/20", "CS53");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS02", "2016/09/05", "CS53");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS03", "2016/11/28", "CS53");

-- Insertion des session de la formation G7797 --
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS01", "2016/05/09", "G7797");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS02", "2016/09/05", "G7797");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS03", "2016/10/03", "G7797");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS04", "2016/11/07", "G7797");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS05", "2016/12/12", "G7797");

-- Insertion des session de la formation SAP21 --
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS01", "2016/05/30", "SAP21");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS02", "2016/06/27", "SAP21");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS03", "2016/07/18", "SAP21");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS04", "2016/08/22", "SAP21");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS05", "2016/09/12", "SAP21");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS06", "2016/10/17", "SAP21");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS07", "2016/11/21", "SAP21");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS08", "2016/12/19", "SAP21");

-- Insertion des session de la formation SAP20 --
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS01", "2016/04/25", "SAP20");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS02", "2016/05/23", "SAP20");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS03", "2016/07/04", "SAP20");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS04", "2016/09/05", "SAP20");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS05", "2016/10/03", "SAP20");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS06", "2016/11/14", "SAP20");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS07", "2016/12/12", "SAP20");

-- Insertion des session de la formation MG740 --
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES ("SS01", "2016/06/13", "MG740");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES ("SS02", "2016/07/04", "MG740");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES ("SS03", "2016/09/05", "MG740");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES ("SS04", "2016/10/24", "MG740");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES ("SS05", "2016/11/21", "MG740");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES ("SS06", "2016/11/28", "MG740");

-- Insertion des session de la formation MG741 --
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES ("SS01", "2016/06/16", "MG741");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES ("SS02", "2016/07/07", "MG741");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES ("SS03", "2016/09/08", "MG741");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES ("SS04", "2016/10/27", "MG741");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES ("SS05", "2016/11/24", "MG741");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES ("SS06", "2016/12/01", "MG741");

-- Insertion des session de la formation G7829 --
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS01", "2016/06/09", "G7829");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS02", "2016/08/07", "G7829");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS03", "2016/09/01", "G7829");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS04", "2016/09/29", "G7829");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS05", "2016/10/13", "G7829");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS06", "2016/11/07", "G7829");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS07", "2016/12/01", "G7829");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS08", "2016/12/08", "G7829");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS09", "2016/12/21", "G7829");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS10", "2017/01/05", "G7829");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS11", "2017/01/19", "G7829");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS12", "2017/02/16", "G7829");

-- Insertion des session de la formation OB301 --
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS01", "2016/04/25", "OB301");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS02", "2016/06/06", "OB301");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS03", "2016/06/13", "OB301");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS04", "2016/06/20", "OB301");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS05", "2016/07/04", "OB301");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS06", "2016/10/10", "OB301");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS07", "2016/10/24", "OB301");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS08", "2016/11/07", "OB301");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS09", "2016/11/14", "OB301");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS10", "2016/11/28", "OB301");
INSERT INTO SESSION(id_sess, date_sess, ref_form)
VALUES("SS11", "2016/12/05", "OB301");


-- Table: OBJECTIF --

CREATE TABLE OBJECTIF
(
        id_obj   Varchar (15) NOT NULL ,
        lib_obj  Varchar (300),
		langue_obj Varchar(15),
        ref_form Varchar (15) NOT NULL,
        PRIMARY KEY (id_obj ,ref_form, langue_obj),
		CONSTRAINT FK_OBJECTIF_ref_form FOREIGN KEY (ref_form) REFERENCES FORMATION(ref_form)
);

-- Insertion des objectifs de la formation B201 --
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB01", "Savoir construire des tableaux en soignant leur mise en forme d'une facçon immédiate.", "B201", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB02", "Comprendre comment analyser vos résultats à l\'aide de différents calculs.", "B201", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB03", "Gagner du temps en modifiant simultanément plusieurs tableaux.", "B201", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB04", "Savoir trier et filtrer des données dans une table.", "B201", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB05", "Pouvoir présenter vos données sous forme de graphiques simples.", "B201", "fr_FR");

-- Insertion des objectifs de la formation B202 --
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB01", "Savoir présenter des données chiffrées en utilisant les graphiques les plus adaptés.", "B202", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB02", "Comprendre comment améliorer la lisibilité d\'un graphique.", "B202", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB03", "Pouvoir créer des modèles de graphiques et de classeur pour gagner du temps.", "B202", "fr_FR");

-- Insertion des objectifs de la formation CS53 --
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB01", "Identifier les éléments d'une stratégie de sécurité permettant de contrer les menaces pesant sur le Système d\'Information.", "CS53", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB02", "Savoir mettre en oeuvre les contre-mesures de sécurité visant à protéger les différents éléments du réseau et de l\'infrastructure.", "CS53", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB03", "Être en mesure de déployer et maintenir les technologies de contrôle et de maîtrise des menaces dans des réseaux de petite ou moyenne taille.", "CS53", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB04", "Découvrir les stratégies et les technologies de sécurisation des connectivités VPN", "CS53", "fr_FR");

-- Insertion des objectifs de la formation G7797 --
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB01", "Acquérir les bases essentielles du logiciel Autocad pour réaliser des plans et des dessins en 2D.", "G7797", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB02", "Réaliser et produire des plans et des dessins techniques avec AUTOCAD.", "G7797", "fr_FR");

-- Insertion des objectifs de la formation SAP21 --
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB01", "Acquérir les compétences nécessaires au paramétrage de base de la comptabilité générale, clients et fournisseurs.", "SAP21", "fr_FR");

-- Insertion des objectifs de la formation SAP20 --
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB01", "Avoir une vue d\’ensemble des processus comptables, des entités organisationnelles et des données de base ainsi que les connexions avec les autres processus métiers.", "SAP20", "fr_FR");

-- Insertion des objectifs de la formation MG740 --
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB01", "Identifier la constitution, les concepts et l\'application de la méthode de gestion de projets PRINCE2", "MG740", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB02", "Reconnaître les composants, les techniques et les processus de PRINCE2 ainsi que leur interdépendance", "MG740", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB03", "Disposer des connaissances nécessaires pour participer à un projet géré selon PRINCE2", "MG740", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB04", "Passer l'examen PRINCE2 Foundation", "MG740", "fr_FR");

-- Insertion des objectifs de la formation MG741 --
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB01", "Approfondir sa connaissance des processus, des composants et des techniques de PRINCE2", "MG741", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB02", "Prendre connaissance des meilleures pratiques pour utiliser la méthode PRINCE2 dans la gestion de ses projets", "MG741", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB03", "Savoir appliquer les concepts de la méthodologie PRINCE2® à un scénario", "MG741", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB04", "Passer l’examen PRINCE2 Practitioner", "MG741", "fr_FR");

-- Insertion des objectifs de la formation G7829 --
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB01", "Identifier les conditions d'un management transversal efficace.", "G7829", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB02", "Mobiliser les acteurs concernés.", "G7829", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB03", "Augmenter son pouvoir de persuasion pour manager et impliquer sans lien hiérarchique.", "G7829", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB04", "Créer les conditions de la coopération en situation fonctionnelle.", "G7829", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB05", "Adapter ses comportements de manager transversal pour plus d\'efficacité.", "G7829", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB06", "Créer une relation de confiance avec les acteurs des missions transverses.", "G7829", "fr_FR");

-- Insertion des objectifs de la formation OB301 --
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB01", "Comprendre concepts et enjeux des architectures Web.", "OB301", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB02", "Comprendre et savoir évaluer l’architecture et la conception des principaux Framework Web du marché.", "OB301", "fr_FR");
INSERT INTO OBJECTIF(id_obj, lib_obj, ref_form, langue_obj)
VALUES("OB03", "Acquérir des savoir-faire pour concevoir, développer et déployer des applications web basées sur les technologies JSP et servlet.", "OB301", "fr_FR");

-- Table: PROG --

CREATE TABLE PROG
(
        id_prog  Varchar (15) NOT NULL ,
        lib_prog Varchar (140),
		langue_prog Varchar(15),
        ref_form Varchar (15) NOT NULL ,
        PRIMARY KEY (id_prog ,ref_form, langue_prog ),
		CONSTRAINT FK_PROG_ref_form FOREIGN KEY (ref_form) REFERENCES FORMATION(ref_form)
);

-- Insertion du Programme dans ces grandes lignes de la formation B201 --
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES ("P01", "Insérer des formules de calcul.", "B201", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES ("P02", "Soigner la mise en forme de vos tableaux.", "B201", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES ("P03", "Améliorer la présentation d\'un tableau dans une page.", "B201", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES ("P04", "Saisir et trier les données d\'une base.", "B201", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES ("P05", "Créer des graphiques adaptés aux données.", "B201", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES ("P06", "Améliorer la mise en forme d\'un graphique.", "B201", "fr_FR");

-- Insertion du Programme dans ces grandes lignes de la formation B202 --
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P01", "Suggestion des graphiques par rapport aux tableaux de données.", "B202", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P02", "Créer des graphiques adaptés aux données.", "B202", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P03", "Améliorer la mise en forme d\'un graphique.", "B202", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P04", "Améliorer la lisibilité des données d\un graphique.", "B202", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P05", "Utiliser différentes sources de données pour construire le graphique.", "B202", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P06", "Modifier la source de données du graphique.", "B202", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P07", "Utiliser des modèles pour gagner du temps.", "B202", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P08", "Insérer un graphique excel dans un document Word", "B202", "fr_FR");

-- Insertion du Programme dans ces grandes lignes de la formation CS53 --
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P01", "Introduction aux principes de sécurité réseau.", "CS53", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P02", "Protéger l\'infrastructure réseau.", "CS53", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P03", "Contrôle et maîtrise des menaces", "CS53", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P04", "Connectivté sécurisée.", "CS53", "fr_FR");

-- Insertion du Programme dans ces grandes lignes de la formation G7797 --
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P01", "Prendre en main AUTOCAD", "G7797", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P02", "Réaliser les dessins avec AUTOCAD", "G7797", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P03", "Modifier un dessin", "G7797", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P04", "Manipuler le texte et les styles dans AUTOCAD", "G7797", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P05", "Annoter et composer les plans", "G7797", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P06", "Importer et exporter des fichier AUTOCAD", "G7797", "fr_FR");

-- Insertion du Programme dans ces grandes lignes de la formation SAP21 --
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P01", "Option de base", "SAP21", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P02", "Données de base", "SAP21", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P03", "Contrôle des pièces", "SAP21", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P04", "Contrôle des écritures", "SAP21", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P05", "Rapprochement", "SAP21", "fr_FR");

-- Insertion du Programme dans ces grandes lignes de la formation SAP20 --
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P01", "Présentation de la comptabilité financière", "SAP20", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P02", "Comptabilité générale", "SAP20", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P03", "Comptabilité fournisseurs", "SAP20", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P04", "Comptabilité clients", "SAP20", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P05", "Comptabilité des immobilisations", "SAP20", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P06", "Comptabilité bancaire", "SAP20", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P07", "Opération de clôture dans la comptabilité général", "SAP20", "fr_FR");

-- Insertion du Programme dans ces grandes lignes de la formation MG740 --
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P01", "Introduction à la gestion de proget PRINCE2", "MG740", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P02", "Les Thèmes", "MG740", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P03", "Les Processus", "MG740", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P04", "Les Principes", "MG740", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P05", "Mise en pratique de la méthodologie", "MG740", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P06", "Examen test PRINCE2 FOUNDATION", "MG740", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P07", "Passage de l\examen PRINCE2 FOUNDATION", "MG740", "fr_FR");

-- Insertion du Programme dans ces grandes lignes de la formation MG741 --
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P01", "Approfondissement de tous les éléments de PRINCE2", "MG741", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P02", "Mise en pratique de la méthode", "MG741", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P03", "Examen test PRINCE2 PRACTICIEN", "MG741", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P04", "Passage de l\examen PRINCE2 PRACTITIONER", "MG741", "fr_FR");

-- Insertion du Programme dans ces grandes lignes de la formation G7829 --
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P01", "Activité à distance", "G7829", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P02", "1ière partie : Le manager transversal stratège (2jours)", "G7829", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P03", "Assumer sa légitimité de manager transversal", "G7829", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P04", "Activité à distance", "G7829", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P05", "2ième partie : Le manager transversal coordinateur (2jours)", "G7829", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P06", "Développer son influence pour mobiliser sans autorité hiérarchique", "G7829", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P07", "Assurer la coordination d\'une activité fonctionnelle", "G7829", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P08", "Activité à distance", "G7829", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P09", "3ième partie : Le manager transversal communicant (2jours)", "G7829", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P10", "Développer des comportements de coopération", "G7829", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P11", "Contractualiser la relation avec les différents intervenants", "G7829", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P12", "Activité à distance", "G7829", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P13", "4ième partie : Le manager transversal leader", "G7829", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P14", "Développer son leadership personnel de manager transversal", "G7829", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P15", "Développer une relation de confiance avec ses différents interlocuteurs", "G7829", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P16", "Gérer les situations relationnelles délicates avec les acteurs concernés", "G7829", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P17", "Activité à distance", "G7829", "fr_FR");

-- Insertion du Programme dans ces grandes lignes de la formation OB301--
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P01", "Introduction à JEE", "OB301", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P02", "JEE :  La spécification JAVA des applications d\'entreprise", "OB301", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P03", "Présentation des servlets", "OB301", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P04", "Les pages JSP", "OB301", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P05", "JSP et Servlet", "OB301", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P06", "Formulaires", "OB301", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P07", "Les contextes et sessions", "OB301", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P08", "JSTL et expression language", "OB301", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P09", "Les Taglib", "OB301", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P10", "Pour aller encore plus loin", "OB301", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P11", "Déploiement d\'une application web", "OB301", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P12", "Sécuriser les applicatons web", "OB301", "fr_FR");
INSERT INTO PROG(id_prog, lib_prog, ref_form, langue_prog)
VALUES("P13", "Les frameworks MVC", "OB301", "fr_FR");

-- Table: SOUS_PROG --

CREATE TABLE SOUS_PROG(
        id_sousprog  Varchar (15) NOT NULL ,
        lib_sousprog Varchar (140) ,
		langue_sousprog Varchar(15),
        id_prog      Varchar (15) NOT NULL ,
        ref_form     Varchar (15) NOT NULL ,
        PRIMARY KEY (id_sousprog ,id_prog ,ref_form, langue_sousprog ),
		CONSTRAINT FK_SOUS_PROG_id_prog FOREIGN KEY (id_prog) REFERENCES PROG(id_prog),
		CONSTRAINT FK_SOUS_PROG_ref_form FOREIGN KEY (ref_form) REFERENCES FORMATION(ref_form)
);

-- ------------------------------------------------------------------ --
-- Insertion des sous programmes de la formation B201 --
-- ------------------------------------------------------------------ --
-- Insertion des sous programmes de la formation B201 Programme P01 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Insérer les fonctions statiques (somme cumulée, max, min, nb, moyenne...).", "P01", "B201", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Visualiser les formules dans une feuille de calcul.", "P01", "B201", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Calculer les pourcentages dans une facture.", "P01", "B201", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Gagner du temps en recopiant une formule de calcul.", "P01", "B201", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP05", "Nommer une zone pour faciliter la lecture d'une formule.", "P01", "B201", "fr_FR");

-- Insertion des sous programmes de la formation B201 Programme P02 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Renvoyer à la ligne automatiquement dans une cellule.", "P02", "B201", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Utiliser les formats personnalisés.", "P02", "B201", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Masquer l\'affichage des zéros dans un tableau.", "P02", "B201", "fr_FR");

-- Insertion des sous programmes de la formation B201 Programme P03 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Savoir répéter automatiquement les titres d\'un tableau lors d\'une impression.", "P03", "B201", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Définir des zones d\'impression.", "P03", "B201", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Mettre à l\'échelle un tableau.", "P03", "B201", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Afficher les sauts de page.", "P03", "B201", "fr_FR");

-- Insertion des sous programmes de la formation B201 Programme P04 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Réaliser des tris multicritères (64 ordres de tri).", "P04", "B201", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Créer un format personnalisé pour trier des cellules alphanumériques.", "P04", "B201", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Trier selon un ordre personnalisé.", "P04", "B201", "fr_FR");

-- Insertion des sous programmes de la formation B201 Programme P05 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Suggestion des meilleurs graphiques par rapport à la structure des tableaux.", "P05", "B201", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Comparer des résultats en créant un histgramme.", "P05", "B201", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Visualiser une répartition avec un graphique en secteur (camembert).", "P05", "B201", "fr_FR");

-- Insertion des sous programmes de la formation B201 Programme P06 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Modifier les couleurs.", "P06", "B201", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Insérer une image dans le graphique", "P06", "B201", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Insérer des titres.", "P06", "B201", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Afficher les données chiffrées dans un graphique.", "P06", "B201", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP05", "Expliciter les résultats grâce à des zones de texte.", "P06", "B201", "fr_FR");


-- ------------------------------------------------------------------ --
-- Insertion des sous programmes de la formation B202 --
-- ------------------------------------------------------------------ --
-- Insertion des sous programmes de la formation B202 Programme P01 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Créer un graphique à partir de l\'outil d\'analyse rapide.", "P01", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Liste de graphiques recommandés par Excel pour représenter au mieux vos informations ou choisir dans tous les graphiques.", "P01", "B202", "fr_FR");

-- Insertion des sous programmes de la formation B202 Programme P02 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Créer un graphique combiné (histogramme + courbe).", "P02", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Visualiser une répartition avec un graphique en secteur (secteur de secteur et barre de secteurs).", "P02", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Mettre en relief une évolution avec un graphique en courbe.", "P02", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", 'Créer des mini-graphiques dans des cellules (graphiques \"Sparkline\")', "P02", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP05", "Créer un graphique à barres (ex : pyramide des âges).", "P02", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP06", "Utiliser un graphique en nuage de points.", "P02", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP07", "Créer un graphique bulle.", "P02", "B202", "fr_FR");

-- Insertion des sous programmes de la formation B202 Programme P03 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES ("SP01", "Différentes façon de modifier un graphique :", "P03", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES ("SP02", " - Éléments de graphique, styles de graphiques, filtre du graphique.", "P03", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES ("SP03", " - Menu contextuel en se plaçant toujours dans le graphique.", "P03", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES ("SP04", " - Clic droit e la souris sur l'objet à modifier (légende, série de données, axe, etc...).", "P03", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES ("SP05", " - Double clic pour obtenir un volet sur le côté de l\'écran.", "P03", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES ("SP06", "Insérer une image dans le graphique.", "P03", "B202", "fr_FR");

-- Insertion des sous programmes de la formation B202 Programme P04 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Réorganiser l\'ordre des séries dans un histogramme.", "P04", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Afficher les données chiffrées dans un graphique", "P04", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Expliciter les résultats grâce à des commentaires.", "P04", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Modifier l\'échelle de valeurs de l\'axe des ordonnées.", "P04", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP05", "Afficher/masquer le quadrillage et la légende.", "P04", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP06", "Afficher un deuxième axe des ordonnées dans un graphique combiné.", "P04", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP07", "Gérer les cellules vides dans une courbe.", "P04", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP08", "Protéger un graphique.", "P04", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP09", "Insérer une courbe de tendance pour visualiser les résultats futurs.", "P04", "B202", "fr_FR");

-- Insertion des sous programmes de la formation B202 Programme P05 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Créer un graphique croisé dynamique à partir d\'une base de données.", "P05", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Créer un graphique croisé dynamique à partir d\'un tableau croisé dynamique.", "P05", "B202", "fr_FR");

-- Insertion des sous programmes de la formation B202 Programme P06 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Afficher ou masquer une partie des données en utilisant le mode plan.", "P06", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Ajouter ou supprimer des séries à la source de données.", "P06", "B202", "fr_FR");

-- Insertion des sous programmes de la formation B202 Programme P07 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Créer un modèle de graphique pour enregistrer les paramètres de mise en forme.", "P07", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Utiliser le modèle personnalisé pour créer un nouveau graphique.", "P07", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Enregistrer vos tableaux standars dans un modèle de classeur.", "P07", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Créer un nouveau classeur à partir du modèle.", "P07", "B202", "fr_FR");

-- Insertion des sous programmes de la formation B202 Programme P08 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Copier un tableau Excel dans un document Word.", "P08", "B202", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Copier un tableau Excel dans un document Word avec liaison.", "P08", "B202", "fr_FR");

-- ------------------------------------------------------------------ --
-- Insertion des sous programmes de la formation CS53 --
-- ------------------------------------------------------------------ --
-- Insertion des sous programmes de la formation CS53 Programme P01 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Les fondamentaux de la sécurité réseau.", "P01", "CS53", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Comprendre les stratégies de sécurité avec une approche Life-Cycle.", "P01", "CS53", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Construire une stratégie de sécurité pour les réseaux Borderless.", "P01", "CS53", "fr_FR");

-- Insertion des sous programmes de la formation CS53 Programme P02 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "introduction à la protection des réseaux Cisco.", "P02", "CS53", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "protéger l\'infrastructure réseau avec Cisco Configuration Professional.", "P02", "CS53", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Sécuriser le plan de manager sur l\'IOS Cisco.", "P02", "CS53", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Configurer le AAA avec Cisco Secure ACS (Access Control Server).", "P02", "CS53", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP05", "Sécuriser le plan de données sur les switches Catalyst.", "P02", "CS53", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP06", "Sécuriser le plan de données dans les environnements IPV6.", "P02", "CS53", "fr_FR");

-- Insertion des sous programmes de la formation CS53 Programme P03 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Contrôle et maîtrise des menaces.", "P03", "CS53", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Implémenter des listes de contrôle d\'accès pour limites les menaces.", "P03", "CS53", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Comprendre les fondamentaux des pare-feux.", "P03", "CS53", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Mettre en oeuvre les stratégies dde pare_feux en mode Zone-Based.", "P03", "CS53", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP05", "Configurer les stratégies de base des pare-feux sur le matériel Cisco ASA.", "P03", "CS53", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP06", "Comprenddre les fondamentaux d\IPS - Implémenter Cisco IOS IPS.", "P03", "CS53", "fr_FR");

-- Insertion des sous programmes de la formation CS53 Programme P04 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Comprendre les fondamentaux des technologies VPN.", "P04", "CS53", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Introduction aux infrastructures de clés publics.", "P04", "CS53", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Présentation des fondamentaux d\'IPsec.", "P04", "CS53", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Implémenter les VPN site à site sur les routeurs Cisco IOS.", "P04", "CS53", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP05", "Implémenter les SSL VPN avec du matériel Cisco ASA.", "P04", "CS53", "fr_FR");

-- ----------------------------------------------------------------- ---
-- Insertion des sous programmes de la formation G7797 --
-- ------------------------------------------------------------------ --
-- Insertion des sous programmes de la formation G7797 Programme P01 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Se familiariser avec l\’interface : zone-écrans ; menus ; boîte à outils.", "P01", "G7797", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Configurer et utiliser la souris.", "P01", "G7797", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Savoir saisir les commandes.", "P01", "G7797", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Identifier les formats de fichier.", "P01", "G7797", "fr_FR");

-- Insertion des sous programmes de la formation G7797 Programme P02 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Débuter un nouveau dessin.", "P02", "G7797", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Créer un objet avec des lignes et des hachures.", "P02", "G7797", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Créer des cercles, arcs de cercle et ellipses.", "P02", "G7797", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Utiliser les aides au dessin : accrochage ; grille ; coordonnées...", "P02", "G7797", "fr_FR");

-- Insertion des sous programmes de la formation G7797 Programme P03 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Utiliser les barres d\’outils.", "P03", "G7797", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Modifier les attributs.", "P03", "G7797", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Construire un objet à partir d’objets existants.", "P03", "G7797", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Gérer les calques.", "P03", "G7797", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP05", "Créer des blocs.", "P03", "G7797", "fr_FR");

-- Insertion des sous programmes de la formation G7797 Programme P04 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Réaliser l\’habillage et la cotation du dessin.", "P04", "G7797", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Gérer les styles : cote ; tolérances ; ligne de repères ; unité...", "P04", "G7797", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Créer du texte multiligne, choisir le style de texte, les polices.", "P04", "G7797", "fr_FR");

-- Insertion des sous programmes de la formation G7797 Programme P05 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Créer un plan 2D.", "P05", "G7797", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "L\’Espace Objet /papier.", "P05", "G7797", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Gérer les échelles et l\’affichage.", "P05", "G7797", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Créer des bibliothèques.", "P05", "G7797", "fr_FR");

-- Insertion des sous programmes de la formation G7797 Programme P06 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Importer et exporter dans les différents formats.", "P06", "G7797", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Gestion et sauvegarde des mises en page.", "P06", "G7797", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Éditer les plans (imprimante/traceur).", "P06", "G7797", "fr_FR");

-- ------------------------------------------------------------------ --
-- Insertion des sous programmes de la formation SAP21 --
-- ------------------------------------------------------------------ --
-- Insertion des sous programmes de la formation SAP21 Programme P01 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Gestion des entités organisationnelles dans la comptabilité financière.", "P01", "SAP21", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Nouvelle comptabilité générale.", "P01", "SAP21", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Explication du principe des variantes.", "P01", "SAP21", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Gestion des versions d\’exercices.", "P01", "SAP21", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP05", "Connaissances des fonctions de base des devises.", "P01", "SAP21", "fr_FR");

-- Insertion des sous programmes de la formation SAP21 Programme P02 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Gestion des comptes généraux.", "P02", "SAP21", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Gestion des centres de profit et des segments.", "P02", "SAP21", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Gestion des comptes clients et des fournisseurs.", "P02", "SAP21", "fr_FR");

-- Insertion des sous programmes de la formation SAP21 Programme P03 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Configuration de l\’en-tête et des postes individuels des pièces FI.", "P03", "SAP21", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Gestion des périodes comptables.", "P03", "SAP21", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Gestion des autorisations d\’enregistrement.", "P03", "SAP21", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Création de pièces simples en comptabilité financière.", "P03", "SAP21", "fr_FR");

-- Insertion des sous programmes de la formation SAP21 Programme P04 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Analyse de la ventilation d\’une pièce.", "P04", "SAP21", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Gestion des valeurs par défaut.", "P04", "SAP21", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Configuration du contrôle de modifications.", "P04", "SAP21", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Configuration de la contre-passation de pièce.", "P04", "SAP21", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP05", "Configuration des conditions de paiement et des escomptes.", "P04", "SAP21", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP06", "Connaissance et gestion des taxes et des codes TVA.", "P04", "SAP21", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP07", "Gestion des écritures et des opérations inter-sociétés.", "P04", "SAP21", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP08", "Configuration de l’intégration en temps réel CO vers FI.", "P04", "SAP21", "fr_FR");

-- Insertion des sous programmes de la formation SAP21 Programme P05 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Rapprochement des postes non soldés.", "P05", "SAP21", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Analyse et écriture des écarts de paiement.", "P05", "SAP21", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Traitement des différences de change.", "P05", "SAP21", "fr_FR");

-- ------------------------------------------------------------------ --
-- Insertion des sous programmes de la formation SAP20 --
-- ------------------------------------------------------------------ --
-- Insertion des sous programmes de la formation SAP20 Programme P01 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Liste des composantes de base de SAP ERP.", "P01", "SAP20", "fr_FR");

-- Insertion des sous programmes de la formation SAP20 Programme P02 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Compréhension des structures organisationnelles dans la comptabilité financière.", "P02", "SAP20", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Gestion des fiches comptes généraux.", "P02", "SAP20", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Comptabilisation dans le grand livre.", "P02", "SAP20", "fr_FR");

-- Insertion des sous programmes de la formation SAP20 Programme P03 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Gestion des fiches fournisseurs.", "P03", "SAP20", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Gestion des opérations comptables dans la comptabilité fournisseurs.", "P03", "SAP20", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Gestion de l\’intégration entre la comptabilité financière et la gestion des articles.", "P03", "SAP20", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Gestion des opérations de clôture dans la comptabilité fournisseurs.", "P03", "SAP20", "fr_FR");

-- Insertion des sous programmes de la formation SAP20 Programme P04 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES ("SP01", "Gestion des fiches clients.", "P04", "SAP20", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES ("SP02", "Gestion des opérations comptables dans la comptabilité clients.", "P04", "SAP20", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES ("SP03", "Gestion de la correspondance client.", "P04", "SAP20", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES ("SP04", "Création de cas litigieux dans la comptabilité clients.", "P04", "SAP20", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES ("SP05", "Gestion des factures dans la gestion des commandes client.", "P04", "SAP20", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES ("SP06", "Utilisation d\’outils de clôture dans la comptabilité clients.", "P04", "SAP20", "fr_FR");

-- Insertion des sous programmes de la formation SAP20 Programme P05 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES ("SP01", "Gestion des fiches d\’immobilisation.", "P05", "SAP20", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES ("SP02", "Exécution des mouvements d\’immobilisation.", "P05", "SAP20", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES ("SP03", "Exécution des activités de clôture de période dans la comptabilité des immobilisations.", "P05", "SAP20", "fr_FR");

-- Insertion des sous programmes de la formation SAP20 Programme P06 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES ("SP01", "Gestion des fiches dans la comptabilité bancaire.", "P06", "SAP20", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES ("SP02", "Gestion des transactions commerciales dans la comptabilité bancaire.", "P06", "SAP20", "fr_FR");

-- Insertion des sous programmes de la formation SAP20 Programme P07 --


-- ------------------------------------------------------------------ --
-- Insertion des sous programmes de la formation MG740 --
-- ------------------------------------------------------------------ --
-- Insertion des sous programmes de la formation MG740 Programme P01 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Historique.", "P01", "MG740", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Tour d\'horizon.", "P01", "MG740", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "PRINCE2 et la gestion de projet.", "P01", "MG740", "fr_FR");

-- Insertion des sous programmes de la formation MG740 Programme P02 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Cas d\'affaire.", "P02", "MG740", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Organisation.", "P02", "MG740", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Plans.", "P02", "MG740", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Progression.", "P02", "MG740", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP05", "Risques.", "P02", "MG740", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP06", "Qualité.", "P02", "MG740", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP07", "Changements.", "P02", "MG740", "fr_FR");

-- Insertion des sous programmes de la formation MG740 Programme P03 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Diriger le projet.", "P03", "MG740", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Élaborer le projet.", "P03", "MG740", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Initialiser le projet.", "P03", "MG740", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Contrôler une séquence.", "P03", "MG740", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP05", "Gérer la livraison des produits.", "P03", "MG740", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP06", "Gérer une limite de séquence.", "P03", "MG740", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP07", "Clore le projet.", "P03", "MG740", "fr_FR");

-- Insertion des sous programmes de la formation MG740 Programme P04 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Leçons tirées de l'expérience.", "P04", "MG740", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Rôles et responsabilités définis.", "P04", "MG740", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Justification continue pour l\'entreprise.", "P04", "MG740", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Management par séquences.", "P04", "MG740", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP05", "Management par exception.", "P04", "MG740", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP06", "Focalisation produit.", "P04", "MG740", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP07", "Adaptation à l\'environnement de projet.", "P04", "MG740", "fr_FR");

-- Insertion des sous programmes de la formation MG740 Programme P05 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Étude de cas.", "P05", "MG740", "fr_FR");

-- Insertion des sous programmes de la formation MG740 Programme P06 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Révision.", "P06", "MG740", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Test blanc.", "P06", "MG740", "fr_FR");

-- Insertion des sous programmes de la formation MG740 Programme P07 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Examen délivré en salle et en français.", "P07", "MG740", "fr_FR");


-- ------------------------------------------------------------------ --
-- Insertion des sous programmes de la formation MG741 --
-- ------------------------------------------------------------------ --
-- Insertion des sous programmes de la formation MG741 Programme P01 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Attribuer les rôles selon les acteurs.", "P01", "MG741", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Gouvernance et matrice des responsabilités.", "P01", "MG741", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Vue détaillée des produits de management.", "P01", "MG741", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Vue détaillée des thèmes, processus et principes.", "P01", "MG741", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP05", "Vue détaillée des techniques recommandées.", "P01", "MG741", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP06", "Les interactions entre les produits de management, les processus et les thèmes.", "P01", "MG741", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP07", "Adaptation et intégration des 4 éléments PRINCE2 sur un projet.", "P01", "MG741", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP08", "Adaptation des produits de management PRINCE2 à l’environnement projet.", "P01", "MG741", "fr_FR");

-- Insertion des sous programmes de la formation MG741 Programme P02 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Appliquer les principes PRINCE2 aux projets.", "P02", "MG741", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Utiliser et adapter les produits de management PRINCE2.", "P02", "MG741", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Utiliser les techniques recommandées.", "P02", "MG741", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Mise en pratique de l\’élaboration, l\’initialisation, le contrôle et la clôture d’un projet PRINCE2 sur une étude de cas.", "P02", "MG741", "fr_FR");

-- Insertion des sous programmes de la formation MG741 Programme P03 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Révision.", "P03", "MG741", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Test blanc.", "P03", "MG741", "fr_FR");

-- Insertion des sous programmes de la formation MG741 Programme P04 --


-- ------------------------------------------------------------------ --
-- Insertion des sous programmes de la formation G7829 --
-- ------------------------------------------------------------------ --
-- Insertion des sous programmes de la formation G7829 Programme P01 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Pour acquérir une connaissance théorique avant la formation en salle : un vidéocast \"Les spécificités du management transversal\".", "P01", "G7829", "fr_FR");

-- Insertion des sous programmes de la formation G7829 Programme P02 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Se positionner dans son rôle de manager transversal.", "P02", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Enjeux et défis actuels de la transversalité.", "P02", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Les spécificités du management transversal parmi les autres modes de management : projet, processus, réseau...", "P02", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Agir dans et avec l\'organisation : la plus value du management transversal.", "P02", "G7829", "fr_FR");

-- Insertion des sous programmes de la formation G7829 Programme P03 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Identifier les fondements de sa légitimité managériale.", "P03", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Trouver sa légitimité dans son contexte.", "P03", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Prendre en compte les paramètres de son contexte : organisation ; positionnement ; acteurs, soi-même.", "P03", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Évaluer les enjeux réels de sa mission transversale.", "P03", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP05", "Agir sur les leviers pertinents pour développer sa légitimité de manager transversal.", "P03", "G7829", "fr_FR");

-- Insertion des sous programmes de la formation G7829 Programme P04 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Pour mettre en application les bonnes pratiques et les acquis d\’une formation : deux modules e-learning \"Situer son rôle de manager transversal\" et \"La stratégie d\’influence du manager transversal\".", "P04", "G7829", "fr_FR");

-- Insertion des sous programmes de la formation G7829 Programme P05 --


-- Insertion des sous programmes de la formation G7829 Programme P06 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Concilier stratégie globale et intérêts locaux.", "P06", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Identifier les acteurs clés.", "P06", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Repérer les enjeux des différents partenaires et utiliser une stratégie adaptée.", "P06", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Agir sur les leviers de l'influence sans autorité statutaire.", "P06", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP05", "Mobiliser les énergies autour d\'objectifs communs.", "P06", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP06", "Définir et faire appliquer localement des référentiels communs pour assurer une cohérence d\'ensemble.", "P06", "G7829", "fr_FR");

-- Insertion des sous programmes de la formation G7829 Programme P07 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Identifier les mécanismes de coordination utilisables par le manager transversal.", "P07", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Utiliser le mode de coordination le plus adapté à la situation : de la standardisation à l\'ajustement mutuel.", "P07", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Mettre en adéquation les outils avec le mode de coordination recherché.", "P07", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Utiliser la confrontation des expertises et le transfert d\'expérience.", "P07", "G7829", "fr_FR");

-- Insertion des sous programmes de la formation G7829 Programme P08 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Pour mettre en application les bonnes pratiques et les acquis d’une formation : un module e-learning \"Assurer la coordination transversale\".", "P08", "G7829", "fr_FR");

-- Insertion des sous programmes de la formation G7829 Programme P09 --


-- Insertion des sous programmes de la formation G7829 Programme P10 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Construire les conditions de la coopération.", "P10", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Motiver ses interlocuteurs autour de la fonction.", "P10", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Adopter une logique de contreparties.", "P10", "G7829", "fr_FR");

-- Insertion des sous programmes de la formation G7829 Programme P11 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Associer les acteurs et leur ligne hiérarchique.", "P11", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Clarifier les objectifs, les rôles et les règles du jeu.", "P11", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Gérer les relations avec la ligne hiérarchique.", "P11", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Tenir compte de l\'évolution des enjeux et des priorités.", "P11", "G7829", "fr_FR");

-- Insertion des sous programmes de la formation G7829 Programme P12 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Pour mettre en application les bonnes pratiques et les acquis d’une formation : un module e-learning \"Les clés de la communication du manager transversal\".", "P12", "G7829", "fr_FR");
-- Insertion des sous programmes de la formation G7829 Programme P13 --


-- Insertion des sous programmes de la formation G7829 Programme P14 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Les spécificités du leadership du manager transversal.", "P14", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Prendre conscience de ses qualités de leader.", "P14", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Dépasser ses rigidités personnelles, accroître sa flexibilité et son influence personnelle.", "P14", "G7829", "fr_FR");

-- Insertion des sous programmes de la formation G7829 Programme P15 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Favoriser les contacts positifs et constructifs.", "P15", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Trouver le bon niveau d\'influence et de contrôle.", "P15", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Communiquer et dialoguer franchement et ouvertement.", "P15", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Créer un climat facilitant l\'adhésion, la responsabilisation et la confiance.", "P15", "G7829", "fr_FR");

-- Insertion des sous programmes de la formation G7829 Programme P16 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Donner et recevoir des feed-back de manière positive, non agressive et sans anxiété pour faire progresser la mission.", "P16", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Identifier ses mécanismes défensifs et ceux des acteurs.", "P16", "G7829", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Se doter d\'outils pour résoudre durablement les conflits.", "P16", "G7829", "fr_FR");

-- Insertion des sous programmes de la formation G7829 Programme P17 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Pour découvrir un sujet en lien avec votre formation : un module e-learning \"Le leadership du manager transversal\".", "P17", "G7829", "fr_FR");

-- ------------------------------------------------------------------ --
-- Insertion des sous programmes de la formation OB301 --
-- ------------------------------------------------------------------ --
-- Insertion des sous programmes de la formation OB301 Programme P01 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Problématiques et caractéristiques des applications Web (HTTP, HTML et URL).", "P01", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Les architectures Client / Serveur Web.", "P01", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Les diverses solutions.", "P01", "OB301", "fr_FR");

-- Insertion des sous programmes de la formation OB301 Programme P02 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Description.", "P02", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Notion de container Web et de container EJB.", "P02", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Le packaging.", "P02", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Un descripteur de déploiement universel.", "P02", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP05", "Les serveurs d'application.", "P02", "OB301", "fr_FR");

-- Insertion des sous programmes de la formation OB301 Programme P03 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Concepts.", "P03", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Cycle de vie.", "P03", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "HttpServletRequest et HttpServletResponse.", "P03", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Définition des pages d\'accueil et d\'erreur.", "P03", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP05", "Gestion des accès concurrents (Multi-Thread)", "P03", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP06", "Exemple d\'outillage (IDE/container Web) avec Eclipse WebTools et Tomcat", "P03", "OB301", "fr_FR");

-- Insertion des sous programmes de la formation OB301 Programme P04 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Concepts.", "P04", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Différence avec les Servlets.", "P04", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Inclusion statique et dynamique.", "P04", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Objets implicites.", "P04", "OB301", "fr_FR");

-- Insertion des sous programmes de la formation OB301 Programme P05 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Utilisation du model de conception MVC.", "P05", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Utilisation du \"redirect\" et du \"forward\".", "P05", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Utilisation conjointe JSP/Servlet.", "P05", "OB301", "fr_FR");

-- Insertion des sous programmes de la formation OB301 Programme P06 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Principes.", "P06", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Les composants graphiques.", "P06", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Validation et traitement des saisies.", "P06", "OB301", "fr_FR");

-- Insertion des sous programmes de la formation OB301 Programme P07 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Différence entre \"Paramètre\" et \"Attribut\".", "P07", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Les scopes (page, request, application et session).", "P07", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "La gestion des sessions (cookies, URL rewriting).", "P07", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Retour d\’expérience sur les bonnes pratiques.", "P07", "OB301", "fr_FR");

-- Insertion des sous programmes de la formation OB301 Programme P08 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "JSTL : la normalisation des Tags \"standards\".", "P08", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "EL (Expression Language) : une nouvelle souplesse pour les JSP.", "P08", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Structure de contrôle avec \"JSTL core\".", "P08", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Gestion des messages et de l'I18n (internationalisation) avec \"JSTL fmt\".", "P08", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP05", "Connexion à une base de données avec \"JSTL sql\".", "P08", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP06", "Manipulation XML avec \"JSTL XML\".", "P08", "OB301", "fr_FR");

-- Insertion des sous programmes de la formation OB301 Programme P09 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Principe des librairies de Tag.", "P09", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Les Tag JSP par défaut.", "P09", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Définir et utiliser ses propres Tags.", "P09", "OB301", "fr_FR");

-- Insertion des sous programmes de la formation OB301 Programme P10 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Les listeners.", "P10", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Les filtres.", "P10", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Accès aux informations utilisateur (langue, adresse IP, navigateur, etc.).", "P10", "OB301", "fr_FR");

-- Insertion des sous programmes de la formation OB301 Programme P11 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Les fichiers WAR.", "P11", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Les outils de pré-déploiement et déploiement.", "P11", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Retours d\’expérience : les bonnes pratiques de déploiement.", "P11", "OB301", "fr_FR");

-- Insertion des sous programmes de la formation OB301 Programme P12 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Authentification / autorisation.", "P12", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Sécurité déclarative et Sécurité programmatique.", "P12", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Utilisation de \"Security Role-Based\".", "P12", "OB301", "fr_FR");

-- Insertion des sous programmes de la formation OB301 Programme P13 --
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP01", "Pourquoi utiliser des frameworks plutôt que des JSP/Servlet seuls.", "P13", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP02", "Le modèle de conception MVC2 et le Front Controller.", "P13", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP03", "Les frameworks Struts/Struts2.", "P13", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP04", "Le framework JSF.", "P13", "OB301", "fr_FR");
INSERT INTO SOUS_PROG(id_sousprog, lib_sousprog, id_prog, ref_form, langue_sousprog)
VALUES("SP05", "Spring MVC.", "P13", "OB301", "fr_FR");

CREATE TABLE PERSONNE
(
	id_pers Varchar(15) NOT NULL,
	nom_pers Varchar(25),
	prenom_pers Varchar(25),
	sexe_pers Varchar(25),
	date_naissance_pers Date,
	email_pers Varchar(100),
	adresse Varchar(100),
	cp_pers Int(10),
	ville_pers Varchar(50),
	tel_fixe_pers Varchar(20),
	tel_mobile_pers Varchar(20),
	login_pers Varchar(50),
	mdp_pers Varchar(40),
	PRIMARY KEY(id_pers)
);

CREATE TABLE INSCRIRE
(
	etat_inscription Varchar(25) ,
	date_inscription Date ,
	langue_inscription Varchar(15) ,
	ref_form Varchar (15) NOT NULL ,
	id_pers Int NOT NULL ,
	PRIMARY KEY (ref_form ,id_pers ),
	CONSTRAINT FK_INSCRIRE_ref_form FOREIGN KEY (ref_form) REFERENCES FORMATION(ref_form),
	CONSTRAINT FK_INSCRIRE_id_pers FOREIGN KEY (id_pers) REFERENCES PERSONNE(id_pers)
);

CREATE TABLE STRING
(
	langue_str Varchar(15),
	id_str Varchar(15),
	texte_str Varchar(50000),
	page_str Varchar(100),
	PRIMARY KEY(id_str, langue_str, page_str)
);

-- Français Page Index --
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "1", "La société <strong>PRIXY</strong> est un jeune acteur sur le marché de la formation à destination des professionnels. Elle a été créée fin 2013 par deux associés, 
<kbd><a href='equipe.php' style='text-decoration:none;color:#fff;'>S.Millot</a></kbd>, consultant depuis plus de dix ans dans le secteur de la formation industrielle et <kbd>
<a href='equipe.php' style='text-decoration:none;color:#fff;'>C. Joubert</a></kbd>, expert-formateur spécialisé dans la formation aux technologies de l’information et de la communication.", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "2", "Implantée à Lyon, PRIXY s’adresse principalement aux petites et moyennes entreprises ainsi qu’aux collectivités ; elle accompagne ses clients dans la définition et la mise 
en œuvre de solutions de formation. En 2015, PRIXY a assuré la montée en compétences de près de 2 500 collaborateurs des secteurs privés et publics, pour un chiffre d’affaires de 950 000 €.", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "3", "Perspectives d'évolution du systeme d'information", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "4", "PROJETS", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "5", "Nouvelle salle de formation", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "6", "Grâce aux nouvelles demande de formations, Prixy a de plus en plus de mal à répondre à tous. Les deux salles de formation ne suffisent plus. PRIXY souhaite équiper une troisième 
salle de formation. Elle dispose d’un espace vacant idéal pour accueillir cette nouvelle salle.", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "7", "Reconfiguration automatique", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "8", "Les sessions de formation s’enchaînent, C. Joubert ne parvient plus à préparer dans de bonnes conditions les salles avant chaque formation ; le système de reconfiguration des salles 
qui convenait jusqu’alors pour une activité moyenne, trouve aujourd’hui ses limites.", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "9", "C.Joubert souhaite mettre en place un dispositif permettant d’automatiser la reconfiguration des postes avant chaque nouvelle session de formation.", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "10", "Centralisation du stockage", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "11", "Afin d’éviter les manipulations de fichiers répétitives, fastidieuses, sources d’erreur, ... Les formateurs souhaitent disposer d’une solution permettant de gérer de 
manière plus rationnelle les ressources mises à disposition des participants ainsi que les productions des stagiaires.", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "12", "PRIXY envisage de se tourner vers une solution permettant de centraliser le stockage des fichiers. Cette solution se devra d’être sécurisée.", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "13", "Accés Wifi", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "14", "Pour répondre à une demande récurrente de la part des participants, PRIXY veut mettre à disposition de ses clients un accès wifi gratuit.", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "15", "Salle à louer", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "16", "PRIXY envisage également de proposer dans son offre de services une nouvelle prestation : la mise à disposition de la salle « Beryl ». PRIXY veut pouvoir louer cet 
espace soit à des autoentrepreneurs ne disposant d’aucun local ou à des petites entreprises souhaitant organiser des séminaires ou des présentations commerciales d’envergure.", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "17", "Présent", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "18", "Installation de deux salles", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "19", "Les salles informatiques « Jaspe » et « Opale ».", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "20", "Création de Prixy : 2013", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "21", "Créée fin 2013 par deuxassociés, S. Millot, consultant depuis plus de dix ans dans le secteur dela formation industrielle et C. Joubert, expert-formateur spécialisé dans la 
formation aux technologies de l’information et de la communication.", "Index");

-- Anglais Page Index --
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "1", "Society <strong>PRIXY</strong> is a young actor in the training market for professionals. It was created in late 2013 by two partners, 
<kbd><a href='equipe.php' style='text-decoration:none;color:#fff;'>S.Millot</a></kbd>, consultant for over ten years in the sector of industrial training and <kbd>
<a href='equipe.php' style='text-decoration:none;color:#fff;'>C. Joubert</a></kbd>, trainer-expert in training in information and communications technology.", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "2", "Based in Lyon, PRIXY is intended primarily for small and medium businesses and communities; it supports its clients in the definition and implementation
implement training solutions. In 2015, PRIXY assured the skills rise of nearly 2 500 employees of private and public sectors, for a turnover of £950,000.", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "3", "Evolution of the information system perspective", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "4", "PROJECTS", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "5", "New training Room", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "6", "With new demand for training, Prixy more and more difficult to respond to all. The two classrooms are not enough. PRIXY wants to equip a third
training room. It has a vacant ideal space for this new room.", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "7", "Automatic reconfiguration", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "8", "The training sessions are connected, C. Joubert no longer able to prepare in good conditions before each training rooms; the rooms reconfiguration system
until that suited for an average business, today has its limits.", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "9", "C.Joubert wants to set up a system to automate the reconfiguration of positions before each training session.", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "10", "Centralized storage", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "11", "To avoid repetitive manipulation of files, tedious, error sources, ... Trainers desire a solution to manage
more rational resources made available to participants and the trainees productions.", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "12", "PRIXY plans to turn to a solution that centralizes the storage of files. This solution must be secure.", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "13", "WiFi Access Point", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "14", "To meet a recurring demand from participants, PRIXY wants to provide its customers free wifi.", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "15", "Room to rent", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "16", "PRIXY also plans to propose in its offering a new service: the provision of the room Beryl. PRIXY wants to rent this
autoentrepreneurs space or to not having any local or small business wishing to organize seminars or commercial-scale presentations.", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "17", "Present", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "18", "Installaton of two room", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "19", "Computer rooms Jasper and Opal", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "20", "Prixy Creation in 2013", "Index");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "21", "Founded in late 2013 by two partners, S. Millot, consultant for over ten years in the industrial sector and training dela C. Joubert, trainer-expert in the
training in information and communications technology.", "Index");

-- Français Page Equipe --
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "1", "Formateur", "Equipe");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "2", "Sa mission consiste dans un premier temps à préparer les cours ainsi que la salle de formation puis dans un deuxième temps, assurer l’animation de la formation
 et l’évaluation des apprenants le cas échéant.", "Equipe");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "3", "Formateur & Gestion relation client", "Equipe");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "4", "Sa mission consiste à accompagner notamment les clients dans leurs demandes spécifiques et définit avec eux une solution de formation sur mesure.", "Equipe");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "5", "Assistante de gestion", "Equipe");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "6", "Sa mission consiste à assurer un certain nombre de tâches comme la gestion administrative, la gestion des inscriptions, la facturation, ... 
En outre, elle a en charge l’accueil des participants aux formations et de la gestion des appels téléphoniques.", "Equipe");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "7", "Pour faire face aux pics d’activité ou pour répondre à des formations dans des domaines spécifiques, PRIXY a recours occasionnellement à des experts-formateurs 
indépendants.", "Equipe");

-- Anglais Page Equipe --
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "1", "Trainer", "Equipe");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "2", "Its mission is firstly to prepare the courses and the training room and secondly, ensuring the animation training and learner assessment if necessary.", "Equipe");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "3", "Trainer & Customer Relationship Management", "Equipe");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "4", "Its mission is to accompany including customers in their specific demands and defines them with a customized training solution.", "Equipe");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "5", "Management Assistant", "Equipe");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "6", "Its mission is to ensure a number of tasks such as administrative, enrollment management, billing, ... In addition, it supports the reception of participants in training and 
management of telephone calls.", "Equipe");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "7", "To cope with peaks of activity or respond to training in specific areas, PRIXY uses occasionally to expert trainers independent.", "Equipe");

-- Français Page Formation --
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "1", "Formation \"Sur mesure\"", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "2", "Pour répondre à un besoin de formation précis, PRIXY organise un entretien de cadrage pour définir avec son client un contenu spécifique et proposer un programme détaillé 
prenant en compte le contexte du projet, le profil des apprenants, les disponibilités...", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "3", "La formation sur-mesure est exclusivement réservée aux collaborateurs de l’entreprise cliente ; elle se déroule dans les locaux de PRIXY en plusieurs sessions le cas échéant.", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "4", "CONTACT", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "5", "Programme détaillé de la formation :", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "6", "Domaine :", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "7", "Objectif :", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "8", "Pré-requis à la formation :", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "9", "Type de Public :", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "10", "Délivre une certification :", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "11", "Durée de la formation :", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "12", "Tarif de la formation :", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "13", "Liste des Sessions :", "Formation");

-- Anglais Page Formation --
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "1", "\"customized\" training", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "2", "To answer a need for specific training, PRIXY organizing a scoping interview to define with the client a specific content and propose a detailed program
taking into account the context of the project, the learner profile, availability... ", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "3", "The customized training is available exclusively to employees of the client company; it takes place in the premises of PRIXY in several sessions if necessary.", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "4", "CONTACT", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "5", "Detailed training program : ", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "6", "Purview : ", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "7", "Objectif : ", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "8", "Prerequisites for training : ", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "9", "Public type : ", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "10", "Issues a certification : ", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "11", "Formation's Time : ", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "12", "Formation's Price", "Formation");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "13", "Session list : ", "Formation");

-- Français Page Contact -
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "1", "Adresse", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "2", "Plan d'accès", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "3", "Formulaire de contact", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "4", "Tous les champs avec * doivent être remplies.", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "5", "Nom *", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "6", "Prénom *", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "7", "E-mail *", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "8", "Message *", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "9", "Copie du message", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "10", "Envoyer", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "11", "exemple@exemple.fr", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "12", "Écrivez votre message ici", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "13", "Votre réponse", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "14", "Partenaires", "Contact");

-- Anglais Page Contact --
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "1", "mail adress", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "2", "Access map", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "3", "Contact form", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "4", "All fields with * are required fields.", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "5", "First Name", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "6", "Forename", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "7", "E-mail", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "8", "Message", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "9", "Message copy", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "10", "Send", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "11", "example@example.fr", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "12", "Write your message here", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "13", "Your answer", "Contact");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "14", "Partners", "Contact");

-- Français Menu --
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "1", "Accueil", "Menu");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "2", "Équipe", "Menu");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "3", "Formation", "Menu");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "4", "Contact", "Menu");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "5", "Langue", "Menu");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "6", "Connexion", "Menu");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "7", "Inscription", "Menu");

-- Anglais Menu --
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("en-US", "1", "Home", "Menu");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("en-US", "2", "Team", "Menu");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("en-US", "3", "Training", "Menu");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("en-US", "4", "Contact", "Menu");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("en-US", "5", "Language", "Menu");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("en-US", "6", "Log in", "Menu");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("en-US", "7", "Sign in", "Menu");

-- Français Connexion
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "1", "Se Connecter", "Connexion");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "2", "Login", "Connexion");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "3", "Renseignez vos identifiants de connexion", "Connexion");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "4", "Mot de passe", "Connexion");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "5", "Renseignez votre mot de passe", "Connexion");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "6", "Connecter", "Connexion");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "7", "Nouvel Adhérent ?", "Connexion");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "8", "Mot de passe oublié ?", "Connexion");

-- Anglais Connexion
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "1", "Log in", "Connexion");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "2", "Login", "Connexion");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "3", "Fill in your login credentials", "Connexion");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "4", "Password", "Connexion");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "5", "Fill in your password credentials", "Connexion");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "6", "Log in", "Connexion");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "7", "New member ?", "Connexion");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES ("fr-FR", "8", "Forget your password ?", "Connexion");

-- Français Inscription
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "1", "Formulaire d'inscription", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "2", "Nom", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "3", "Exemple : Bono", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "4", "Prénom", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "5", "Exemple : Jean", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "6", "Je suis une femme !", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "7", "Je suis un homme !", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "8", "Date de naissance", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "9", "Adresse mail", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "10", "Exemple : jean-bono@monmail.com", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "11", "Code postale", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "12", "Veuillez insérer votre code postale", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "13", "Ville", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "14", "Veuillez insérer le nom de votre ville", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "15", "Tel. fixe", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "16", "Votre numéro de téléphone fixe", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "17", "Tel. Mob", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "18", "Login", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "19", "Veuillez entrer votre pseudonyme de connexion", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "20", "Mot de passe", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "21", "Veuillez insérer votre mot de passe", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "22", "* Au moins 8 caractères avec au moins une majuscule, une minuscule et un nombre.", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "23", "Confirmer MdP", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "24", "Renseignez de nouveau votre mot de passe", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("fr-FR", "25", "Valider !", "Inscription");


-- Anglais Inscription
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "1", "Registration Form", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "2", "Name", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "3", "Example : Bono", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "4", "Surname", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "5", "Example : Jean", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "6", "I'm a Lady !", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "7", "I'm a men !", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "8", "Birth date", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "9", "E-mail", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "10", "Example : jean-bono@mymail.com", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "11", "Zip code", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "12", "Please insert your zip code", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "13", "Town", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "14", "Please insert your town's name", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "15", "Phone", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "16", "Please insert your number of your phone", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "17", "Mobile", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "18", "Please insert your number of your mobilephone", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "19", "Login", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "20", "Please enter your nickname's connection", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "21", "Password", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "22", "Please enter your password", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "23", "* At least 8 characters with one upper case, one lower case and one number.", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "24", "Confirm Password", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "25", "Please enter again your password", "Inscription");
INSERT INTO STRING(langue_str, id_str, texte_str, page_str)
VALUES("en-US", "26", "Validate !", "Inscription");