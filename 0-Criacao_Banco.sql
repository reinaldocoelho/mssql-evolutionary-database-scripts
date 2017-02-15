USE [master]
GO

/*
Descricao  : Cont�m o Script referente a cria��o do Banco de dados com seus par�metros corretos.
*/

---------------------------------------------------------------------------------------
-- Valida se existe o banco de dados, caso n�o exista, cria o mesmo no local indicado
---------------------------------------------------------------------------------------
IF NOT EXISTS( SELECT 1 FROM [master].dbo.sysdatabases WHERE name = 'NOME_BANCO' )
BEGIN

    -- Cria o banco de dados no Local indicado e com o Collation padr�o da DT
    ---------------------------------------------------------------------------------------
    CREATE DATABASE NOME_BANCO ON(
        NAME = 'NOME_BANCO_data',
        FILENAME = 'D:\SQLDADOS\NOME_BANCO_dat_dev.mdf'
    )
    LOG ON(
        NAME = 'NOME_BANCO_log',
        FILENAME = 'D:\SQLLOG\NOME_BANCO_log_dev.ldf'
    )
    COLLATE SQL_Latin1_General_CP1_CI_AS

    -- Seta os par�metros corretos para o Banco de Dados
    ---------------------------------------------------------------------------------------
    EXEC sp_dboption 'NOME_BANCO', 'ANSI null default', 'false'
    EXEC sp_dboption 'NOME_BANCO', 'ANSI nulls', 'false'
    EXEC sp_dboption 'NOME_BANCO', 'ANSI warnings', 'false'
    EXEC sp_dboption 'NOME_BANCO', 'auto create statistics', 'true'
    EXEC sp_dboption 'NOME_BANCO', 'auto update statistics', 'true'
    EXEC sp_dboption 'NOME_BANCO', 'autoclose', 'false'
    EXEC sp_dboption 'NOME_BANCO', 'autoshrink', 'false'
    EXEC sp_dboption 'NOME_BANCO', 'concat null yields null', 'false'
    EXEC sp_dboption 'NOME_BANCO', 'cursor close on commit', 'false'
    EXEC sp_dboption 'NOME_BANCO', 'dbo use only', 'false'
    EXEC sp_dboption 'NOME_BANCO', 'default to local cursor', 'false'
    EXEC sp_dboption 'NOME_BANCO', 'quoted identifier', 'false'
    EXEC sp_dboption 'NOME_BANCO', 'recursive triggers', 'true'
    EXEC sp_dboption 'NOME_BANCO', 'select into/bulkcopy', 'true'
    EXEC sp_dboption 'NOME_BANCO', 'torn page detection', 'false'
    EXEC sp_dboption 'NOME_BANCO', 'trunc. log on chkpt.', 'true'

END
GO
