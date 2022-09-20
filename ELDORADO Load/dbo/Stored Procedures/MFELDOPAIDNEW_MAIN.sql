-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MFELDOPAIDNEW_MAIN] 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

DECLARE @Return_Val int
/* -- OPTION 1
IF [dbo].[ufn_Check_If_Process_Completed]('MFELDOPAIDNEW_BCP')= 0
	Execute @Return_Val = [dbo].[BCP_LOAD_MFELDOPAIDNEW]
ELSE
	Return 

DECLARE @Return_Val int
IF [dbo].[ufn_Check_If_Process_Completed]('MFELDOPAIDNEW_UPD')= 0
	Execute @Return_Val = [dbo].[UPDATE_MFELDOPAIDNEW]
ELSE
	Return 

DECLARE @Return_Val int
IF [dbo].[ufn_Check_If_Process_Completed]('MFELDOPAIDNEW_INS')= 0
	Execute @Return_Val = [dbo].[INSERT_MFELDOPAIDNEW]
ELSE
	Return 

	*/
-- OPTION 2
IF [dbo].[ufn_Check_If_Process_Completed]('MFELDOPAIDNEW_BCP')= 0
	Execute @Return_Val = [dbo].[ELDOLOAD_BCP_MASTER] 'MFELDOPAIDNEW_BCP'
ELSE
	Return 


IF [dbo].[ufn_Check_If_Process_Completed]('MFELDOPAIDNEW_UPD')= 0
	EXECUTE @Return_Val = [dbo].[ELDOLOAD_SQLCMD_MASTER] 'MFELDOPAIDNEW_UPD'
ELSE
	Return 

IF [dbo].[ufn_Check_If_Process_Completed]('MFELDOPAIDNEW_INS')= 0
	EXECUTE @Return_Val = [dbo].[ELDOLOAD_SQLCMD_MASTER] 'MFELDOPAIDNEW_INS'
ELSE
	Return 

--DECLARE @Return_Val int
IF [dbo].[ufn_Check_If_Process_Completed]('MFELDOMCSEXCEPTIONS_BCP')= 0
	Execute @Return_Val = [dbo].[ELDOLOAD_BCP_MASTER] 'MFELDOMCSEXCEPTIONS_BCP'
ELSE
	Return 

--DECLARE @Return_Val int
IF [dbo].[ufn_Check_If_Process_Completed]('MFELDOMCSEXCEPTIONS_INS')= 0
	Execute @Return_Val = [dbo].[ELDOLOAD_SQLCMD_MASTER] 'MFELDOMCSEXCEPTIONS_INS'
ELSE
	Return 

--DECLARE @Return_Val int
IF [dbo].[ufn_Check_If_Process_Completed]('MFELDOACTIVECLAIMS_BCP')= 0
	Execute @Return_Val = [dbo].[ELDOLOAD_BCP_MASTER] 'MFELDOACTIVECLAIMS_BCP'
ELSE
	Return 

--DECLARE @Return_Val int
IF [dbo].[ufn_Check_If_Process_Completed]('MFELDOACTIVECLAIMS_INS')= 0
	Execute @Return_Val = [dbo].[ELDOLOAD_SQLCMD_MASTER] 'MFELDOACTIVECLAIMS_INS'
ELSE
	Return 

--DECLARE @Return_Val int
IF [dbo].[ufn_Check_If_Process_Completed]('MFELDODISBPAID_BCP')= 0
	Execute @Return_Val = [dbo].[ELDOLOAD_BCP_MASTER] 'MFELDODISBPAID_BCP'
ELSE
	Return 

--DECLARE @Return_Val int
IF [dbo].[ufn_Check_If_Process_Completed]('MFELDODISBPAID_INS')= 0
	Execute @Return_Val = [dbo].[ELDOLOAD_SQLCMD_MASTER] 'MFELDODISBPAID_INS'
ELSE
	Return 

