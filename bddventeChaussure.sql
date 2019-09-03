

CREATE DATABASE `venteChaussure` DEFAULT CHARACTER SET = `utf8`;
USE `venteChaussure`;

CREATE TABLE `clients` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL DEFAULT '',
  `prenom` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `chaussures` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `modele` varchar(255) NOT NULL DEFAULT '',
  `marque` varchar(255) NOT NULL DEFAULT '',
  `couleur` varchar(255) NOT NULL DEFAULT '',
  `prix` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `commandes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `adresseLivraison` varchar(255) NOT NULL,
  `clients_id` int(11) unsigned NOT NULL,
  `chaussures_id` int(11) unsigned NOT NULL,
  `quantite` int(11) unsigned NOT NULL,
  `pointure` int(11) unsigned NOT NULL,
PRIMARY KEY (`id`),
  CONSTRAINT `fk_clients` FOREIGN KEY (`clients_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `fk_chaussures` FOREIGN KEY (`chaussures_id`) REFERENCES `chaussures` (`id`)
) ENGINE=InnoDB CHARSET=utf8;


CREATE TABLE `commandes_chaussures` (
  `id_commandes` int unsigned NOT NULL,INSERT INTO clients (nom,prenom,email) VALUE("dupont", "pierre","ygygy@");
  `id_chaussures` int unsigned NOT NULL);
 alter table `commandes_chaussures`add CONSTRAINT `fk_idcommandes` FOREIGN KEY (`id_commandes`) REFERENCES `commandes` (`id`);
alter table `commandes_chaussures`add CONSTRAINT `fdesk_idchaussures` FOREIGN KEY (`id_chaussures`) REFERENCES `chaussures` (`id`);
alter table `commandes_chaussures`add primary key (`id_commandes`,`id_chaussures`);

INSERT INTO clients (nom,prenom,email) VALUE("dupont", "pierre","ygygy@");
INSERT INTO clients (nom,prenom,email) VALUE("dollars", "jean","frttghj@");
INSERT INTO clients (nom,prenom,email) VALUE("bonnet", "yves","ffffhbg@");
INSERT INTO clients (nom,prenom,email) VALUE("andive", "janne","kjgyhtk@");
INSERT INTO clients (nom,prenom,email) VALUE("san", "andreas","frdtghyju@");

INSERT INTO chaussures (modele,marque,couleur,prix) VALUE("bottes","gucci","blanc",320);
INSERT INTO chaussures (modele,marque,couleur,prix) VALUE("sandales","gucci","blanc",220);
INSERT INTO chaussures (modele,marque,couleur,prix) VALUE("bottine","louisvuitton","blanc",620);
INSERT INTO chaussures (modele,marque,couleur,prix) VALUE("basket","lacoste","blanc",90);
INSERT INTO chaussures (modele,marque,couleur,prix) VALUE("talon","zara","blanc",120);
INSERT INTO chaussures (modele,marque,couleur,prix) VALUE("escarpin","alexandermcqueen","blanc",520);

insert into `commandes` (adresseLivraison, clients_id, chaussures_id, quantite, pointure) VALUE ("boulevardlavoisier",1,2,1,38);
insert into `commandes` (adresseLivraison, clients_id, chaussures_id, quantite, pointure) VALUE ("boulevardhottman",2,1,1,39);
insert into `commandes` (adresseLivraison, clients_id, chaussures_id, quantite, pointure) VALUE ("boulevardjeanmoulin",3,3,1,43);
insert into `commandes` (adresseLivraison, clients_id, chaussures_id, quantite, pointure) VALUE ("boulevardjeanmoulin",4,5,1,42);
insert into `commandes` (adresseLivraison, clients_id, chaussures_id, quantite, pointure) VALUE ("boulevardjeanmoulin",5,4,1,37);
insert into `commandes` (adresseLivraison, clients_id, chaussures_id, quantite, pointure) VALUE ("boulevardjeanmoulin",1,6,1,38);
select nom from clients;
select quantite from commandes where clients_id=chaussures_id;
select quantite from commandes;
select chaussures_id from commandes;
select * from `clients` inner join `commandes`on clients_id = chaussures_id;





