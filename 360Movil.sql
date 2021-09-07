use Master

CREATE DATABASE [360Movil];

use [360Movil];

CREATE TABLE [360Movil].dbo.Eir_Container (
	eir varchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	contenedor varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sello varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	responsable int NULL,
	empresa int NULL,
	CONSTRAINT PK__eir_cont__D9509F7B4B855164 PRIMARY KEY (eir)
);

CREATE TABLE [360Movil].dbo.Empresa (
	empresa_id int NOT NULL,
	empresa_nombre varchar(80) NULL,
	CONSTRAINT PK__empresa__C322C24DFA482497 PRIMARY KEY (empresa_id)
);

CREATE TABLE [360Movil].dbo.Responsable (
	responsable_id int NOT NULL,
	responsable_nombre varchar(80) NULL,
	CONSTRAINT PK__responsa__2182DC7E5763A3A0 PRIMARY KEY (responsable_id)
);

use [360Movil];

CREATE PROCEDURE dbo.Proc_GetContainer
@eir VARCHAR(15)
as
BEGIN
select 
	con.eir,
	con.contenedor,
	con.sello,
	res.responsable_id as idResponsable,
	res.responsable_nombre as responsableNombre,
	emp.empresa_id as idEmpresa,
	emp.empresa_nombre as empresaNombre
	
	from Eir_Container con
	left join Responsable res on res.responsable_id = con.responsable
	left join Empresa emp on emp.empresa_id = con.empresa
	where con.eir = @eir
END


INSERT INTO dbo.Responsable (responsable_id,responsable_nombre) VALUES
	 (1,N'nicolas'),
	 (2,N'juan'),
	 (3,N'pedro');
	
INSERT INTO dbo.empresa (empresa_id,empresa_nombre) VALUES
	 (1,N'CAT'),
	 (2,N'XIAOMI'),
	 (3,N'SONY');
	
INSERT INTO dbo.eir_container (eir,contenedor,sello,responsable,empresa) VALUES
	 (N'10002',N'CARGO',N'OK',1,1),
	 (N'10003',N'CARGO',N'OK',2,2),
	 (N'10004',N'CARGO',N'NOOK',3,3);

