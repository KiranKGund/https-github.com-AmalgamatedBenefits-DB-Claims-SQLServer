-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERT_MFELDOEMPLOYEENEW] 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION; 

BEGIN TRY  

insert into claims.dbo.eldoemployee(
Policy_Underwriter_Number, 
Group_Number, 
Employee_SSN, 
Date_Last_Changed, 
Change_by, 
Employee_Certificate_Number, 
Employee_Last_Name, 
Employee_First_Name, 
Employee_Middle_Initial, 
Employee_Name_Suffix, 
Employee_Name, 
Address_Line_1, 
Address_Line_2, 
City, 
State, 
ZIP_Code, 
Procedure_Location_Code, 
Home_Phone_Number, 
Work_Phone_Number, 
Department_Number, 
Sex, 
Date_of_Birth, 
Hired_Date, 
Date_of_First_Enrollment, 
Leaving_Reason, 
Last_Billing_Date, 
Number_of_Dependents, 
Number_of_Dependents_on_File, 
XTRA_1, 
Special_Codes, 
Notes_1, 
Notes_2, 
Beneficiary_Name, 
Lifetime_Pension_Credits, 
Pension_Yr_Lftime_Cr, 
Xtra_2, 
Premiums_paid_until, 
PCS_Card_Select, 
PCS_Card_Reason, 
PCS_Card_Complete_Date, 
Take_over_Status, 
Medically_Underwritten, 
COBRA_Record_for_Employee, 
Maried_OR_Single, 
Date_Married, 
ID_Card_Select, 
ID_Card_Format, 
ID_Card_Run_Date, 
Label_Select, 
Label_Format, 
Label_Run_Date, 
Certificate_Select, 
Certificate_Card_Format, 
Certificate_Run_Date, 
Number_checks_written, 
Dollar_Value_of_checks, 
RPE_ID, 
RPE_master_id, 
Converted_EE, 
Pd_Thru_Date, 
Expedite_Claim, 
Financial_Category, 
MEDICARE_INDICATOR, 
HCRA_COUNTY, 
HIPAA_Certificate_Select, 
HIPAA_Certificate_Card_Format, 
HIPAA_Certificate_Run_Date, 
HCRA_Eff_Date,
EMP_HANDICAP,
FSA_CARD,
FSA_DATE_EXTRACTED,
LFSA_CARD,
LFSA_DATE_EXTRACTED,
HRA_CARD,
HRA_DATE_EXTRACTED
)

