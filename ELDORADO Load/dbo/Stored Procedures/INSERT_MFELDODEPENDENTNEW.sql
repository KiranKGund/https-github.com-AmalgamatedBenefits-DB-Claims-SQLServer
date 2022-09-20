-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERT_MFELDODEPENDENTNEW] 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION; 

BEGIN TRY  

insert into claims.DBO.eldodependent(
policy_underwriter_number,
group_number,
employee_ssn,
dependent_sequence_number,
date_last_changed,
change_by,
dependent_last_name,
dependent_first_name,
dependent_middle_initial,
dependent_name_suffix,
dependent_name,
address_line_1,
address_line_2,
city,
state,
zip,
home_phone,
other_phone,
date_of_birth,
sex,
relationship_to_employee,
dependent_ssn,
name_of_school,
semester_hours,
date_dependent_first_enrolled,
special_codes,
user_defined_alternate_id,
user_comment_line_1,
user_comment_line_2,
pcs_card_select,
pcs_card_reason,
pcs_card_complete_date,
taken_over,
medically_underwritten,
pay_check_to_employee,
mcs_id,
mcs_nbr,
expedite_claim,
medicare_indicator,
hcra_county,
hcra_effective_date,
dep_handicap,
dep_filler,
DEP_CERT_NUMBER,
EMP_EOB)

select
t.policy_underwriter_number,
t.group_number,
t.employee_ssn,
--decimal(t.dependent_sequence_number,2,0),
dbo.ufn_Convert_to_Decimal(t.dependent_sequence_number),
--case Claims.ISDateCheck(t.date_last_changed) when 0 then Null else Case ltrim(t.date_last_changed) when '' then null when ' ' then null else date(substr(t.date_last_changed,1,4) || '-' || substr(t.date_last_changed,5,2) || '-' || substr(t.date_last_changed,7,2)) end end ,
dbo.ufn_Convert_to_Date(t.date_last_changed),
t.change_by,
t.dependent_last_name,
t.dependent_first_name,
t.dependent_middle_initial,
t.dependent_name_suffix,
t.dependent_name,
t.address_line_1,
t.address_line_2,
t.city,
t.state,
t.zip,
t.home_phone,
t.other_phone,
--case Claims.ISDateCheck(t.date_of_birth) when 0 then Null else Case  ltrim(t.date_of_birth) when '' then null when ' ' then null else date(substr(t.date_of_birth,1,4) || '-' || substr(t.date_of_birth,5,2) || '-' || substr(t.date_of_birth,7,2)) end end,
dbo.ufn_Convert_to_Date(t.date_of_birth),
t.sex,
t.relationship_to_employee,
t.dependent_ssn,
t.name_of_school,
t.semester_hours,
--case  Claims.ISDateCheck(t.date_dependent_first_enrolled) when 0 then Null else Case  ltrim(t.date_dependent_first_enrolled) when '' then null when ' ' then null else date(substr(t.date_dependent_first_enrolled,1,4) || '-' || substr(t.date_dependent_first_enrolled,5,2) || '-' || substr(t.date_dependent_first_enrolled,7,2)) end end ,
dbo.ufn_Convert_to_Date(t.date_dependent_first_enrolled),
t.special_codes,
t.user_defined_alternate_id,
t.user_comment_line_1,
t.user_comment_line_2,
t.pcs_card_select,
t.pcs_card_reason,
--case  Claims.ISDateCheck(t.pcs_card_complete_date) when 0 then Null else Case  ltrim(t.pcs_card_complete_date) when '' then null when ' ' then null else date(substr(t.pcs_card_complete_date,1,4) || '-' || substr(t.pcs_card_complete_date,5,2) || '-' || substr(t.pcs_card_complete_date,7,2)) end end,
dbo.ufn_Convert_to_Date(t.pcs_card_complete_date),
t.taken_over,
t.medically_underwritten,
t.pay_check_to_employee,
t.mcs_id,
t.mcs_nbr,
t.expedite_claim,
t.medicare_indicator,
t.hcra_county,
--case Claims.ISDateCheck(t.hcra_effective_date) when 0 then Null else Case  ltrim(t.hcra_effective_date) when '' then null when ' ' then null else date(substr(t.hcra_effective_date,1,4) || '-' || substr(t.hcra_effective_date,5,2) || '-' || substr(t.hcra_effective_date,7,2)) end end,
dbo.ufn_Convert_to_Date(t.hcra_effective_date),
t.dep_handicap,
t.dep_filler,
t.DEP_CERT_NUMBER,
t.EMP_EOB
from
CLAIMS.DBO.mfELDODEPENDENTNEW1 t ;  

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