USE [master]
GO

/*
Descricao  : Contém o Script referente a criação do Banco de dados com seus parâmetros corretos.
*/

---------------------------------------------------------------------------------------
-- Valida se existe o banco de dados, caso não exista, cria o mesmo no local indicado
---------------------------------------------------------------------------------------
IF NOT EXISTS( SELECT 1 FROM [master].dbo.sysdatabases WHERE name = 'NOME_BANCO' )
BEGIN

    -- Cria o banco de dados no Local indicado e com o Collation padrão da DT
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

    -- Seta os parâmetros corretos para o Banco de Dados
    ---------------------------------------------------------------------------------------
    EXEC sp_dboption 'DTCC', 'ANSI null default', 'false'
    EXEC sp_dboption 'DTCC', 'ANSI nulls', 'false'
    EXEC sp_dboption 'DTCC', 'ANSI warnings', 'false'
    EXEC sp_dboption 'DTCC', 'auto create statistics', 'true'
    EXEC sp_dboption 'DTCC', 'auto update statistics', 'true'
    EXEC sp_dboption 'DTCC', 'autoclose', 'false'
    EXEC sp_dboption 'DTCC', 'autoshrink', 'false'
    EXEC sp_dboption 'DTCC', 'concat null yields null', 'false'
    EXEC sp_dboption 'DTCC', 'cursor close on commit', 'false'
    EXEC sp_dboption 'DTCC', 'dbo use only', 'false'
    EXEC sp_dboption 'DTCC', 'default to local cursor', 'false'
    EXEC sp_dboption 'DTCC', 'quoted identifier', 'false'
    EXEC sp_dboption 'DTCC', 'recursive triggers', 'true'
    EXEC sp_dboption 'DTCC', 'select into/bulkcopy', 'true'
    EXEC sp_dboption 'DTCC', 'torn page detection', 'false'
    EXEC sp_dboption 'DTCC', 'trunc. log on chkpt.', 'true'

END
GO
