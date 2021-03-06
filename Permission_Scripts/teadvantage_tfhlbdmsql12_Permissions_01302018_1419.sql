-- [-- DB CONTEXT --] --
USE [teAdvantage]
 
-- [-- DB USERS --] --
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'eAdvantage_user') BEGIN CREATE USER  [eAdvantage_user] FOR LOGIN [eAdvantage_user] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-FHLB-Developers') BEGIN CREATE USER  [FHLBDM\G-FHLB-Developers] FOR LOGIN [FHLBDM\G-FHLB-Developers] WITH DEFAULT_SCHEMA = [dbo] 
END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\tsvc_ccflywayuser') BEGIN CREATE USER  [FHLBDM\tsvc_ccflywayuser] FOR LOGIN [FHLBDM\tsvc_ccflywayuser] WITH DEFAULT_SCHEMA = [dbo] 
END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'intranet_user') BEGIN CREATE USER  [intranet_user] FOR LOGIN [intranet_user] WITH DEFAULT_SCHEMA = [dbo] END; 
-- [-- ORPHANED USERS --] --
-- [-- DB ROLES --] --
EXEC sp_addrolemember @rolename = 'db_datareader', @membername = 'eAdvantage_user'
EXEC sp_addrolemember @rolename = 'db_datareader', @membername = 'FHLBDM\G-FHLB-Developers'
EXEC sp_addrolemember @rolename = 'db_datareader', @membername = 'intranet_user'
EXEC sp_addrolemember @rolename = 'db_datawriter', @membername = 'eAdvantage_user'
EXEC sp_addrolemember @rolename = 'db_datawriter', @membername = 'intranet_user'
EXEC sp_addrolemember @rolename = 'db_ddladmin', @membername = 'eAdvantage_user'
EXEC sp_addrolemember @rolename = 'db_ddladmin', @membername = 'intranet_user'
EXEC sp_addrolemember @rolename = 'db_owner', @membername = 'FHLBDM\tsvc_ccflywayuser'
 
-- [-- OBJECT LEVEL PERMISSIONS --] --
-- [-- TYPE LEVEL PERMISSIONS --] --
 
-- [--DB LEVEL PERMISSIONS --] --
GRANT CONNECT TO [eAdvantage_user]
GRANT CONNECT TO [FHLBDM\G-FHLB-Developers]
GRANT CONNECT TO [FHLBDM\tsvc_ccflywayuser]
GRANT CONNECT TO [intranet_user]
 
-- [--DB LEVEL SCHEMA PERMISSIONS --] --
