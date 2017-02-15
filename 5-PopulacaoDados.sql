/*
Descricao  : Cont�m os dados iniciais para o Banco, na tabela espec�fica.
*/

SET NOCOUNT ON

-------------------------------------------------------------------
-- INSERTS DE REGISTROS ( Informa��o Inicial )
-------------------------------------------------------------------

-- Valida se existe a TABELA antes de inserir os registros
---------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT * FROM [BANCO].dbo.sysobjects WHERE type = 'U' AND name = 'TABELA')
BEGIN

    -- Desativa o campo Autonumera��o para evitar erros
    -----------------------------------------------------------------------------
    SET IDENTITY_INSERT [BANCO].dbo.[TABELA] ON

    -- Desativa todas as triggers para evitar erros
    -----------------------------------------------------------------------------
    ALTER TABLE [BANCO].dbo.[TABELA] DISABLE TRIGGER ALL

    -- Valida se existe o REGISTRO, caso n�o exista, cria o mesmo
    ------------------------------------------------------------------------------------
    IF NOT EXISTS( SELECT 1 FROM [BANCO].dbo.[TABELA] WHERE <ID> = <VALOR>  )
    BEGIN
    
        INSERT INTO
            [BANCO].dbo.[TABELA]( ID, CAMPO1,...., CAMPON )
        VALUES
            ( VALORID, VALOR1, ...., VALORN )
            
    
    END

    -- Ativa o campo Autonumera��o para evitar erros
    -----------------------------------------------------------------------------
    ALTER TABLE [BANCO].dbo.[TABELA] ENABLE TRIGGER ALL

    -- Ativa todas as triggers para evitar erros
    -----------------------------------------------------------------------------
    SET IDENTITY_INSERT [BANCO].dbo.[TABELA] OFF

END

-------------------------------------------------------------------
-- UPDATE DE REGISTROS ( Corre��o de Dados )
-------------------------------------------------------------------

-- Valida se existe a TABELA e o CAMPO antes de atualizar os registros
---------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS ( SELECT 1 FROM [BANCO].dbo.syscolumns WHERE name = 'CAMPO' AND id = ( SELECT TOP 1 id FROM [BANCO].dbo.sysobjects WHERE type = 'U' AND name = 'TABELA' ) )
BEGIN

    -- Desativa todas as triggers para evitar erros
    -----------------------------------------------------------------------------
    ALTER TABLE [BANCO].dbo.[TABELA] DISABLE TRIGGER ALL

    -- Atualiza registros do Banco de Dados
    -----------------------------------------------------------------------------
    UPDATE
        [BANCO].dbo.[TABELA]
    SET
        [CAMPO1] = [VALOR1]
    WHERE 
        [ID] = [VALORID]

    -- Ativa o campo Autonumera��o para evitar erros
    -----------------------------------------------------------------------------
    ALTER TABLE [BANCO].dbo.[TABELA] ENABLE TRIGGER ALL

END

-------------------------------------------------------------------
-- Exclus�o DE REGISTROS ( Corre��o de Dados )
-------------------------------------------------------------------

-- Valida se existe a TABELA antes de inserir os registros
---------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT * FROM [BANCO].dbo.sysobjects WHERE type = 'U' AND name = 'TABELA')
BEGIN

    -- Desativa todas as triggers para evitar erros
    -----------------------------------------------------------------------------
    ALTER TABLE [BANCO].dbo.'TABELA' DISABLE TRIGGER ALL

    -- Desativa todas as Constraints para evitar erros
    -----------------------------------------------------------------------------
    -- Valida se existe a FOREIGN KEY, caso contrario nao faz nada
    ---------------------------------------------------------------------------------------------------------------------------------------------------------
    IF EXISTS (SELECT * FROM sysobjects WHERE name = 'FOREIGN_KEY' AND type = 'F')
    BEGIN

	    ALTER TABLE [BANCO].dbo.[TABELA] NOCHECK CONSTRAINT [FOREIGN_KEY]

    END

    -- Exclui registro caso exista o mesmo
    ------------------------------------------------------------------------------
    IF EXISTS(SELECT 1 FROM [BANCO].dbo.[TABELA] WHERE [CAMPO] = [VALOR])
    BEGIN

        --Essa p�gina est� obsoleta e foi retirada do Supervisor
        ------------------------------------------------------------
        DELETE FROM
            [BANCO].dbo.'TABELA'
        WHERE
            [CAMPO] = [VALOR]

    END

    -- Ativa todas as Constraints para evitar erros
    -----------------------------------------------------------------------------
    -- Valida se existe a FOREIGN KEY, caso contrario nao faz nada
    ---------------------------------------------------------------------------------------------------------------------------------------------------------
    IF EXISTS (SELECT * FROM sysobjects WHERE name = 'FOREIGN_KEY' AND type = 'F')
    BEGIN

	    ALTER TABLE [BANCO].dbo.[TABELA] CHECK CONSTRAINT [FOREIGN_KEY]

    END

    -- Ativa o campo Autonumera��o para evitar erros
    -----------------------------------------------------------------------------
    ALTER TABLE [BANCO].dbo.[TABELA] ENABLE TRIGGER ALL

END

SET NOCOUNT OFF

------------------------------------------------------------------------------------
-- PARA OS INSERTS
-- ---------------
--
-- Para Obter a Listagem dos Registros a partir de uma tabela existente, pode-se 
-- utilizar o script abaixo, adaptando-o para sua necessidade.
-- 
-- Em casos de cargas iniciais de grandes volumes, o script abaixo � aconselhado.
------------------------------------------------------------------------------------
/*
SELECT 
'
IF NOT EXISTS( SELECT 1 FROM <TABLE> WHERE id = ' + CONVERT(VARCHAR, id) + ' )
BEGIN

    INSERT INTO <TABLE> ( id, name )
    VALUES( ' + CONVERT(VARCHAR, id) + ', ''' + name + '''' )

END
'
FROM 
    <TABLE>
*/