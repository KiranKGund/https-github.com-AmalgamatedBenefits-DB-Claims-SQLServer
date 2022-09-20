-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERT_MFELDODEPELIG] 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION; 

BEGIN TRY  

insert into claims.dbo.eldodepelig(                                              
policy_underwriter_number,                                                       
group_number,                                                                    
employee_ssn,                                                                    
dependent_sequence_number,                                                       
effective_date_of_eligibility,                                                   
employee_status,                                                                 
coverage_selected_1,                                                             
coverage_selected_2,                                                             
coverage_selected_3,                                                             
coverage_selected_4,                                                             
coverage_selected_5,                                                             
coverage_selected_6,                                                             
coverage_selected_7,                                                             
coverage_selected_8,                                                             
coverage_selected_9,                                                             
coverage_selected_10,                                                            
coverage_selected_11,                                                            
coverage_selected_12,                                                            
coverage_selected_13,                                                            
coverage_selected_14,                                                            
coverage_selected_15,  
benefit_1,    
benefit_2,    
benefit_3,    
benefit_4,    
benefit_5,    
benefit_6,    
benefit_7,                                           
coverage_ends_date,                                                              
product_ind_1,                                                                   
product_ind_2,                                                                   
product_ind_3,                                                                   
product_ind_4,                                                                   
product_ind_5,                                                                   
product_ind_6,                                                                   
product_ind_7,                                                                   
product_ind_8,                                                                   
product_ind_9,                                                                   
product_ind_10,                                                                  
product_ind_11,                                                                  
product_ind_12,                                                                  
product_ind_13,                                                                  
product_ind_14,                                                                  
product_ind_15,                                                                  
cob_1,                                                                           
cob_2,                                                                           
cob_3,                                                                           
cob_4,                                                                           
cob_5,                                                                           
pend_all_claims,                                                                 
pend_reason_code,                                                                
cob_type_1,                                                                      
cob_type_2,                                                                      
cob_type_3,                                                                      
cob_type_4,                                                                      
cob_type_5,                                         
pcp_providers_selected_1,                                                        
pcp_providers_selected_2,                                                        
other_insurance_carrier_1,                                                       
other_insurance_carrier_2,                                                       
other_insurance_carrier_3,                                                       
other_insurance_carrier_4,                                                       
other_insurance_carrier_5,                                                       
letter_pending_claim_1,                                                          
letter_pending_claim_2,                                                          
letter_pending_claim_3,                                                          
letter_pending_claim_4,                                                          
letter_pending_claim_5,                                                          
lasered_dependent,                                                               
lasered_amount,                                                                  
filler_2 ,
group_termination                                                                        
) 

select distinct
t.policy_underwriter_number,
t.group_number,
t.employee_ssn,
--decimal(t.dependent_sequence_number,2,0),
dbo.ufn_Convert_to_Decimal(t.dependent_sequence_number),
--Case when claims.isdatecheck(t.effective_date_of_eligibility) = 0 then null else case ltrim(t.effective_date_of_eligibility) when '' then null when ' ' then null else date(substr(t.effective_date_of_eligibility,1,4) || '-' || substr(t.effective_date_of_eligibility,5,2) || '-' || substr(t.effective_date_of_eligibility,7,2)) end end,
dbo.ufn_Convert_to_Date(t.effective_date_of_eligibility),
t.employee_status,
t.coverage_selected_1,
t.coverage_selected_2,
t.coverage_selected_3,
t.coverage_selected_4,
t.coverage_selected_5,
t.coverage_selected_6,
t.coverage_selected_7,
t.coverage_selected_8,
t.coverage_selected_9,
t.coverage_selected_10,
t.coverage_selected_11,
t.coverage_selected_12,
t.coverage_selected_13,
t.coverage_selected_14,
t.coverage_selected_15,
t.benefit_1,
t.benefit_2,
t.benefit_3,
t.benefit_4,
t.benefit_5,
t.benefit_6,
t.benefit_7,
--Case when CLAIMS.ISDATECHECK (t.coverage_ends_date) = 0 then null else  case ltrim(t.coverage_ends_date) when '' then null when ' ' then null else date(substr(t.coverage_ends_date,1,4) || '-' || substr(t.coverage_ends_date,5,2) || '-' || substr(t.coverage_ends_date,7,2)) end end,
dbo.ufn_Convert_to_Date(t.coverage_ends_date),
t.product_ind_1,
t.product_ind_2,
t.product_ind_3,
t.product_ind_4,
t.product_ind_5,
t.product_ind_6,
t.product_ind_7,
t.product_ind_8,
t.product_ind_9,
t.product_ind_10,
t.product_ind_11,
t.product_ind_12,
t.product_ind_13,
t.product_ind_14,
t.product_ind_15,
t.cob_1,
t.cob_2,
t.cob_3,
t.cob_4,
t.cob_5,
t.pend_all_claims,
t.pend_reason_code,
t.cob_type_1,
t.cob_type_2,
t.cob_type_3,
t.cob_type_4,
t.cob_type_5,
t.pcp_providers_selected_1,
t.pcp_providers_selected_2,
t.other_insurance_carrier_1,
t.other_insurance_carrier_2,
t.other_insurance_carrier_3,
t.other_insurance_carrier_4,
t.other_insurance_carrier_5,
t.letter_pending_claim_1,
t.letter_pending_claim_2,
t.letter_pending_claim_3,
t.letter_pending_claim_4,
t.letter_pending_claim_5,
t.lasered_dependent,
t.lasered_amount,
t.filler_2 ,
t.group_termination
from claims.dbo.mfeldodepelignew t;  

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