USE [master]
GO

-------------------------------------------------------------------------------
-- Inicia criação dos Logins
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'administrador' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x0100FF288E7B8EAF051FA990D16CF09B21DA94FA502BEFA8EF9D1D0418D59B7B704DFC542F1E92703ED3BF48C5CD)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'administrador', @pwd, @sid = 0x482C2D10164A6F4EABE1DFA983CAF50C, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'ameba' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x0100FF288E7B8EAF051FA990D16CF09B21DA94FA502BEFA8EF9D1D0418D59B7B704DFC542F1E92703ED3BF48C5CD)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'ameba', @pwd, @sid = 0xBDEF5B637886C041AC182C3844870A22, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'auto_atendimento' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x0100EF003736FD5EE2A5BF498331D48571F96A1091E222C1ECCA1719CD9BCF2DED9E2DADCB4B68808B8E9417D227)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'auto_atendimento', @pwd, @sid = 0xAD25675F12AD1F4F895E478783239741, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'auto_supervisor' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x0100396ECF1C50CC5D7B37F6FD49C6014D2F249AF3FAF559C861895B527E122BF7FA8448FA2522306ABDCFB853FC)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'auto_supervisor', @pwd, @sid = 0x56D0458E00868340ACFDE5D4E8720F8B, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'bs_operador' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x01009210DC3272539BD62BD505BA24A8F74C14DCAC3EC9AAC46B5C37DE77C9028A501F0B4435261A99381100A885)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'bs_operador', @pwd, @sid = 0x4993207750F2974D8A44F9074132C64A, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'bs_supervisor' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x01009210DC32CD58E4F02DB3AC554F841923593667E6E18E41A9FE71E0D5C0F7B7068BD6245E1884E3A5886F2121)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'bs_supervisor', @pwd, @sid = 0x8C36F6B855E035459474C17F1887921F, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'consulta' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x0100D240E36C583056AA0C487BE8610E1097DEA77507EE1184C29F399FFB10C63BF109D1DFF7AD965FC1427EC337)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'consulta', @pwd, @sid = 0x6907BB75ED2FFE40AD65D196BF85E48A, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'dmail_admin' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x01002841B52885D70AB9D833F92CA75E9798BAF92EA0D69A6714C18ECA40DAB0DF982FBFB1D7A7F9AC3CC564BC4C)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'dmail_admin', @pwd, @sid = 0x1E1692AAD6F0A3418F879514422E2B40, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'dmail_operator' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x01009210DC32B506821089ABE7028F8E9C7930A4780A990C7A51FA6D730A32DEAD06754AA7EA4DD889289683FFD9)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'dmail_operator', @pwd, @sid = 0x4C0BBD9B62686146988714E43AA5C92E, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'dmail_service' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x01009210DC32CD58E4F02DB3AC554F841923593667E6E18E41A9FE71E0D5C0F7B7068BD6245E1884E3A5886F2121)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'dmail_service', @pwd, @sid = 0xF618B0A23B0A1D4C808D5B0AC4E98CA1, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'dmail_supervisor' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x01009210DC32CD58E4F02DB3AC554F841923593667E6E18E41A9FE71E0D5C0F7B7068BD6245E1884E3A5886F2121)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'dmail_supervisor', @pwd, @sid = 0xA8B8088D0C05D74E91D27B63A017F484, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'dmail_web' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x010029064C1F0A183D3311669B29B4D46E0BE464415188BFECE1456A5D3FCBEB3180E1576B956F07613DA6ED2D4F)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'dmail_web', @pwd, @sid = 0xF378D9F9D574EF448768EDD63B1D8C5C, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'dt_framework' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x0100F2112A56E051A577CD74C6434340068598DAFE42590813C10BD578281E8282B17C2B728FE6B46307110D34D8)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'dt_framework', @pwd, @sid = 0x93018D8B45DA254881A60988315F8F69, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'dt_monitor' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x01009D5094271EFC20ED4B5E90EB62D852129F0E8DB60D505CF973790B91107BCF37D39AAF43E74A89334576867D)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'dt_monitor', @pwd, @sid = 0x3A32B480B7BB624CBF3757C9B1C165BE, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'dt_operador' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x01005B03AE570CEBCD5DD8CB90B64724871EF1ED9D2BC7CDBB8825151CD4F763967D0693243BCC83D3A7C100CD19)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'dt_operador', @pwd, @sid = 0xBFA3EDDBE54F504CB86B7C9813F6847B, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'dt_supervisor' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x0100ED34212D569A6267177A2667149216CA12C4014BFCD1A44FDF4163619BD966AE2DCC9570F6B8BC66F057BCF6)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'dt_supervisor', @pwd, @sid = 0x8AFE8D3A57F021469288BD212F7ED86F, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'dt_web' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x01003D06EE1D6264FF5C67E209739EBF825A99D7A595855FB0408E956C082FBCDA3E269003F9C54093E8D4480BB3)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'dt_web', @pwd, @sid = 0x71FD518DF70FE042A40122EB77E10BE8, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'dt_webservice' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x0100364823544120DEC97608552FAA0B000E434B986FB39E1C13E7285E7981EC23150DB9FCDAC0F067B1FB9BEA98)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'dt_webservice', @pwd, @sid = 0x690A368B6157D54AB2E25EA1EF42C80A, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'dts' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x0100A336C117E0E5C6E04749B02BE07A2CE67C86BE132858C998B4D34C395E6A0C9B55E1E97FE32BD3C53748F86C)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'dts', @pwd, @sid = 0xD8B6F8BA231A1E4DA9C93420469CF132, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'dt-ws' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x0100344EFA12861F0AFB6C840CC2D841D40105C7A7916E0F91FE243A83C33885717C9F1523161A5CDB16191BFEBC)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'dt-ws', @pwd, @sid = 0x317CCD779C5FF747926555AEE9F86481, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'ferramentasp' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x01008F19D063123D5AA9A3CC2B52560498F08A9C253A5D8166EA2523A760EDB82679E1F3FFDC5CA3C2B97D920154)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'ferramentasp', @pwd, @sid = 0x8BF15D13A2F835419B03C167AE5263A4, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'integracao' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x01009210DC322CD2A6A259DB6064DB9B2B505BD0E7592D393271321B59850B3E6A50630FAF25C7EA7BF48A32EC05)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'integracao', @pwd, @sid = 0xAEECD51A79559445A9B77C90E15A07CC, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'logshipping' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x01003C498C5B35D9AED623BCCA43AAE626F3E0ECC4A8D4427F35295D95A7854518ADFFFF194AD67267AA2605E68F)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'logshipping', @pwd, @sid = 0xB7186E27172AEB45914D25A010E8F851, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'mantenedor' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x0100F8469C3FFD4C125A9FBA18EC1E9F4B058BC3ABA67BBBCF7C064CB603A29868BE7A97DDD19C61357A939C416B)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'mantenedor', @pwd, @sid = 0x67076028EAB73640A1761BB981C0E97C, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'manutencao' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x01001F48971198ADD46F258342D9325680732D8C43E58F0EA058C23AB9402DEC934B4349B0FB762B2389C1B415EA)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'manutencao', @pwd, @sid = 0x11E4F45C7AA5FF4DAA6843DA425E0431, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'oxadm_directtalk' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x01009210DC32CD58E4F02DB3AC554F841923593667E6E18E41A9FE71E0D5C0F7B7068BD6245E1884E3A5886F2121)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'oxadm_directtalk', @pwd, @sid = 0x1E68A6AD2A6D3E4DA76F43A6076C6DD9, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'oxuser_directtalk' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x01001C02D70C6E54D9CCC6A00C77F9EC9C7759202A608D8866144417FC432A5ABD11AA303290C8D3092A32F81EC5)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'oxuser_directtalk', @pwd, @sid = 0x3B48BD94EC1F384384EE5744CF5E6719, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'phone_supervisor' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x01009210DC32CD58E4F02DB3AC554F841923593667E6E18E41A9FE71E0D5C0F7B7068BD6245E1884E3A5886F2121)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'phone_supervisor', @pwd, @sid = 0xA3C53E28006C6B46BC111678C028A907, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'servico' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x0100CD12676686CDB1A4C43B3089AF68C5CFCD3AEECC2D172A3745799674586BDE5E2E77029D2EE3BD8B30FA40B1)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'servico', @pwd, @sid = 0xDA77B16A45FC2C43886554919251C949, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'wf_administrador' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x01009210DC3272539BD62BD505BA24A8F74C14DCAC3EC9AAC46B5C37DE77C9028A501F0B4435261A99381100A885)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'wf_administrador', @pwd, @sid = 0xE6EA841BF344F7418989D40B38C55092, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'wf_supervisor' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x01009210DC32CD58E4F02DB3AC554F841923593667E6E18E41A9FE71E0D5C0F7B7068BD6245E1884E3A5886F2121)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'wf_supervisor', @pwd, @sid = 0x504B531691DA8042A0BAEA1C35254BCC, @encryptopt = 'skip_encryption'

