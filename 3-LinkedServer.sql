USE [master]
GO

--------------------------------------------------------------------------------------------------------------
-- Se existir o LinkedServer criado, remove o mesmo
--------------------------------------------------------------------------------------------------------------
IF  EXISTS (SELECT srv.srvname FROM sysservers srv WHERE srv.srvid != 0 AND srv.srvname = N'plataformadw')
    EXEC master.dbo.sp_dropserver @server=N'plataformadw', @droplogins='droplogins'
GO

--------------------------------------------------------------------------------------------------------------
-- Adiciona o LinkedServer para o servidor informado.
--------------------------------------------------------------------------------------------------------------
EXEC master.dbo.sp_addlinkedserver @server = N'plataformadw', @srvproduct = '', @provider=N'SQLOLEDB', @datasrc=N'localhost\BI', @catalog=N'openbi'
GO
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'plataformadw',@useself=N'False',@locallogin=NULL,@rmtuser=N'dt_dw',@rmtpassword='!dt_dw_2007'
GO
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'plataformadw',@useself=N'True',@locallogin=N'dt_framework',@rmtuser=NULL,@rmtpassword=NULL
GO

--------------------------------------------------------------------------------------------------------------
-- Ajusta as opções do LinkedServer no servidor.
--------------------------------------------------------------------------------------------------------------
EXEC master.dbo.sp_serveroption @server=N'plataformadw', @optname=N'collation compatible', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'plataformadw', @optname=N'data access', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'plataformadw', @optname=N'dist', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'plataformadw', @optname=N'pub', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'plataformadw', @optname=N'rpc', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'plataformadw', @optname=N'rpc out', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'plataformadw', @optname=N'sub', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'plataformadw', @optname=N'connect timeout', @optvalue=N'0'
GO
EXEC master.dbo.sp_serveroption @server=N'plataformadw', @optname=N'collation name', @optvalue=null
GO
EXEC master.dbo.sp_serveroption @server=N'plataformadw', @optname=N'lazy schema validation', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'plataformadw', @optname=N'query timeout', @optvalue=N'0'
GO
EXEC master.dbo.sp_serveroption @server=N'plataformadw', @optname=N'use remote collation', @optvalue=N'true'
GO
