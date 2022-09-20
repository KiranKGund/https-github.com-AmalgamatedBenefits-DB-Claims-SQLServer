-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERT_MFELDOACTIVECLAIMS] 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION; 

BEGIN TRY  

Declare  @mfcCount As integer;

select @mfcCount = count(1)  from claims.DBO.MFEldoActiveClaims;

IF  @mfcCount <> 0 
	Delete from claims.DBO.EldoActiveClaims;      

insert into claims.DBO.EldoActiveClaims (
JobNo,
TrackNumber,
WorkFlowQueue,
UrgentFlag,
HireDate,
JobType,
Literal,
Claim_No,
DateEnteredInQueue,
TimeEnteredInQueue,
EXType,
ReasonCode,
ImageName,
UserId,
StartDate,
StartTime,
EndDate, 
EndTime, 
Status,
MiscInformation,
RuleKey, 
Program,
DueByDate,
DueByTime,
CLMForm,
TotalClaim,
INTRM,
UserNote,
UserNoteDateEntered,
UserNoteTimeEntered,
OrigUrgentFlag,
EEXType,
Complete,
ScannedIMGS,
PreviousQueue,
ManualTransfer,
ClaimsStatus,
QueueAccess,
CSIKey,
CSIGroup,
CSIType,
CSIEntityType,
Filler
) 

SELECT
t.JobNo,
rtrim(ltrim(t.TrackNumber)),
t.WorkFlowQueue,
t.UrgentFlag,
--CASE CLAIMS.ISDATECHECK(t.HireDate) when 0 then null else case ltrim(t.HireDate) when '' then null when ' ' then null else date(substr(t.HireDate,1,4)||'-' ||substr(t.HireDate,5,2)||'-' ||substr(t.HireDate,7,2)) end END,
dbo.ufn_Convert_to_Date(t.HireDate),
t.JobType,
t.Literal,
t.[Key],
--CASE CLAIMS.ISDATECHECK(t.DateEnteredInQueue) when 0 then null else case ltrim(t.DateEnteredInQueue) when '' then null when ' ' then null else date(substr(t.DateEnteredInQueue,1,4)||'-' ||substr(t.DateEnteredInQueue,5,2)||'-' ||substr(t.DateEnteredInQueue,7,2)) end END,
dbo.ufn_Convert_to_Date(t.DateEnteredInQueue),
t.TimeEnteredInQueue,
t.EXType,
t.ReasonCode,
t.ImageName,
t.UserId,
--CASE CLAIMS.ISDATECHECK(t.StartDate) when 0 then null else case ltrim(t.StartDate) when '' then null when ' ' then null else date(substr(t.StartDate,1,4)||'-' ||substr(t.StartDate,5,2)||'-' ||substr(t.StartDate,7,2)) end END,
dbo.ufn_Convert_to_Date(t.StartDate),
t.StartTime,
--CASE CLAIMS.ISDATECHECK(t.EndDate) when 0 then null else case ltrim(t.EndDate) when '' then null when ' ' then null else date(substr(t.EndDate,1,4)||'-' ||substr(t.EndDate,5,2)||'-' ||substr(t.EndDate,7,2)) end END,
dbo.ufn_Convert_to_Date(t.EndDate),
t.EndTime, 
t.Status,
t.MiscInformation,
t.RuleKey, 
t.Program,
--CASE CLAIMS.ISDATECHECK(t.DueByDate) when 0 then null else case ltrim(t.DueByDate) when '' then null when ' ' then null else date(substr(t.DueByDate,1,4)||'-' ||substr(t.DueByDate,5,2)||'-' ||substr(t.DueByDate,7,2)) end END,
dbo.ufn_Convert_to_Date(t.DueByDate),
t.DueByTime,
t.CLMForm,
--case rtrim(t.TotalClaim) when '' then Null else decimal(rtrim(t.TotalClaim),11,2) end,
dbo.ufn_Convert_to_Decimal(t.TotalClaim),
t.INTRM,
t.UserNote,
--CASE CLAIMS.ISDATECHECK(t.UserNoteDateEntered) when 0 then null else case ltrim(t.UserNoteDateEntered) when '' then null when ' ' then null else date(substr(t.UserNoteDateEntered,1,4)||'-' ||substr(t.UserNoteDateEntered,5,2)||'-' ||substr(t.UserNoteDateEntered,7,2)) end END,
dbo.ufn_Convert_to_Date(t.UserNoteDateEntered),
t.UserNoteTimeEntered,
t.UrgentFlag,
t.EEXType,
t.Complete,
t.ScannedIMGS,
t.PreviousQueue,
t.ManualTransfer,
t.ClaimsStatus,
t.QueueAccess,
t.CSIKey,
t.CSIGroup,
t.CSIType,
t.CSIEntityType,
t.Filler
from claims.dbo.MFEldoActiveClaims t ;
 

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

END CATCH; 

IF @@TRANCOUNT > 0  

    COMMIT TRANSACTION;  
  
END