EXECUTE sp_addlinkedsrvlogin @rmtsrvname = N'CLAIMS', @useself = N'FALSE', @rmtuser = N'db2inst1';


GO
EXECUTE sp_addlinkedsrvlogin @rmtsrvname = N'AIXCLAIMS', @useself = N'FALSE', @rmtuser = N'claims';

