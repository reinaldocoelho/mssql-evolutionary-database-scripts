USE [master]
GO

-------------------------------------------------------------------------------
-- Inicia criacao dos Logins
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'administrator' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variavel para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x0100FF288E7B8EAF051FA990D16CF09B21DA94FA502BEFA8EF9D1D0418D59B7B704DFC542F1E92703ED3BF48C5CD)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor especifico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'administrator', @pwd, @sid = 0x482C2D10164A6F4EABE1DFA983CAF50C, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'onlysearch' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variavel para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x0100D240E36C583056AA0C487BE8610E1097DEA77507EE1184C29F399FFB10C63BF109D1DFF7AD965FC1427EC337)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor especifico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'onlysearch', @pwd, @sid = 0x6907BB75ED2FFE40AD65D196BF85E48A, @encryptopt = 'skip_encryption'

END
GO
