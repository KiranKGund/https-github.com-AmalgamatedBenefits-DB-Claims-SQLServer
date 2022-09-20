EXECUTE sp_addlinkedserver @server = N'CLAIMS', @srvproduct = N'IBM', @provider = N'IBMDADB2.DB2COPY1', @datasrc = N'CLAIMS', @location = N'172.30.72.136;50000', @provstr = N'172.30.72.136;50000';


GO
EXECUTE sp_addlinkedserver @server = N'AIXCLAIMS', @srvproduct = N'IBM', @provider = N'IBMDADB2.DB2COPY1', @datasrc = N'CLAIMS', @location = N'172.30.72.136:50000', @provstr = N'172.30.72.136:50000';

