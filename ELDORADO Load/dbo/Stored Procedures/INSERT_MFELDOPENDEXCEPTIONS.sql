﻿-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERT_MFELDOPENDEXCEPTIONS] 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION; 

BEGIN TRY  

INSERT INTO claims.dbo.eldopendexceptions  ( Policy_Underwriter, group_number, claim_number, mcs_claim_number, num_pended_reason, pended_reason_code, pend_type, hp_filler1) 




































































































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