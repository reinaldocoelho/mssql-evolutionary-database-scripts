USE [BANCO]
GO

IF EXISTS ( SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[pr_procedure]') and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
    DROP PROCEDURE [dbo].[pr_procedure]
GO

/*
Entrada:
        @id_site          int             - identificador do site em que a conta será cadastrada
        @dat_inicio       datetime        - data de inicio da busca de informações
        @dat_fim          datetime        - data de final da busca de informações
                      
Saída:
 
Descrição : Procedure criada para ...
 
Dependentes: 
*/
CREATE PROCEDURE [dbo].[pr_procedure] (
    @id_site              int,
    @dat_inicio           datetime,
    @dat_fim              datetime
)
AS
BEGIN

    SET NOCOUNT ON

    ------------------------------------------------------------------------------------------------------------------------------------------------
    -- fçsljkfsdjklfsjk
    ------------------------------------------------------------------------------------------------------------------------------------------------
    IF ( @xyz <> 0 ) 
    BEGIN

        RAISERROR( 'ssdçfkskçfsf', 16, 1)
        RETURN

    END


    SET NOCOUNT OFF

END
GO

GRANT EXEC ON [dbo].[pr_procedure] TO [USUARIO]
GO
