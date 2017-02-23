DELETE FROM locataires; 
DELETE FROM proprietaires;
DELETE FROM annonces;
DELETE FROM foyer;
DELETE FROM revenus;
DELETE FROM noteProprietaire;
DELETE FROM noteLocataire;

insert into foyer values(NULL);
insert into foyer values(NULL);
insert into foyer values(NULL);
insert into foyer values(NULL);
insert into foyer values(NULL);
insert into foyer values(NULL);
insert into foyer values(NULL);
insert into foyer values(NULL);
insert into foyer values(NULL);
insert into foyer values(NULL);
insert into foyer values(NULL);
insert into foyer values(NULL);


insert into locataires values(NULL,'jojo','DuGlan','Johnathan','jojo.duglan@chapo.tu',1);
insert into locataires values(NULL,'jojo1','DuGlan','Johnathan1','jojo1.duglan1@chapo.tu',1);
insert into locataires values(NULL,'jojo2','DuGlan','John','jojo2.duglan@chapo.tu',2);
insert into locataires values(NULL,'jojo3','DuGlan','Johna','jojo3.duglan@chapo.tu',2);
insert into locataires values(NULL,'jojo4','DuGlan','Johnat','jojo4.duglan@chapo.tu',3);
insert into locataires values(NULL,'jojo5','DuGlan','Johnath','jojo5.duglan@chapo.tu',3);
insert into locataires values(NULL,'jojo6','DuGlan','Johnatha','jojo6.duglan@chapo.tu',4);
insert into locataires values(NULL,'jojo7','DuGlan','Johnathan','jojo7.duglan@chapo.tu',4);
insert into locataires values(NULL,'jojo8','DuGlan','John','jojo8.duglan@chapo.tu',5);
insert into locataires values(NULL,'jojo9','DuGlan','Johnathan','jojo9.duglan@chapo.tu',5);
insert into locataires values(NULL,'jojo10','DuGlan','Johnathan10','jojo10.duglan@chapo.tu',6);
insert into locataires values(NULL,'jojo11','DuGlan','Johnathan11','jojo11.duglan@chapo.tu',6);
insert into locataires values(NULL,'jojo12','DuGlan','Johnathan12','jojo12.duglan@chapo.tu',6);
insert into locataires values(NULL,'jojo13','DuGlan','Johnathan13','jojo13.duglan@chapo.tu',6);
insert into locataires values(NULL,'jojo14','DuGlan','Johnathan14','jojo14.duglan@chapo.tu',7);
insert into locataires values(NULL,'jojo15','DuGlan','Johnathan15','jojo15.duglan@chapo.tu',7);
insert into locataires values(NULL,'jojo16','DuGlan','Johnathan16','jojo16.duglan@chapo.tu',8);
insert into locataires values(NULL,'jojo17','DuGlan','Johnathan17','jojo17.duglan@chapo.tu',9);
insert into locataires values(NULL,'jojo18','DuGlan','Johnathan18','jojo18.duglan@chapo.tu',10);
insert into locataires values(NULL,'jojo19','DuGlan','Johnathan19','jojo19.duglan@chapo.tu',11);

insert into proprietaires values(NULL,'dudu','DuGlan','Dujonathan','dudu.duglan@chapo.tu');
insert into proprietaires values(NULL,'dudu1','DuGlan','Dujonathan1','dudu1.duglan1@chapo.tu');
insert into proprietaires values(NULL,'dudu2','DuGlan','Dujon','dudu2.duglan@chapo.tu');
insert into proprietaires values(NULL,'dudu3','DuGlan','Dujona','dudu3.duglan@chapo.tu');
insert into proprietaires values(NULL,'dudu4','DuGlan','Dujonat','dudu4.duglan@chapo.tu');
insert into proprietaires values(NULL,'dudu5','DuGlan','Dujonath','dudu5.duglan@chapo.tu');
insert into proprietaires values(NULL,'dudu6','DuGlan','Dujonatha','dudu6.duglan@chapo.tu');
insert into proprietaires values(NULL,'dudu7','DuGlan','Dujonathan','dudu7.duglan@chapo.tu');


