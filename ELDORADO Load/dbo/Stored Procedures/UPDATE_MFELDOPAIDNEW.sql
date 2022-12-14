-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UPDATE_MFELDOPAIDNEW] 

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

UPDATE [CLAIMS].[DBO].[MFELDOPAIDNEW]
SET		PATIENT_DATE_OF_BIRTH =	FORMAT(CONVERT(Date,CAST(IIF(ISDATE(PATIENT_DATE_OF_BIRTH)=1,PATIENT_DATE_OF_BIRTH,'19000101') as Date), 101),'yyyyMMdd'),
		DATE_OF_ELIGIBILITY_ENTRY =	FORMAT(CONVERT(Date,CAST(IIF(ISDATE(DATE_OF_ELIGIBILITY_ENTRY)=1,DATE_OF_ELIGIBILITY_ENTRY,'19000101') as Date), 101),'yyyyMMdd'),
		INPUT_DATE = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(INPUT_DATE)=1,INPUT_DATE,'19000101') as Date), 101),'yyyyMMdd'),
		RECEIVED_DATE = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(RECEIVED_DATE)=1,RECEIVED_DATE,'19000101') as Date), 101),'yyyyMMdd'),
		PAID_DATE = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(PAID_DATE)=1,PAID_DATE,'19000101') as Date), 101),'yyyyMMdd'),
		INCURRED_DATE = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(INCURRED_DATE)=1,INCURRED_DATE,'19000101') as Date), 101),'yyyyMMdd'),
		DATE_SENT_TO_PPO_FOR_PRICING = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(DATE_SENT_TO_PPO_FOR_PRICING)=1,DATE_SENT_TO_PPO_FOR_PRICING,'19000101') as Date), 101),'yyyyMMdd'),
		CHANGED_DATE = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(CHANGED_DATE)=1,CHANGED_DATE,'19000101') as Date), 101),'yyyyMMdd'),
		PROCESSED_DATE = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(PROCESSED_DATE)=1,PROCESSED_DATE,'19000101') as Date), 101),'yyyyMMdd'),
		FROM_DATE_OF_SERVICE_1 = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(FROM_DATE_OF_SERVICE_1)=1,FROM_DATE_OF_SERVICE_1,'19000101') as Date), 101),'yyyyMMdd'),
		THRU_DATE_OF_SERVICE_1 = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(THRU_DATE_OF_SERVICE_1)=1,THRU_DATE_OF_SERVICE_1,'19000101') as Date), 101),'yyyyMMdd'),
		FROM_DATE_OF_SERVICE_2 = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(FROM_DATE_OF_SERVICE_2)=1,FROM_DATE_OF_SERVICE_2,'19000101') as Date), 101),'yyyyMMdd'),
		THRU_DATE_OF_SERVICE_2 = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(THRU_DATE_OF_SERVICE_2)=1,THRU_DATE_OF_SERVICE_2,'19000101') as Date), 101),'yyyyMMdd'),
		FROM_DATE_OF_SERVICE_3 = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(FROM_DATE_OF_SERVICE_3)=1,FROM_DATE_OF_SERVICE_3,'19000101') as Date), 101),'yyyyMMdd'),
		THRU_DATE_OF_SERVICE_3 = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(THRU_DATE_OF_SERVICE_3)=1,THRU_DATE_OF_SERVICE_3,'19000101') as Date), 101),'yyyyMMdd'),
		FROM_DATE_OF_SERVICE_4 = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(FROM_DATE_OF_SERVICE_4)=1,FROM_DATE_OF_SERVICE_4,'19000101') as Date), 101),'yyyyMMdd'),
		THRU_DATE_OF_SERVICE_4 = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(THRU_DATE_OF_SERVICE_4)=1,THRU_DATE_OF_SERVICE_4,'19000101') as Date), 101),'yyyyMMdd'),
		FROM_DATE_OF_SERVICE_5 = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(FROM_DATE_OF_SERVICE_5)=1,FROM_DATE_OF_SERVICE_5,'19000101') as Date), 101),'yyyyMMdd'),
		THRU_DATE_OF_SERVICE_5 = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(THRU_DATE_OF_SERVICE_5)=1,THRU_DATE_OF_SERVICE_5,'19000101') as Date), 101),'yyyyMMdd'),
		FROM_DATE_OF_SERVICE_6 = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(FROM_DATE_OF_SERVICE_6)=1,FROM_DATE_OF_SERVICE_6,'19000101') as Date), 101),'yyyyMMdd'),
		THRU_DATE_OF_SERVICE_6 = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(THRU_DATE_OF_SERVICE_6)=1,THRU_DATE_OF_SERVICE_6,'19000101') as Date), 101),'yyyyMMdd'),
		FROM_DATE_OF_SERVICE_7 = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(FROM_DATE_OF_SERVICE_7)=1,FROM_DATE_OF_SERVICE_7,'19000101') as Date), 101),'yyyyMMdd'),
		THRU_DATE_OF_SERVICE_7 = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(THRU_DATE_OF_SERVICE_7)=1,THRU_DATE_OF_SERVICE_7,'19000101') as Date), 101),'yyyyMMdd'),
		FROM_DATE_OF_SERVICE_8 = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(FROM_DATE_OF_SERVICE_8)=1,FROM_DATE_OF_SERVICE_8,'19000101') as Date), 101),'yyyyMMdd'),
		THRU_DATE_OF_SERVICE_8 = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(THRU_DATE_OF_SERVICE_8)=1,THRU_DATE_OF_SERVICE_8,'19000101') as Date), 101),'yyyyMMdd'),
		PLAN_EFFECTIVE_DATE = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(PLAN_EFFECTIVE_DATE)=1,PLAN_EFFECTIVE_DATE,'19000101') as Date), 101),'yyyyMMdd'),
		CLAIM_CNVDATE = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(CLAIM_CNVDATE)=1,CLAIM_CNVDATE,'19000101') as Date), 101),'yyyyMMdd'),
		PMCS_DUE_DATE = FORMAT(CONVERT(Date,CAST(IIF(ISDATE(PMCS_DUE_DATE)=1,PMCS_DUE_DATE,'19000101') as Date), 101),'yyyyMMdd')

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