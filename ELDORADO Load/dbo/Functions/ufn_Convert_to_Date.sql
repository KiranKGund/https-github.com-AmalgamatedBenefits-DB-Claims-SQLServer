CREATE FUNCTION [dbo].[ufn_Convert_to_Date] (@Date varchar(8))
RETURNS Date
AS
BEGIN

DECLARE @ret Date;  

SELECT @ret = CAST(IIF(ISDATE(@Date)=1,@Date,'19000101') as Date);

RETURN @ret; 

END;