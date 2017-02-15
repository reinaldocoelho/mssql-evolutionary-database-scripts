USE [BANCO]
GO

---------------------------------------------------------------------------------------------------------------------------------------------------------
-- Valida se existe a TABELA, caso não exista, cria a mesma
---------------------------------------------------------------------------------------------------------------------------------------------------------
IF NOT EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'TABELA')
BEGIN

    ---------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Cria estrutura
    ---------------------------------------------------------------------------------------------------------------------------------------------------------
    CREATE TABLE [dbo].[TABELA](
        id_tabela                       int            NOT NULL,
        txt_tabela                      varchar( 050 ) NOT NULL
    )

END
GO

---------------------------------------------------------------------------------------------------------------------------------------------------------
-- Valida se existe o CAMPO na tabela, caso não exista, cria
---------------------------------------------------------------------------------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT 1 FROM syscolumns WHERE name = 'CAMPO' AND id = ( SELECT id FROM sysobjects WHERE type = 'U' AND name = 'TABELA' ) )
BEGIN

    ALTER TABLE TABELA ADD
        CAMPO   int   NULL

END
GO

---------------------------------------------------------------------------------------------------------------------------------------------------------
-- Valida se existe o CAMPO na tabela e seu DATATYPE correto, caso não exista, altera o campo
---------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS ( SELECT 1 FROM syscolumns WHERE name = 'CAMPO' AND length = '100' AND id = ( SELECT id FROM sysobjects WHERE type = 'U' AND name = 'TABELA' ) AND xtype = ( SELECT xtype FROM systypes WHERE name = 'VARCHAR' ) )
BEGIN    
    
    ALTER TABLE TABELA
        ALTER COLUMN CAMPO varchar(255)    

END
GO

---------------------------------------------------------------------------------------------------------------------------------------------------------
-- Valida se existe a CHAVE PRIMARIA da tabela, se não existir, cria a mesma
---------------------------------------------------------------------------------------------------------------------------------------------------------
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name = 'PK_TABELA' AND type = 'K')
BEGIN

    ALTER TABLE TABELA WITH NOCHECK ADD
        CONSTRAINT PK_TABELA PRIMARY KEY CLUSTERED
            ( CAMPO )

END
GO

-------------------------------------------------------------------
-- UNIQUE KEY CONSTRAINTS
-------------------------------------------------------------------

    -- Valida se existe a UNIQUE KEY, caso não exista, cria a mesma
    ---------------------------------------------------------------------------------------------------------------------------------------------------------
    IF NOT EXISTS (SELECT * FROM sysobjects WHERE name = 'UK_CHAVE' AND xtype = 'UQ')
    BEGIN
    
        ALTER TABLE TABELA WITH NOCHECK ADD
            CONSTRAINT [UK_CHAVE] UNIQUE NONCLUSTERED( [CAMPO] )
    
    END
    GO