END
GO
 
-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'wf_web' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x01004544410437A943B00BAB0656872218C54AB0A18DA0C21672A9C2205690E2706CFAC0B97A3A00FA151136ADEB)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'wf_web', @pwd, @sid = 0x327921470F7C0744B8EA0711BA51AD48, @encryptopt = 'skip_encryption'

END
GO
 
-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'dt_execute_sql' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x01002657DC370E09ACA2F84A50B0070F2E45549506AD46738079FC1F778FF2C869BCF897B13A8773F17C9B39993F)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'dt_execute_sql', @pwd, @sid = 0x1E0E894CABF7A840811EEDBB9395D238, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'dt_consulta' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x0100133FA56FD5F54A92C546EE9B01073B165517720AA719E7EB559C134A5DEBFBFD74C593CBC5DF2FFCF8BB7AAC)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'dt_consulta', @pwd, @sid = 0xDFE37E8682440F4A92035B5F182034A6, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'dt_exportador_adm' )
BEGIN

    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x010051773E0D8289F13EA79A976DE169DA90006842BE98C602738F085A74A4972CE2C8FE3C1C80318BB4534F2A32)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'dt_exportador_adm', @pwd, @sid = 0xF9F2425F25814844919CB18F48C409F4, @encryptopt = 'skip_encryption'

