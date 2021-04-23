
--CREAR BASE DE DATOS

CREATE DATABASE Hotel
ON PRIMARY
	(NAME = Hotel_Data,
	  FILENAME = N'D:\Base de datos II-2021\SQL\DATA\Hotel_Data.mdf',
          SIZE = 20MB,
          MAXSIZE = 50MB,
          FILEGROWTH = 10%),
	
	( NAME = Hotel_Data_2,
	  FILENAME = N'D:\Base de datos II-2021\SQL\DATA\Hotel_Data_2.ndf',
          SIZE = 20MB,
          MAXSIZE = 20MB,
          FILEGROWTH = 10%),

FILEGROUP Hotel_filegroup1
	( NAME = Hotel_Data_3,
	  FILENAME = N'D:\Base de datos II-2021\SQL\DATA\Hotel_Data_3.ndf',
          SIZE = 20MB,
          MAXSIZE = 20MB,
          FILEGROWTH = 10%),
	
	( NAME = Hotel_Data_4,
	  FILENAME = N'D:\Base de datos II-2021\SQL\DATA\Hotel_Data_4.ndf',
          SIZE = 20MB,
          MAXSIZE = 50MB,
          FILEGROWTH = 10%),

FILEGROUP Hotel_group_2
	( NAME = Hotel2_Data_5,
	  FILENAME = N'D:\Base de datos II-2021\SQL\DATA\Hotel_Data_5.ndf',
          SIZE = 20MB,
          MAXSIZE = 50MB,
          FILEGROWTH = 10%)
