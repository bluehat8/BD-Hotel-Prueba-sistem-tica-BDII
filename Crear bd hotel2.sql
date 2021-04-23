-- =============================================
-- CREAR BD LLAMADA HOTEL2 HASTA ANTES DE INSERTAR EN DEMOTABLE
-- =============================================

CREATE DATABASE Hotel2
ON PRIMARY
	(NAME = Hotel2_Data,
	  FILENAME = N'D:\Base de datos II-2021\SQL\DATA\Hotel2_Data.mdf',
          SIZE = 10MB,
          MAXSIZE = 50MB,
          FILEGROWTH = 10%),
	
	( NAME = Hotel2_Data_2,
	  FILENAME = N'D:\Base de datos II-2021\SQL\DATA\Hotel2_Data_2.ndf',
          SIZE = 10MB,
          MAXSIZE = 50MB,
          FILEGROWTH = 10%),

FILEGROUP Hotel2_filegroup1
	( NAME = Hotel_Data_3,
	  FILENAME = N'D:\Base de datos II-2021\SQL\DATA\Hotel2_Data_3.ndf',
          SIZE = 10MB,
          MAXSIZE = 50MB,
          FILEGROWTH = 10%),
	
	( NAME = Hotel2_Data_4,
	  FILENAME = N'D:\Base de datos II-2021\SQL\DATA\Hotel2_Data_4.ndf',
          SIZE = 10MB,
          MAXSIZE = 50MB,
          FILEGROWTH = 10%),

FILEGROUP Hotel2_group_2
	( NAME = Hotel2_Data_5,
	  FILENAME = N'D:\Base de datos II-2021\SQL\DATA\Hotel2_Data_5.ndf',
          SIZE = 10MB,
          MAXSIZE = 50MB,
          FILEGROWTH = 10%)

