
--crear dispositivo de backups

EXEC sp_addumpdevice 'disk', 'HotelDisk',   
'D:\Base de datos II-2021\SQL\BACKUP\HotelDat.bak';  
GO


-- Backup full
DECLARE @BackupName VARCHAR(100)
SET @BackupName = N'Hotel – Full Backup ' + FORMAT(GETDATE(),'yyyyMMdd_hhmmss');

BACKUP DATABASE Hotel TO [HotelDisk] WITH NOFORMAT, NOINIT, NAME = @BackupName,
SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

RESTORE FILELISTONLY FROM HotelDisk
GO
RESTORE HEADERONLY FROM HotelDisk
GO


--crear demotable


USE Hotel
GO

CREATE TABLE dbo.DemoTable
( DemoTableId int IDENTITY(1,1) PRIMARY KEY,
  FirstLargeColumn nvarchar(600),
  BigIntColumn bigint
);
GO

-- Backup diferencial
DECLARE @BackupDifName VARCHAR(100)
SET @BackupDifName = N'Hotel – Differential Backup ' + FORMAT(GETDATE(),'yyyyMMdd_hhmmss');

BACKUP DATABASE Hotel TO [HotelDisk] WITH DIFFERENTIAL,NOFORMAT, NOINIT, NAME = @BackupName,
SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

RESTORE FILELISTONLY FROM HotelDisk
GO
RESTORE HEADERONLY FROM HotelDisk
GO

--INSERTAR EN DEMOTABLE
BEGIN TRANSACTION
SET NOCOUNT ON;
INSERT INTO DemoTable (FirstLargeColumn,BigIntColumn)
  VALUES('DATOS',34400);
GO 4120
COMMIT TRAN

ROLLBACK

SELECT * FROM Demotable


-- Backup diferencial de la insercion
DECLARE @BackupDifName VARCHAR(100)
SET @BackupDifName = N'Hotel – Differential Backup ' + FORMAT(GETDATE(),'yyyyMMdd_hhmmss');

BACKUP DATABASE Hotel TO [HotelDisk] WITH DIFFERENTIAL,NOFORMAT, NOINIT, NAME = @BackupName,
SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

RESTORE FILELISTONLY FROM HotelDisk
GO
RESTORE HEADERONLY FROM HotelDisk
GO

--Eliminar bd hotel

use master
drop database Hotel


