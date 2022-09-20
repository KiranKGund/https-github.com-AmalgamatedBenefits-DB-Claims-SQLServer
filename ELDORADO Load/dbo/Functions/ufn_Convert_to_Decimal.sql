CREATE FUNCTION [dbo].[ufn_Convert_to_Decimal] (@Amount varchar(11))
RETURNS Decimal(11,2)
AS
BEGIN

DECLARE @ret Decimal(11,2);  

SELECT @ret = IIF(ISNumeric(@Amount)=1,CAST(@Amount AS Decimal(11,2)),NULL);

RETURN @ret; 

END;