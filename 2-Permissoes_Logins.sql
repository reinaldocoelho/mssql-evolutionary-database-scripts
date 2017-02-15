USE [BANCO]
GO

/*
Descricao  : Cont�m todos os comandos de Permiss�o entre os Logins externos e o Banco de Dados.
*/

-------------------------------------------------
-- Cria o Login e atribui permiss�es
-------------------------------------------------

    -- Valida se o Login existe no Banco, se n�o 
    -- existir, cria o mesmo
    -------------------------------------------------
    IF NOT EXISTS( SELECT 1 FROM sysusers WHERE name = 'LOGIN' )
        EXEC sp_grantdbaccess 'LOGIN'
    GO

    -- Permite acesso para o usu�rio ao Banco
    -------------------------------------------------
    EXEC sp_addrolemember 'ACESSO','LOGIN'
    GO
