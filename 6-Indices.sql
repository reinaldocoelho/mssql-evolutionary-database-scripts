USE [BANCO]
GO

---------------------------------------------------------------------------------------------------------------------------------------------------------
-- INDICES
---------------------------------------------------------------------------------------------------------------------------------------------------------

    ---------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Valida se existe o INDICE, caso não exista, cria o mesmo
    ---------------------------------------------------------------------------------------------------------------------------------------------------------
    IF NOT EXISTS (SELECT * FROM sysindexes WHERE name = 'IX_TABELA_CAMPO')
    BEGIN

        CREATE INDEX IX_TABELA_CAMPO 
        ON TABELA
        ( 
            CAMPO
        )

    END
    GO

---------------------------------------------------------------------------------------------------------------------------------------------------------
-- ESTATISTICAS
---------------------------------------------------------------------------------------------------------------------------------------------------------

    ---------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Valida se existe a ESTATISTICA, caso não exista, cria a mesma
    ---------------------------------------------------------------------------------------------------------------------------------------------------------
    IF NOT EXISTS (SELECT * FROM sysindexes WHERE name = 'ST_TABELA_CAMPO')
    BEGIN

        CREATE STATISTICS ST_TABELA_CAMPO 
        ON TABELA
        ( 
            CAMPO
        )

    END
    GO

---------------------------------------------------------------------------------------------------------------------------------------------------------
-- INDICES FULL-TEXT
---------------------------------------------------------------------------------------------------------------------------------------------------------

    ---------------------------------------------------------------------------------------------------------------------------------------------------------
    -- BANCO
    -- -----
    -- Valida se o Banco permite Indices Full-Text, caso não permita, libera permissão
    ---------------------------------------------------------------------------------------------------------------------------------------------------------
    IF ( SELECT DATABASEPROPERTY ( DB_NAME(), 'IsFullTextEnabled' ) ) <> 1 
    BEGIN
        
        EXEC sp_fulltext_database 'ENABLE' 

    END
    GO

    --------------------------------------------------------------------------------------------------------------------------------------------------------
    -- INDICE FULL-TEXT
    -- ----------------
    -- Valida se existe o indice Full-Text indicado, se não existir, cria o mesmo
    ---------------------------------------------------------------------------------------------------------------------------------------------------------
    IF NOT EXISTS( SELECT 1 FROM dbo.sysfulltextcatalogs WHERE name = 'NOME_INDICE' )
    BEGIN

        EXEC sp_fulltext_catalog 'NOME_INDICE', 'CREATE' 

    END
    GO

    --------------------------------------------------------------------------------------------------------------------------------------------------------
    -- TABELA
    -- ------
    -- Valida se existe o indice Full-Text liberado para a Tabela, se não tiver, libera o 
    -- indice para a tabela, libera permissão nos campos, e ativa o indice
    ---------------------------------------------------------------------------------------------------------------------------------------------------------
    IF NOT EXISTS (SELECT 1 FROM dbo.sysobjects WHERE type = 'U' AND name = 'TABELA' AND ftcatid = (SELECT ftcatid FROM dbo.sysfulltextcatalogs WHERE name = 'NOME_INDICE'))
    BEGIN

        -- Associa o Full-Text a TABELA
        ---------------------------------------------------------------------------------------------------------------------------------------------------------
        EXEC sp_fulltext_table '[dbo].[TABELA]', 'CREATE', 'NOME_INDICE'

    END
    GO

    --------------------------------------------------------------------------------------------------------------------------------------------------------
    -- CAMPOS
    -- ------
    -- Vincula os campos abaixo, no indice Full-Text Criado acima
    ---------------------------------------------------------------------------------------------------------------------------------------------------------
    IF NOT EXISTS ( SELECT 1 FROM syscolumns WHERE name = 'CAMPO' AND id = ( SELECT id FROM dbo.sysobjects WHERE type = 'U' AND name = 'TABELA' AND ftcatid = (SELECT ftcatid FROM dbo.sysfulltextcatalogs WHERE name = 'NOME_INDICE') ) )
    BEGIN

        -- Associa o Full-Text ao CAMPO
        ---------------------------------------------------------------------------------------------------------------------------------------------------------
        EXEC sp_fulltext_column '[dbo].[TABELA]', 'CAMPO', 'ADD'

        -- Ativa o Full-Text para a TABELA
        ---------------------------------------------------------------------------------------------------------------------------------------------------------
        EXEC sp_fulltext_table '[dbo].[TABELA]', 'ACTIVATE'
    
    END
    GO

--     ---------------------------------------------------------------------
--     -- Criação do Full-Text para Tabela MSSQL2005
--     ---------------------------------------------------------------------
--     -- Ao descomentar este código, favor comentar os códigos do SQL2000
--     -- referentes a criação do fulltext tabela e campos.
--     ---------------------------------------------------------------------
--     IF  NOT EXISTS(
--             SELECT 
--                 1 
--             FROM 
--                 sys.fulltext_indexes
--                 INNER JOIN sys.tables ON 
--                     sys.tables.object_id = sys.fulltext_indexes.object_id
--             WHERE 
--                 sys.tables.name = 'TABELA'
--         )
--     BEGIN
--     
--     	CREATE FULLTEXT INDEX ON [TABELA] (
--     		CAMPO1,
--     		CAMPO2
--     	) 
--     	KEY INDEX PK_TABELA
--     	ON [NOME_INDICE]
--     	WITH CHANGE_TRACKING AUTO
--     
--     END
--     GO
