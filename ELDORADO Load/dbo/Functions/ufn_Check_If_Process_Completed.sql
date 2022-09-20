CREATE FUNCTION [dbo].[ufn_Check_If_Process_Completed] (@JOBNAME varchar(20))
RETURNS Int
AS
BEGIN

DECLARE @recCnt Int;  

DECLARE @RetStatus Int; 

Select @recCnt = Count(*) FROM claims.dbo.LOADREPORTING
WHERE STIME > CONVERT(Date, GETDATE(),110)
AND JOB_NAM = @JOBNAME
AND STATUS ='COMPLETED'

IF @recCnt > 0  
SET @RetStatus = 1
ELSE 
SET @RetStatus = 0

Return @RetStatus

END;