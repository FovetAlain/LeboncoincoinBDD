DELETE FROM locataires; 
DELETE FROM proprietaires;
DELETE FROM annonces;
DELETE FROM foyer;
DELETE FROM revenus;
DELETE FROM noteProprietaire;
DELETE FROM noteLocataire;
DELETE FROM personnes;

insert into personnes values(NULL,"bob","eponge","turlututu@chapo.tu","password");
insert into personnes values(NULL,"bob","eponge","turlututu@chapo.tu","password");
insert into personnes values(NULL,"bob","eponge","turlututu@chapo.tu","password");
insert into personnes values(NULL,"bob","eponge","turlututu@chapo.tu","password");
insert into personnes values(NULL,"bob","eponge","turlututu@chapo.tu","password");
insert into personnes values(NULL,"bob","eponge","turlututu@chapo.tu","password");
insert into personnes values(NULL,"bob","eponge","turlututu@chapo.tu","password");
insert into personnes values(NULL,"bob","eponge","turlututu@chapo.tu","password");
insert into personnes values(NULL,"bob","eponge","turlututu@chapo.tu","password");
insert into personnes values(NULL,"bob","eponge","turlututu@chapo.tu","password");
insert into personnes values(NULL,"bob","eponge","turlututu@chapo.tu","password");

insert into proprietaires values(NULL, "proprio1",1);
insert into proprietaires values(NULL, "proprio2",2);
insert into proprietaires values(NULL, "proprio3",3);
insert into proprietaires values(NULL, "proprio4",4);
insert into proprietaires values(NULL, "proprio5",5);
insert into proprietaires values(NULL, "proprio6",6);
insert into proprietaires values(NULL, "proprio7",7);

insert into annonces values(NULL,1,'TitreAnnonce1', 'lorem ipsom', 560, '2017-03-17', 'image-de-maison','rue de la poupée qui tousse','13','Lille',59000, 'maison');
insert into annonces values(NULL,2,'TitreAnnonce2', 'lorem ipso2', 600, '2017-03-18', 'image-de-maison-2','rue de la poupée qui tousse','14','Douai',59500, 'appartement');
insert into annonces values(NULL,1,'TitreAnnonce3', 'lorem ipso3', 700, '2017-03-19', 'image-de-maison-3','rue de la poupée qui tousse','15','Lillers',62190, 'maison');
insert into annonces values(NULL,4,'TitreAnnonce4', 'lorem ipso4', 500,' 2017-03-19','image-de-maison-4','rue de la poupée qui tousse','16','Douai',59500, 'maison');
insert into annonces values(NULL,3,'TitreAnnonce5', 'lorem ipso5', 400,' 2017-03-20','image-de-maison-5','rue de la poupée qui tousse','17','Douai',59500, 'appartement');
insert into annonces values(NULL,1,'TitreAnnonce6', 'lorem ipso6', 450,' 2017-04-10','image-de-maison-6','rue de la poupée qui tousse','18','Douai',59500, 'maison');
insert into annonces values(NULL,2,'TitreAnnonce7', 'lorem ipso7', 610,' 2017-05-01','image-de-maison-7','rue de la poupée qui tousse','19','Douai',59500, 'appartement');
insert into annonces values(NULL,5,'TitreAnnonce8', 'lorem ipso8', 705,' 2017-03-30','image-de-maison-8','rue de la poupée qui tousse','20','Douai',59500, 'appartement');
insert into annonces values(NULL,6,'TitreAnnonce9', 'lorem ipso9', 800,' 2017-03-20','image-de-maison-9','rue de la poupée qui tousse','34','Douai',59500, 'appartement');
