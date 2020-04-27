create database Gestion_Pharmacie
use Gestion_Pharmacie

/*==============================================================*/
/* Table : Client                                               */
/*==============================================================*/
create table Client (
   IdClient             int                  not null,
   NomClient            varchar(10)          null,
   AdresseClient        varchar(50)          null,
   TeleClient           int                  null,
   constraint PK_CLIENT primary key nonclustered (IdClient)
)
go
/*affichage table*/
select * from Client
/*insert*/
insert into client values(1,'ahmed','rue chefchaouan',0666632632)
insert into client values(2,'akram','rue midelt',0612328983)
insert into client values(3,'mehdi','rue tanger',0657884215)
insert into client values(4,'achraf','rue tetouan',0684578215)


/*update*/
update Client set NomClient='achraf'
where AdresseClient='rue laayoune';
/*delete*/
delete from Client
where NomClient='ahmed';

/*==============================================================*/
/* Table : Commande                                             */
/*==============================================================*/
create table Commande (
   IdCommande           int                  not null,
   NomCommande          varchar(20)          null,
   DateCommande         datetime             null,
   NomPharmacie         varchar(20)          null,
   NomClient            varchar(20)          null,
   NomProduit           varchar(50)          null,
   PrixProduit          float                null,
   AdresseClient        varchar(50)          null,
   TeleClient           int                  null,
   constraint PK_COMMANDE primary key nonclustered (IdCommande)
)
go
/*affichage table*/
select * from Commande
/*insert*/
insert into Commande values(1,'commande1','2020/04/10','pharmacie1','client1','produit1',10,'251 rue hfn',0654218549)
insert into Commande values(2,'commande2','2020/04/10','pharmacie2','client2','produit2',100,'1 rue makdessi',0611818983)
insert into Commande values(3,'commande3','2020/04/10','pharmacie3','client3','produit3',160,'51 rue najah',0684215578)
insert into Commande values(4,'commande4','2020/04/10','pharmacie4','client4','produit4',30,'21 rue el amir',0650895524)
/*update*/
update Commande set NomProduit='produit5'
where NomClient='client2';
/*delete*/
delete from Commande
where NomClient='client2';

/*==============================================================*/
/* Table : Fourniseur                                           */
/*==============================================================*/
create table Fourniseur (
   IdFourniseur         int                  not null,
   NomFourniseur        varchar(20)          null,
   AdresseFourniseur    varchar(50)          null,
   TeleFourniseur       int                  null,
   constraint PK_FOURNISEUR primary key nonclustered (IdFourniseur)
)
go

/*affichage table*/
select * from Fourniseur
/*insert*/
insert into Fourniseur values(1,'ahmed','rue tanger',0685542149)
insert into Fourniseur values(2,'mehdi','rue makdessi',0698111883)
insert into Fourniseur values(3,'selma','rue jeddah',0678154258)
insert into Fourniseur values(4,'kaoutar','rue elharaimn',0645908552)
/*update*/
update Fourniseur set NomFourniseur='ahmed'
where AdresseFourniseur='rue jdida';
/*delete*/
delete from Fourniseur
where NomFourniseur='mehdi'

/*==============================================================*/
/* Table : Pharmacie                                            */
/*==============================================================*/
create table Pharmacie (
   IdPharmacie          int                  not null,
   NomPharmacie         varchar(50)          null,
   AdressePharmacie     varchar(50)          null,
   TelePharmacie        int                  null,
   constraint PK_PHARMACIE primary key nonclustered (IdPharmacie)
)
go

/*affichage table*/
select * from Pharmacie
/*insert*/
insert into Pharmacie values(1,'Pharmacie1','251 rue najah',0856542149)
insert into Pharmacie values(2,'Pharmacie2','21 rue el amir',0898611813)
insert into Pharmacie values(3,'Pharmacie3','51 rue hfn',0215576848)
insert into Pharmacie values(4,'Pharmacie4','25 rue makdessi',0624555089)
/*update*/
update Pharmacie set NomPharmacie='la belle vie'
where AdressePharmacie='rue najah';
/*delete*/
delete from Pharmacie
where NomPharmacie='Pharmacie2';

/*==============================================================*/
/* Table : Produit                                              */
/*==============================================================*/
create table Produit (
   IdProduit            int                  not null,
   NomProduit           varchar(50)          null,
   PrixProduit          float                null,
   constraint PK_PRODUIT primary key nonclustered (IdProduit)
)
go

/*affichage table*/
select * from Produit
/*insert*/
insert into Produit values(1,'Produit1',549)
insert into Produit values(2,'Produit2',983)
insert into Produit values(3,'Produit3',478)
insert into Produit values(4,'Produit4',224)
/*update*/
update Produit set PrixProduit=100
where NomProduit='Produit4';
/*delete*/
delete from Produit
where NomProduit='Produit2';



/*==============================================================*/
/* Login and PassWord                                             */
/*==============================================================*/

/*logim Admin with password*/
create login admin
with PassWord='admin';
go
/*user*/
create user admin for login admin;
go

grant all to admin;
go

/*logim utilisateur with password*/
create login utilisateur
with PassWord='utilisateur';
go
/*user*/
create user utilisateur for login utilisateur;
go

grant select,insert to utilisateur;
go