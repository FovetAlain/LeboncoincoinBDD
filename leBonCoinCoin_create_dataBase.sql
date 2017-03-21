DROP DATABASE IF EXISTS LeBonCoinCoin;
CREATE DATABASE LeBonCoinCoin;

USE LeBonCoinCoin;


DROP TABLE IF EXISTS locataires; 
DROP TABLE IF EXISTS proprietaires;
DROP TABLE IF EXISTS annonces;
DROP TABLE IF EXISTS foyer;
DROP TABLE IF EXISTS revenus;
DROP TABLE IF EXISTS noteProprietaire;
DROP TABLE IF EXISTS noteLocataire;
DROP TABLE IF EXISTS personnes;

create table foyer
(
idFoyer INTEGER(5) NOT NULL AUTO_INCREMENT,
constraint pk_foyer primary key(idFoyer)
);

create table personnes
(
idPersonne INTEGER(11) NOT NULL AUTO_INCREMENT,
nom VARCHAR(50) NOT NULL,
prenom VARCHAR(50) NOT NULL,
mail VARCHAR(50) NOT NULL,
motDePasse TEXT NOT NULL,
constraint pk_personnes primary key(idPersonne)
);

create table locataires
(
idLocataire INTEGER(11) NOT NULL AUTO_INCREMENT,
pseudoLocataire VARCHAR(50) UNIQUE,
fk_idFoyer INTEGER(5),
fk_idPersonne INTEGER(11) NOT NULL,
constraint pk_locataires primary key(idLocataire),
FOREIGN KEY (fk_idFoyer) REFERENCES foyer(idFoyer),
FOREIGN KEY (fk_idPersonne) REFERENCES personnes(idPersonne)
);

create table proprietaires
(
idProprietaire INTEGER(11) NOT NULL AUTO_INCREMENT,
pseudoProprietaire VARCHAR(50) UNIQUE,
fk_idPersonne INTEGER(11) NOT NULL,
constraint pk_proprietaires primary key(idProprietaire),
FOREIGN KEY (fk_idPersonne) REFERENCES personnes(idPersonne)
);

create table annonces
(
idAnnonce INTEGER(11) NOT NULL AUTO_INCREMENT,
fk_idProprietaire INTEGER(11),
titreAnonce TEXT,
texteAnnonce TEXT,
prix DOUBLE,
dateDisponibilite DATETIME DEFAULT CURRENT_TIMESTAMP,
lienImage TEXT,
rue VARCHAR(50),
numero VARCHAR(5),
ville VARCHAR(50),
cp INTEGER(5),
type VARCHAR(15),
surface DOUBLE,
nombrePieces INTEGER(3),
jardin DOUBLE,
garage DOUBLE,
cave DOUBLE,
constraint pk_annonces primary key(idAnnonce),
FOREIGN KEY (fk_idProprietaire) REFERENCES proprietaires(idProprietaire)
);

create table revenus 
(
idRevenu INTEGER(11) NOT NULL AUTO_INCREMENT,
fk_idLocataire INTEGER(11),	
revenus INTEGER(11),
constraint pk_revenus primary key(idRevenu),
FOREIGN KEY (fk_idLocataire) REFERENCES locataires(idLocataire)
);

create table noteLocataire
(
idNoteLocataire INTEGER(11) NOT NULL AUTO_INCREMENT,
fk_idProprietaire INTEGER(11),
fk_idLocataire INTEGER(11),
commentaire TEXT,
constraint pk_noteLocataire primary key(idNoteLocataire),
FOREIGN KEY (fk_idLocataire) REFERENCES locataires(idLocataire),
FOREIGN KEY (fk_idProprietaire) REFERENCES proprietaires(idProprietaire)
);

create table noteProprietaire
(
idNoteProprietaire INTEGER(11) NOT NULL AUTO_INCREMENT,
fk_idProprietaire INTEGER(11),
fk_idLocataire INTEGER(11),
commentaire TEXT,
constraint pk_noteProprietaire primary key(idNoteProprietaire),
FOREIGN KEY (fk_idLocataire) REFERENCES locataires(idLocataire),
FOREIGN KEY (fk_idProprietaire) REFERENCES proprietaires(idProprietaire)
);



