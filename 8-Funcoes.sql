USE [BANCO]
GO

IF EXISTS( SELECT 1 FROM dbo.sysobjects WHERE id = object_id( N'[dbo].[fn_FUNCAO]' ) AND xtype = 'FN' )
    DROP FUNCTION [dbo].[fn_FUNCAO]
GO

/*
Entrada:
        @id_site          int             - identificador do site em que a conta será cadastrada
        @dat_inicio       datetime        - data de inicio da busca de informações
        @dat_fim          datetime        - data de final da busca de informações
                      
Saída:
 
Descrição : Funcao criada para ...
 
Dependentes: 
*/
CREATE FUNCTION [dbo].[fn_FUNCAO](
    @txt_texto      varchar( 8000 )
)
RETURNS
    @tb_tabela TABLE(
        id    int   PRIMARY KEY CLUSTERED
    )
AS
BEGIN

    --------------------------------------------------------------------------------------------------
    -- Retorna
    --------------------------------------------------------------------------------------------------
    RETURN

END
GO

GRANT SELECT ON [fn_FUNCAO] TO [USUARIO]
GO
