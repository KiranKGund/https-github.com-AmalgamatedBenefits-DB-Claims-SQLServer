-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UPDATE_MFELDOEMPELIGNEW] 

AS
BEGIN

	SET NOCOUNT ON;

BEGIN TRANSACTION; 

DECLARE @cmd varchar(2000)
DECLARE @RECID as Integer
DECLARE @STARTTIME as DateTime
DECLARE @ENDTime as DateTime
DECLARE @RECCOUNT as Integer

insert into claims.dbo.LOADREPORTING values('1','MFELDOPAIDNEW_UPD','MFELDOPAIDNEW',0,0,0,'STARTED','',Getdate(),Getdate(),Current_Timestamp,null,0);

SELECT @RECID = IDENT_CURRENT ('LOADREPORTING') 

SET @STARTTIME = GetDate()

BEGIN TRY  

Update claims.dbo.MFELDOEMPELIGNEW 
SET EFFECTIVE_DATE_OF_ELIGIBILITY = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(EFFECTIVE_DATE_OF_ELIGIBILITY)=1,EFFECTIVE_DATE_OF_ELIGIBILITY,'19000101') as Date), 101),'yyyyMMdd')

SET @RECCOUNT = @@ROWCOUNT 

END TRY  
BEGIN CATCH  
   SELECT   
        ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_SEVERITY() AS ErrorSeverity  
        ,ERROR_STATE() AS ErrorState  
        ,ERROR_PROCEDURE() AS ErrorProcedure  
        ,ERROR_LINE() AS ErrorLine  
        ,ERROR_MESSAGE() AS ErrorMessage;  
  
    IF @@TRANCOUNT > 0  
        ROLLBACK TRANSACTION;  

	UPDATE claims.dbo.LOADREPORTING 
	SET STATUS = 'ERROR',
	ETIME = GetDate(),
	--MF_LOAD_COUNT = @@ROWCOUNT,
	DUR = datediff(MILLISECOND, @STARTTIME,@ENDTime),
	MF_LOAD_COUNT = (Select Count(*) FROM MFELDOPAIDNEW),
	STATUS_MESSAGE = ( SELECT   ERROR_NUMBER()  + ERROR_SEVERITY() + ERROR_STATE()+ ERROR_PROCEDURE() + ERROR_LINE() + ERROR_MESSAGE())
	WHERE REC_NUM = @RECID

END CATCH

IF @@TRANCOUNT > 0  
    COMMIT TRANSACTION;  

	UPDATE claims.dbo.LOADREPORTING 
	SET STATUS = 'COMPLETED',
	ETIME = GetDate(),
	--MF_LOAD_COUNT = @@ROWCOUNT,
	DUR = datediff(MILLISECOND, @STARTTIME,@ENDTime),
	MF_LOAD_COUNT = @RECCOUNT
	WHERE REC_NUM = @RECID
  
END