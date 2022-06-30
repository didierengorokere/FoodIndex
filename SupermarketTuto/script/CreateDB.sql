-- =============================================
-- Create database For FoodIndex
-- =============================================
-- CreateDB.sql
--
-- Projekt      : Software Engineering 3 
-- Version      : 1.0
-- Autor        :Didier Engoro Kere
-- Erstelldatum :10.06.2022
-- Bemerkungen  : 
--
-- Change log
-- 
--
-- Datenbank erstellen
--
USE master

DROP database IF EXISTS FoodIndex1;
go

create database FoodIndex1;
go

use FoodIndex1;

--
-- Step 1, Tabellen erstellen
--


--
-- Tabelle ProductTbl erstellen
--
create table [ProductTbl]
(
	[ProdId] 	int				not null	unique,
    [ProdName]	varchar(45)		not null,
	[ProdQty]	varchar(45)		not null,
	[ProdPrice]	int				not null,
	[ProdCat]	varchar(45)		not null,
    constraint pk_ProductTbl primary key (ProdId)
);

--
-- Tabelle CategoryTbl erstellen
--
create table [CategoryTbl]
(
	[Catd] 	 	  int			not null	unique,
    [CatName]	varchar(50)		not null,
	[CatDesc]	varchar (50)	not null,
    constraint pk_CategoryTbl primary key (Catd)
);

--
-- Tabelle SellerTbl erstellen
--
create table [SellerTbl]
(
	[SellerId]			int 			not null	unique,
    [SellerName]		varchar(45) 	not null,
    [SellerAge]			int				not null,
	[SellePhone]		int				not null,
	[SellerPass]		Varchar(45)		not null,
    constraint pk_SellerTbl primary key (SellerId)
);

--
-- Tabelle BillTbl erstellen
--
create table [BillTbl]
(
	[BillId]		int 			not null	unique,
    [SellerName]	varchar(45) 	not null,
	[BillDate]		varchar(45) 	not null,
	TotAmt			int 
    constraint pk_BillTbl primary key (BillId)
);

--
-- Tabelle PruchaseTbl erstellen
--
create table [PurchaseTbl]
(
	[PurchaseId]	int 			not null unique,
	[ProdId]		int				not null,
	[Catd]			int				not null,
	[BillId]		int				not null,
	[SellerId]		int				not null,
    constraint pk_PurchaseTbl primary key (PurchaseId, ProdId, Catd, SellerId, BillId)
);

--
-- Step 2, foreign key constraints erstellen

alter table [PurchaseTbl]
	add constraint fk_PurchaseTbl_ProductTbl foreign key (ProdId) references [ProductTbl](ProdId),
		constraint fk_PurchaseTbl_CategoryTbl foreign key (Catd) references [CategoryTbl](Catd),
		constraint fk_PurchaseTbl_SellerTbl	foreign key (SellerId) references [SellerTbl](SellerId),
		constraint fk_PurchaseTbl_BillTbl	foreign key (BillId) references [BillTbl](BillId);


--
-- Step 3, Index erstellen
--create index idx_PurchaseTbl_ProdId on [PurchaseTbl](ProdId);

--create index idx_PurchaseTbl_Catd on [PurchaseTbl](Catd);

--create index idx_PurchaseTbl_SellerId on [PurchaseTbl](SellerId);

--create index idx_PurchaseTbl_BillId on [PurchaseTbl](BillId);