USE [BANCO]
GO

/*
Descricao  : Contém todos os comandos de Permissão entre os Logins externos e o Banco de Dados.
*/

-------------------------------------------------
-- Cria o Login e atribui permissões
-------------------------------------------------

    -- Valida se o Login existe no Banco, se não 
    -- existir, cria o mesmo
    -------------------------------------------------
    IF NOT EXISTS( SELECT 1 FROM sysusers WHERE name = 'LOGIN' )
        EXEC sp_grantdbaccess 'LOGIN'
    GO

    -- Permite acesso para o usuário ao Banco
    -------------------------------------------------
    EXEC sp_addrolemember 'ACESSO','LOGIN'
    GO
