USE [BANCO]
GO

-------------------------------------------------------------------
-- CHECK CONSTRAINTS
-------------------------------------------------------------------

    ------------------------------------------------------------------------------------
    -- PS: ESTE CÓDICO SÓ DEVE SER UTILIZADO SE A VALIDACAO DA CHECK FOI ALTERADA
    -- Valida se a versão da constraint é a ultima
    ------------------------------------------------------------------------------------
    -- Valida se existe a CHECK CONSTRAINT com código diferente da ultima versão, 
    -- caso exista, apaga a mesma
    ------------------------------------------------------------------------------------
    IF '( CAMPO IN ( 0, 1, 2 ) )' <> (SELECT SUBSTRING( (SELECT text FROM syscomments WHERE id IN( SELECT id FROM sysobjects WHERE name = 'CK_TABELA_CAMPO' AND xtype IN ('C') ) AND colid = 1), 1,2000))
    BEGIN
    
        ALTER TABLE TABELA DROP
            CONSTRAINT [CK_TABELA_CAMPO]
    
    END
    GO
    -- Valida se existe a CHECK CONSTRAINT, caso não exista, cria a mesma
    ------------------------------------------------------------------------------------
    IF NOT EXISTS (SELECT * FROM sysobjects WHERE name = 'CK_TABELA_CAMPO' AND type = 'C')
    BEGIN
    
        ALTER TABLE TABELA WITH NOCHECK ADD
            CONSTRAINT [CK_TABELA_CAMPO] CHECK ( CAMPO IN ( 0, 1, 2 ) )
    
    END
    GO

-------------------------------------------------------------------
-- DEFAULT CONSTRAINTS
-------------------------------------------------------------------

    -- Valida se existe a DEFAULT CONSTRAINT, caso não exista, cria a mesma
    ---------------------------------------------------------------------------------------------------------------------------------------------------------
    IF NOT EXISTS (SELECT * FROM sysobjects WHERE name = 'DF_TABELA_CAMPO' AND type = 'D')
    BEGIN
    
        ALTER TABLE TABELA WITH NOCHECK ADD
            CONSTRAINT [DF_TABELA_CAMPO] DEFAULT 0 FOR [CAMPO]
    
    END
    GO

-------------------------------------------------------------------
-- FOREIGN KEY CONSTRAINTS
-------------------------------------------------------------------

    -- Valida se existe a FOREIGN KEY, caso não exista, cria a mesma
    ---------------------------------------------------------------------------------------------------------------------------------------------------------
    IF NOT EXISTS (SELECT * FROM sysobjects WHERE name = 'FK_TABELA_TABELA_VINC' AND type = 'F')
    BEGIN
    
        ALTER TABLE TABELA WITH NOCHECK ADD
            CONSTRAINT [FK_TABELA_TABELA_VINC] 
            FOREIGN KEY( CAMPO )
            REFERENCES TABELA_VINC(CAMPO)
    
    END
    GO
