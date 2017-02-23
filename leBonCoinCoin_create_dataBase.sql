DROP TABLE IF EXISTS locataires; 
DROP TABLE IF EXISTS proprietaires;
DROP TABLE IF EXISTS annonces;
DROP TABLE IF EXISTS foyer;
DROP TABLE IF EXISTS revenus;
DROP TABLE IF EXISTS noteProprietaire;
DROP TABLE IF EXISTS noteLocataire;

create table locataires
(
IdLocataire INTEGER(11) NOT NULL AUTO_INCREMENT ,
PseudoLocataire VARCHAR(11) NOT NULL UNIQUE,
NomLocataire VARCHAR(11),
PrenomLocataire VARCHAR(11),
MailLocataire VARCHAR(11),
constraint pk_locataires primary key(IdLocataire)
);

create table proprietaires
(
IdProprietaire INTEGER(11) NOT NULL AUTO_INCREMENT,
PseudoProprietaire VARCHAR(11) NOT NULL UNIQUE,
NomProprietaire VARCHAR(11),
PrenomProprietaire VARCHAR(11),
MailProprietaire VARCHAR(11),
constraint pk_proprietaires primary key(IdProprietaire)
);

create table annonces
(
IdAnnonce INTEGER(11) NOT NULL AUTO_INCREMENT,
IdProprietaire INTEGER(11),
TexteAnnonce TEXT,
lienImage TEXT,
AdresseRue VARCHAR(11),
AdresseNumero VARCHAR(2),
AdresseVille VARCHAR(7),
AdresseCP INTEGER(5),
constraint pk_annonces primary key(IdAnnonce),
FOREIGN KEY (IdProprietaire) REFERENCES proprietaires(IdProprietaire)
);

create table foyer
(
IdFoyer INTEGER(5) NOT NULL AUTO_INCREMENT,
IdLocataire INTEGER(11),
constraint pk_foyer primary key(IdFoyer),
FOREIGN KEY (IdLocataire) REFERENCES locataires(IdLocataire)
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



