﻿-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UPDATE_MFELDODISBPEND] 

AS
BEGIN

	SET NOCOUNT ON;

BEGIN TRANSACTION; 
DECLARE @cmd varchar(2000)
DECLARE @RECID as Integer
DECLARE @STARTTIME as DateTime
DECLARE @ENDTime as DateTime
DECLARE @RECCOUNT as Integer

BEGIN TRY  

UPDATE CLAIMS.DBO.MFELDODISBPEND
SET INPUT_DATE=FORMAT(CONVERT(Date,CAST(IIF(ISDATE(INPUT_DATE)=1,INPUT_DATE,'19000101') as Date), 101),'yyyyMMdd'),
RECEIVED_DATE=FORMAT(CONVERT(Date,CAST(IIF(ISDATE(RECEIVED_DATE)=1,RECEIVED_DATE,'19000101') as Date), 101),'yyyyMMdd'),
PAID_DATE=FORMAT(CONVERT(Date,CAST(IIF(ISDATE(PAID_DATE)=1,PAID_DATE,'19000101') as Date), 101),'yyyyMMdd'),
ADJUDICATION_DATE=FORMAT(CONVERT(Date,CAST(IIF(ISDATE(ADJUDICATION_DATE)=1,ADJUDICATION_DATE,'19000101') as Date), 101),'yyyyMMdd'),
CHANGED_DATE=FORMAT(CONVERT(Date,CAST(IIF(ISDATE(CHANGED_DATE)=1,CHANGED_DATE,'19000101') as Date), 101),'yyyyMMdd'),
PROCESSED_DATE=FORMAT(CONVERT(Date,CAST(IIF(ISDATE(PROCESSED_DATE)=1,PROCESSED_DATE,'19000101') as Date), 101),'yyyyMMdd'),
LAST_DAY_WORKED_DATE=FORMAT(CONVERT(Date,CAST(IIF(ISDATE(LAST_DAY_WORKED_DATE)=1,LAST_DAY_WORKED_DATE,'19000101') as Date), 101),'yyyyMMdd'),
RETURN_TO_WORK_DATE=FORMAT(CONVERT(Date,CAST(IIF(ISDATE(RETURN_TO_WORK_DATE)=1,RETURN_TO_WORK_DATE,'19000101') as Date), 101),'yyyyMMdd'),
FIRST_PHYSICIAN_VISIT_DATE=FORMAT(CONVERT(Date,CAST(IIF(ISDATE(FIRST_PHYSICIAN_VISIT_DATE)=1,FIRST_PHYSICIAN_VISIT_DATE,'19000101') as Date), 101),'yyyyMMdd'),
LAST_PHYSICIAN_VISIT_DATE=FORMAT(CONVERT(Date,CAST(IIF(ISDATE(LAST_PHYSICIAN_VISIT_DATE)=1,LAST_PHYSICIAN_VISIT_DATE,'19000101') as Date), 101),'yyyyMMdd'),
WAITING_PERIOD_BEGIN_DATE=FORMAT(CONVERT(Date,CAST(IIF(ISDATE(WAITING_PERIOD_BEGIN_DATE)=1,WAITING_PERIOD_BEGIN_DATE,'19000101') as Date), 101),'yyyyMMdd'),
BENEFIT_BEGIN_DATE=FORMAT(CONVERT(Date,CAST(IIF(ISDATE(BENEFIT_BEGIN_DATE)=1,BENEFIT_BEGIN_DATE,'19000101') as Date), 101),'yyyyMMdd'),
PLAN_EFFECTIVE_DATE=FORMAT(CONVERT(Date,CAST(IIF(ISDATE(PLAN_EFFECTIVE_DATE)=1,PLAN_EFFECTIVE_DATE,'19000101') as Date), 101),'yyyyMMdd'),
CLAIM_CONVERED_DATE=FORMAT(CONVERT(Date,CAST(IIF(ISDATE(CLAIM_CONVERED_DATE)=1,CLAIM_CONVERED_DATE,'19000101') as Date), 101),'yyyyMMdd'),
APPROVED_FROM_DATE=FORMAT(CONVERT(Date,CAST(IIF(ISDATE(APPROVED_FROM_DATE)=1,APPROVED_FROM_DATE,'19000101') as Date), 101),'yyyyMMdd'),
APPROVED_THRU_DATE=FORMAT(CONVERT(Date,CAST(IIF(ISDATE(APPROVED_THRU_DATE)=1,APPROVED_THRU_DATE,'19000101') as Date), 101),'yyyyMMdd'),
CLOSED_DATE=FORMAT(CONVERT(Date,CAST(IIF(ISDATE(CLOSED_DATE)=1,CLOSED_DATE,'19000101') as Date), 101),'yyyyMMdd')

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