select distinct
t.Policy_Underwriter_Number, 
t.Group_Number, 
t.Employee_SSN,
--CASE WHEN CLAIMS.ISDATECHECK ( T.Date_Last_Changed) = 0 THEN NULL ELSE date(substr(t.Date_Last_Changed,1,4)||'-' ||substr(t.Date_Last_Changed,5,2)||'-' ||substr(t.Date_Last_Changed,7,2))  end,  
dbo.ufn_Convert_to_Date(T.Date_Last_Changed),
t.Change_by, 
ltrim(t.Employee_Certificate_Number), 
t.Employee_Last_Name, 
t.Employee_First_Name, 
t.Employee_Middle_Initial, 
t.Employee_Name_Suffix, 
t.Employee_Name, 
t.Address_Line_1, 
t.Address_Line_2, 
t.City, 
t.State, 
t.ZIP_Code, 
t.Procedure_Location_Code, 
t.Home_Phone_Number, 
t.Work_Phone_Number, 
t.Department_Number, 
t.Sex, 
--CASE WHEN CLAIMS.ISDATECHECK ( T.Date_of_Birth) = 0 THEN NULL ELSE date(substr(t.Date_of_Birth,1,4)||'-' ||substr(t.Date_of_Birth,5,2)||'-' ||substr(t.Date_of_Birth,7,2)) end,  
dbo.ufn_Convert_to_Date(T.Date_of_Birth),
--CASE WHEN CLAIMS.ISDATECHECK ( T.Hired_Date) = 0 THEN NULL ELSE date(substr(t.Hired_Date,1,4)||'-' ||substr(t.Hired_Date,5,2)||'-' ||substr(t.Hired_Date,7,2)) end,  
dbo.ufn_Convert_to_Date(T.Hired_Date),
--CASE WHEN CLAIMS.ISDATECHECK ( T.Date_of_First_Enrollment) = 0 THEN NULL ELSE date(substr(t.Date_of_First_Enrollment,1,4)||'-' ||substr(t.Date_of_First_Enrollment,5,2)||'-' ||substr(t.Date_of_First_Enrollment,7,2)) end,  
dbo.ufn_Convert_to_Date(T.Date_of_First_Enrollment),
t.Leaving_Reason, 
--CASE WHEN CLAIMS.ISDATECHECK ( T.Last_Billing_Date) = 0 THEN NULL ELSE date(substr(t.Last_Billing_Date,1,4)||'-' ||substr(t.Last_Billing_Date,5,2)||'-' ||substr(t.Last_Billing_Date,7,2)) end,  
dbo.ufn_Convert_to_Date(T.Last_Billing_Date),
t.Number_of_Dependents, 
t.Number_of_Dependents_on_File, 
t.XTRA_1, 
t.Special_Codes, 
t.Notes_1, 
t.Notes_2, 
t.Beneficiary_Name, 
t.Lifetime_Pension_Credits, 
t.Pension_Yr_Lftime_Cr, 
t.Xtra_2, 
--CASE WHEN CLAIMS.ISDATECHECK ( T.Premiums_paid_until) = 0 THEN NULL ELSE date(substr(t.Premiums_paid_until,1,4)||'-' ||substr(t.Premiums_paid_until,5,2)||'-' ||substr(t.Premiums_paid_until,7,2)) end,  
dbo.ufn_Convert_to_Date(T.Premiums_paid_until),
t.PCS_Card_Select, 
t.PCS_Card_Reason, 
--CASE WHEN CLAIMS.ISDATECHECK ( T.PCS_Card_Complete_Date) = 0 THEN NULL ELSE date(substr(t.PCS_Card_Complete_Date,1,4)||'-' ||substr(t.PCS_Card_Complete_Date,5,2)||'-' ||substr(t.PCS_Card_Complete_Date,7,2)) end,  
dbo.ufn_Convert_to_Date(T.PCS_Card_Complete_Date),
t.Take_over_Status, 
t.Medically_Underwritten, 
t.COBRA_Record_for_Employee, 
t.Maried_OR_Single, 
--CASE WHEN CLAIMS.ISDATECHECK ( T.Date_Married) = 0 THEN NULL ELSE date(substr(t.Date_Married,1,4)||'-' ||substr(t.Date_Married,5,2)||'-' ||substr(t.Date_Married,7,2)) end,  
dbo.ufn_Convert_to_Date(T.Date_Married),
t.ID_Card_Select, 
t.ID_Card_Format, 
--CASE WHEN CLAIMS.ISDATECHECK ( T.ID_Card_Run_Date) = 0 THEN NULL ELSE date(substr(t.ID_Card_Run_Date,1,4)||'-' ||substr(t.ID_Card_Run_Date,5,2)||'-' ||substr(t.ID_Card_Run_Date,7,2)) end,  
dbo.ufn_Convert_to_Date(T.ID_Card_Run_Date),
t.Label_Select, 
t.Label_Format, 
--CASE WHEN CLAIMS.ISDATECHECK ( T.Label_Run_Date) = 0 THEN NULL ELSE date(substr(t.Label_Run_Date,1,4)||'-' ||substr(t.Label_Run_Date,5,2)||'-' ||substr(t.Label_Run_Date,7,2)) end,  
dbo.ufn_Convert_to_Date(T.Label_Run_Date),
t.Certificate_Select, 
t.Certificate_Card_Format, 
--CASE WHEN CLAIMS.ISDATECHECK ( T.Certificate_Run_Date) = 0 THEN NULL ELSE date(substr(t.Certificate_Run_Date,1,4)||'-' ||substr(t.Certificate_Run_Date,5,2)||'-' ||substr(t.Certificate_Run_Date,7,2)) end,  
dbo.ufn_Convert_to_Date(T.Certificate_Run_Date),
t.Number_checks_written, 
t.Dollar_Value_of_checks, 
t.RPE_ID, 
t.RPE_master_id, 
t.Converted_EE, 
--CASE WHEN CLAIMS.ISDATECHECK ( T.Pd_Thru_Date) = 0 THEN NULL ELSE date(substr(t.Pd_Thru_Date,1,4)||'-' ||substr(t.Pd_Thru_Date,5,2)||'-' ||substr(t.Pd_Thru_Date,7,2)) end,  
dbo.ufn_Convert_to_Date(T.Pd_Thru_Date),
t.Expedite_Claim, 
t.Financial_Category, 
t.MEDICARE_INDICATOR, 
t.HCRA_COUNTY, 
t.HIPAA_Certificate_Select, 
t.HIPAA_Certificate_Card_Format, 
--CASE WHEN CLAIMS.ISDATECHECK ( T.HIPAA_Certificate_Run_Date) = 0 THEN NULL ELSE date(substr(t.HIPAA_Certificate_Run_Date,1,4)||'-' ||substr(t.HIPAA_Certificate_Run_Date,5,2)||'-' ||substr(t.HIPAA_Certificate_Run_Date,7,2)) end,  
dbo.ufn_Convert_to_Date(T.HIPAA_Certificate_Run_Date),
--CASE WHEN CLAIMS.ISDATECHECK ( T.HCRA_Eff_Date) = 0 THEN NULL ELSE date(substr(t.HCRA_Eff_Date,1,4)||'-' ||substr(t.HCRA_Eff_Date,5,2)||'-' ||substr(t.HCRA_Eff_Date,7,2)) end,  
dbo.ufn_Convert_to_Date(T.HCRA_Eff_Date),
t.EMP_HANDICAP ,
FSA_CARD,
--CASE WHEN CLAIMS.ISDATECHECK ( T.FSA_DATE_EXTRACTED) =0 THEN NULL ELSE date(substr(t.FSA_DATE_EXTRACTED,1,4)||'-' ||substr(t.FSA_DATE_EXTRACTED,5,2)||'-' ||substr(t.FSA_DATE_EXTRACTED,7,2)) end,  
dbo.ufn_Convert_to_Date(T.FSA_DATE_EXTRACTED),
LFSA_CARD,  
--CASE WHEN CLAIMS.ISDATECHECK ( T.LFSA_DATE_EXTRACTED) = 0 THEN NULL ELSE date(substr(t.LFSA_DATE_EXTRACTED,1,4)||'-' ||substr(t.LFSA_DATE_EXTRACTED,5,2)||'-' ||substr(t.LFSA_DATE_EXTRACTED,7,2)) end,  
dbo.ufn_Convert_to_Date(T.LFSA_DATE_EXTRACTED),
HRA_CARD,
--CASE WHEN CLAIMS.ISDATECHECK ( T.HRA_DATE_EXTRACTED) = 0 THEN NULL ELSE date(substr(t.HRA_DATE_EXTRACTED,1,4)||'-' ||substr(t.HRA_DATE_EXTRACTED,5,2)||'-' ||substr(t.HRA_DATE_EXTRACTED,7,2))  end,
dbo.ufn_Convert_to_Date(T.HRA_DATE_EXTRACTED)

from
claims.Dbo.MFELDOEMPLOYEENEW  t;

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