insert into annonces values(NULL,1,'TitreAnnonce1', 'lorem ipso', 'image-de-maison','rue de la poupée qui tousse','13','Douai',59500);
insert into annonces values(NULL,2,'TitreAnnonce2', 'lorem ipso2', 'image-de-maison-2','rue de la poupée qui tousse','14','Douai',59500);
insert into annonces values(NULL,1,'TitreAnnonce3', 'lorem ipso3', 'image-de-maison-3','rue de la poupée qui tousse','15','Douai',59500);
insert into annonces values(NULL,4,'TitreAnnonce4', 'lorem ipso4', 'image-de-maison-4','rue de la poupée qui tousse','16','Douai',59500);
insert into annonces values(NULL,3,'TitreAnnonce5', 'lorem ipso5', 'image-de-maison-5','rue de la poupée qui tousse','17','Douai',59500);
insert into annonces values(NULL,1,'TitreAnnonce6', 'lorem ipso6', 'image-de-maison-6','rue de la poupée qui tousse','18','Douai',59500);
insert into annonces values(NULL,2,'TitreAnnonce7', 'lorem ipso7', 'image-de-maison-7','rue de la poupée qui tousse','19','Douai',59500);
insert into annonces values(NULL,5,'TitreAnnonce8', 'lorem ipso8', 'image-de-maison-8','rue de la poupée qui tousse','20','Douai',59500);
insert into annonces values(NULL,6,'TitreAnnonce9', 'lorem ipso9', 'image-de-maison-9','rue de la poupée qui tousse','34','Douai',59500);

insert into revenus values(NULL, 1,3000);
insert into revenus values(NULL, 2,2000);
insert into revenus values(NULL, 3,1300);
insert into revenus values(NULL, 4,2344);
insert into revenus values(NULL, 5,4000);
insert into revenus values(NULL, 6,3421);
insert into revenus values(NULL, 7,674);
insert into revenus values(NULL, 8,900);
insert into revenus values(NULL, 9,2300);
insert into revenus values(NULL, 10,3452);
insert into revenus values(NULL, 11,2134);
insert into revenus values(NULL, 12,321);
insert into revenus values(NULL, 13,9087);
insert into revenus values(NULL, 14,3876);
insert into revenus values(NULL, 15,4563);
insert into revenus values(NULL, 16,2345);
insert into revenus values(NULL, 17,2000);
insert into revenus values(NULL, 18,23456);

insert into noteLocataire values(NULL, 1,2,"c'est un azertyuiop il m'a tout salopé");
insert into noteLocataire values(NULL, 1,4,"c'est un felon il m'a tout salopé");
insert into noteLocataire values(NULL, 1,6,"c'est un nunuche il m'a tout salopé");
insert into noteLocataire values(NULL, 2,6,"c'est un vieux il m'a tout salopé");
insert into noteLocataire values(NULL, 5,6,"c'est un abruti il m'a tout salopé");
insert into noteLocataire values(NULL, 5,6,"c'est un lapin il m'a tout salopé");
insert into noteLocataire values(NULL, 5,6,"c'est un mec sympa il m'a tout salopé");

insert into noteProprietaire values(NULL, 1,2,"c'est un proprio super con et un peu idiot");
insert into noteProprietaire values(NULL, 1,4,"c'est un proprio super con et un peu idiot");
insert into noteProprietaire values(NULL, 1,6,"c'est un proprio super con et un peu idiot");
insert into noteProprietaire values(NULL, 2,6,"c'est un proprio super con et un peu idiot");
insert into noteProprietaire values(NULL, 5,6,"c'est un proprio super con et un peu idiot");
insert into noteProprietaire values(NULL, 5,6,"c'est un proprio super con et un peu idiot");
insert into noteProprietaire values(NULL, 5,6,"c'est un proprio super con et un peu idiot");

