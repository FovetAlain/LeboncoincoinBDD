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

create table foyer
(
IdFoyer INTEGER(5) NOT NULL AUTO_INCREMENT,
constraint pk_foyer primary key(IdFoyer)
);

create table locataires
(
IdLocataire INTEGER(11) NOT NULL AUTO_INCREMENT ,
PseudoLocataire VARCHAR(50) NOT NULL UNIQUE,
NomLocataire VARCHAR(50),
PrenomLocataire VARCHAR(50),
MailLocataire VARCHAR(50),
IdFoyer INTEGER(5),
constraint pk_locataires primary key(IdLocataire),
FOREIGN KEY (IdFoyer) REFERENCES foyer(IdFoyer)
);

create table proprietaires
(
IdProprietaire INTEGER(11) NOT NULL AUTO_INCREMENT,
PseudoProprietaire VARCHAR(50) NOT NULL UNIQUE,
NomProprietaire VARCHAR(50),
PrenomProprietaire VARCHAR(50),
MailProprietaire VARCHAR(50),
constraint pk_proprietaires primary key(IdProprietaire)
);

create table annonces
(
IdAnnonce INTEGER(11) NOT NULL AUTO_INCREMENT,
IdProprietaire INTEGER(11),
TitreAnonce TEXT,
TexteAnnonce TEXT,
lienImage TEXT,
AdresseRue VARCHAR(50),
AdresseNumero VARCHAR(5),
AdresseVille VARCHAR(50),
AdresseCP INTEGER(5),
constraint pk_annonces primary key(IdAnnonce),
FOREIGN KEY (IdProprietaire) REFERENCES proprietaires(IdProprietaire)
);

create table revenus 
(
idRevenu INTEGER(11) NOT NULL AUTO_INCREMENT,
IdLocataire INTEGER(11),	
Revenus INTEGER(11),
constraint pk_revenus primary key(IdRevenu),
FOREIGN KEY (IdLocataire) REFERENCES locataires(IdLocataire)
);

create table noteLocataire
(
IdNoteLocataire INTEGER(11) NOT NULL AUTO_INCREMENT,
IdProprietaire INTEGER(11),
IdLocataire INTEGER(11),
Commentaire TEXT,
constraint pk_noteLocataire primary key(IdNoteLocataire),
FOREIGN KEY (IdLocataire) REFERENCES locataires(IdLocataire),
FOREIGN KEY (IdProprietaire) REFERENCES proprietaires(IdProprietaire)
);

create table noteProprietaire
(
IdNoteProprietaire INTEGER(11) NOT NULL AUTO_INCREMENT,
IdProprietaire INTEGER(11),
IdLocataire INTEGER(11),
Commentaire TEXT,
constraint pk_noteProprietaire primary key(IdNoteProprietaire),
FOREIGN KEY (IdLocataire) REFERENCES locataires(IdLocataire),
FOREIGN KEY (IdProprietaire) REFERENCES proprietaires(IdProprietaire)
);