--DECLARE @Return_Val int
IF [dbo].[ufn_Check_If_Process_Completed]('MFELDODISBPEND_BCP')= 0
	Execute @Return_Val = [dbo].[ELDOLOAD_BCP_MASTER] 'MFELDODISBPEND_BCP'
ELSE
	Return 

--DECLARE @Return_Val int
IF [dbo].[ufn_Check_If_Process_Completed]('MFELDODISBPEND_INS')= 0
	Execute @Return_Val = [dbo].[ELDOLOAD_SQLCMD_MASTER] 'MFELDODISBPEND_INS'
ELSE
	Return 

--DECLARE @Return_Val int
IF [dbo].[ufn_Check_If_Process_Completed]('MFELDOPENDEXCEPTIONS_BCP')= 0
	Execute @Return_Val = [dbo].[ELDOLOAD_BCP_MASTER] 'MFELDOPENDEXCEPTIONS_BCP'
ELSE
	Return 

--DECLARE @Return_Val int
IF [dbo].[ufn_Check_If_Process_Completed]('MFELDOPENDEXCEPTIONS_INS')= 0
	Execute @Return_Val = [dbo].[ELDOLOAD_SQLCMD_MASTER] 'MFELDOPENDEXCEPTIONS_INS'
ELSE
	Return 

--DECLARE @Return_Val int
IF [dbo].[ufn_Check_If_Process_Completed]('MFELDOMCSCLAIMSNEW_BCP')= 0
	Execute @Return_Val = [dbo].[ELDOLOAD_BCP_MASTER] 'MFELDOMCSCLAIMSNEW_BCP'
ELSE
	Return 


--DECLARE @Return_Val int
IF [dbo].[ufn_Check_If_Process_Completed]('MFELDOMCSCLMLINESNEW_BCP')= 0
	Execute @Return_Val = [dbo].[ELDOLOAD_BCP_MASTER] 'MFELDOMCSCLMLINESNEW_BCP'
ELSE
	Return 

--DECLARE @Return_Val int
IF [dbo].[ufn_Check_If_Process_Completed]('MFELDOEMPLOYEENEW_BCP')= 0
	Execute @Return_Val = [dbo].[ELDOLOAD_BCP_MASTER] 'MFELDOEMPLOYEENEW_BCP'
ELSE
	Return 

--DECLARE @Return_Val int
IF [dbo].[ufn_Check_If_Process_Completed]('MFELDOEMPLOYEENEW_INS')= 0
	Execute @Return_Val = [dbo].[ELDOLOAD_SQLCMD_MASTER] 'MFELDOEMPLOYEENEW_INS'
ELSE
	Return 

--DECLARE @Return_Val int
IF [dbo].[ufn_Check_If_Process_Completed]('MFELDOEMPELIGNEW_BCP')= 0
	Execute @Return_Val = [dbo].[ELDOLOAD_BCP_MASTER] 'MFELDOEMPELIGNEW_BCP'
ELSE
	Return 

--DECLARE @Return_Val int
IF [dbo].[ufn_Check_If_Process_Completed]('MFELDODEPENDENTNEW_BCP')= 0
	Execute @Return_Val = [dbo].[ELDOLOAD_BCP_MASTER] 'MFELDODEPENDENTNEW_BCP'
ELSE
	Return 
	
--DECLARE @Return_Val int
IF [dbo].[ufn_Check_If_Process_Completed]('MFELDODEPELIG_BCP')= 0
	Execute @Return_Val = [dbo].[ELDOLOAD_BCP_MASTER] 'MFELDODEPELIG_BCP'
ELSE
	Return 
	
--DECLARE @Return_Val int
IF [dbo].[ufn_Check_If_Process_Completed]('MFELDOPENDNEW_BCP')= 0
	Execute @Return_Val = [dbo].[ELDOLOAD_BCP_MASTER] 'MFELDOPENDNEW_BCP'
ELSE
	Return 
	
END
