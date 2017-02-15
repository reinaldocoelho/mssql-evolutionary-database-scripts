USE [master]
GO

--------------------------------------------------------------------------------------------------------------
-- Se existir o LinkedServer criado, remove o mesmo
--------------------------------------------------------------------------------------------------------------
IF  EXISTS (SELECT srv.srvname FROM sysservers srv WHERE srv.srvid != 0 AND srv.srvname = N'linkeduser')
    EXEC master.dbo.sp_dropserver @server=N'linkeduser', @droplogins='droplogins'
GO

--------------------------------------------------------------------------------------------------------------
-- Adiciona o LinkedServer para o servidor informado.
--------------------------------------------------------------------------------------------------------------
EXEC master.dbo.sp_addlinkedserver @server = N'linkeduser', @srvproduct = '', @provider=N'SQLOLEDB', @datasrc=N'localhost', @catalog=N'catalogName'
GO
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'linkeduser',@useself=N'False',@locallogin=NULL,@rmtuser=N'user1',@rmtpassword='passwordUser1'
GO
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'linkeduser',@useself=N'True',@locallogin=N'user2',@rmtuser=NULL,@rmtpassword=NULL
GO

--------------------------------------------------------------------------------------------------------------
-- Ajusta as op��es do LinkedServer no servidor.
--------------------------------------------------------------------------------------------------------------
EXEC master.dbo.sp_serveroption @server=N'linkeduser', @optname=N'collation compatible', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'linkeduser', @optname=N'data access', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'linkeduser', @optname=N'dist', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'linkeduser', @optname=N'pub', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'linkeduser', @optname=N'rpc', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'linkeduser', @optname=N'rpc out', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'linkeduser', @optname=N'sub', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'linkeduser', @optname=N'connect timeout', @optvalue=N'0'
GO
EXEC master.dbo.sp_serveroption @server=N'linkeduser', @optname=N'collation name', @optvalue=null
GO
EXEC master.dbo.sp_serveroption @server=N'linkeduser', @optname=N'lazy schema validation', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'linkeduser', @optname=N'query timeout', @optvalue=N'0'
GO
EXEC master.dbo.sp_serveroption @server=N'linkeduser', @optname=N'use remote collation', @optvalue=N'true'
GO