END
GO

-------------------------------------------------------------------------------
-- Valida a existencia do Login no servidor SQL
-------------------------------------------------------------------------------
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'dt_dw' )
BEGIN    
    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname

    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
    SET @pwd = CONVERT (varbinary(256), 0x0100D1677C16E926F08986BB80A4A5ED39568FF4D509D8A21A08)

    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
    EXEC master..sp_addlogin 'dt_dw', @pwd, @sid = 0x5B1338F468B7264C88591294661C5671, @encryptopt = 'skip_encryption'

END

GO
IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'adubo' )

BEGIN
    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname
    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
      SET @pwd = CONVERT (varbinary(256), 0x0100EE231201CF132C1DB880225368DCFD9446CE26195DDBED5672207FF31AF882E3C98B266F6E7A608319DC6928)
    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
      EXEC master..sp_addlogin 'adubo', @pwd, @sid = 0x48097458C5A00B48A9661EBF6E4A43B1, @encryptopt = 'skip_encryption'
END

GO

IF NOT EXISTS ( SELECT * FROM syslogins WHERE name = 'minhoca' )

BEGIN
    ---------------------------------------------------------
    -- Declara Variável para recuperar a senha dos logins
    ---------------------------------------------------------
    DECLARE @pwd sysname
    -------------------------------------------------------------------------------
    -- Recupera a senha a ser utilizada para o Login
    -------------------------------------------------------------------------------
	SET @pwd = CONVERT (varbinary(256), 0x01000A6A60312D5B49BCB99A4328BB2D8DF389DFC519F73E102E214FAE2B8CC4F69DBE862DC2A8EA7159ADC3E551)
    -------------------------------------------------------------------------------
    -- Cria o Login no servidor específico
    -------------------------------------------------------------------------------
      EXEC master..sp_addlogin 'minhoca', @pwd, @sid = 0x2C9DE795782C0349B6145FCAFA7883A5, @encryptopt = 'skip_encryption'
END

GO