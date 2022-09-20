-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BCP_LOAD_MFELDOPAIDNEW]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- TEST Commnet

	SET NOCOUNT ON;

BEGIN TRANSACTION; 

BEGIN TRY  

DECLARE @cmd varchar(2000)
DECLARE @RECID as Integer
DECLARE @STARTTIME as DateTime
DECLARE @ENDTime as DateTime
DECLARE @RECCOUNT as Integer

insert into claims.dbo.LOADREPORTING values('1','MFELDOPAIDNEW_BCP','MFELDOPAIDNEW',0,0,0,'STARTED','',Getdate(),Getdate(),Current_Timestamp,null,0);

SELECT @RECID = IDENT_CURRENT ('LOADREPORTING') 

SET @STARTTIME = GetDate()

set @cmd = 'BCP.EXE CLAIMS.DBO.MFELDOPAIDNEW IN C:\Temp\Kiran\DataFile\clm_daily.TXT -f C:\Temp\Kiran\FormatFile\MFELDOPAIDNEW.fmt -o C:\Temp\Kiran\ErrorFile\\MFELDOPAIDNEW.out -e C:\Temp\Kiran\ErrorFile\MFELDOPAIDNEW.err -T'
select @cmd -- + '...'

EXEC master.dbo.xp_cmdShell @cmd


END TRY  
BEGIN CATCH  
   SELECT   
        ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_SEVERITY() AS ErrorSeverity  
        ,ERROR_STATE() AS ErrorState  
        ,ERROR_PROCEDURE() AS ErrorProcedure  
        ,ERROR_LINE() AS ErrorLine  
        ,ERROR_MESSAGE() AS ErrorMessage;  
  
	UPDATE claims.dbo.LOADREPORTING 
	SET STATUS = 'ERROR',
	ETIME = GetDate(),
	--MF_LOAD_COUNT = @@ROWCOUNT,
	DUR = datediff(MILLISECOND, @STARTTIME,@ENDTime),
	MF_LOAD_COUNT = (Select Count(*) FROM MFELDOPAIDNEW),
	STATUS_MESSAGE = ( SELECT   ERROR_NUMBER()  + ERROR_SEVERITY() + ERROR_STATE()+ ERROR_PROCEDURE() + ERROR_LINE() + ERROR_MESSAGE())
	WHERE REC_NUM = @RECID

    IF @@TRANCOUNT > 0  
        ROLLBACK TRANSACTION;  

END CATCH; 

IF @@TRANCOUNT > 0  
    COMMIT TRANSACTION;  

	SET @ENDTime = GetDate()

	UPDATE claims.dbo.LOADREPORTING 
	SET STATUS = 'COMPLETED',
	ETIME = GetDate(),
	--MF_LOAD_COUNT = @@ROWCOUNT,
	DUR = datediff(MILLISECOND, @STARTTIME,@ENDTime),
	MF_LOAD_COUNT = (Select Count(*) FROM MFELDOPAIDNEW)
	WHERE REC_NUM = @RECID

  
END



