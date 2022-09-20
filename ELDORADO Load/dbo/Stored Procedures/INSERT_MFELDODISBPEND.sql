-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERT_MFELDODISBPEND] 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION; 

BEGIN TRY  

INSERT INTO CLAIMS.DBO.eldodisbpendheader(
POLICY_UNDERWRITER
,GROUP_NUMBER
,CLAIM_NUMBER
,EMPLOYEE_SSN
,DEPENDENT_SEQUENCE_NUMBER
,RELATIONSHIP_TO_EMPLOYEE
,PATIENT_STATUS
,PATIENT_DATE_OF_BIRTH
,EMPLOYEE_DEPARTMENT
,DATE_OF_ELIGIBILITY_ENTRY
,PATIENT_FIRST_NAME
,PATIENT_LAST_NAME
,CLAIM_STATUS
,INPUT_BY
,INPUT_DATE
,RECEIVED_DATE
,PAID_DATE
,ADJUDICATION_DATE
,PLAN_YEAR
,DEDUCTIBLE_YEAR
,CHANGED_BY
,CHANGED_DATE
,PROCESSED_DATE
,LAST_DAY_WORKED_DATE
,RETURN_TO_WORK_DATE
,FIRST_PHYSICIAN_VISIT_DATE
,LAST_PHYSICIAN_VISIT_DATE
,WAITING_PERIOD_BEGIN_DATE
,BENEFIT_BEGIN_DATE
,ICD9_DIAGNOSIS_CODE_1
,ICD9_DIAGNOSIS_CODE_2
,ICD9_DIAGNOSIS_CODE_3
,ICD9_DIAGNOSIS_CODE_4
,CLAIM_CAUSE
,HOSPITALIZED
,OTHER_CAUSE
,EMPLOYMENT_RELATED
,KEY_TO_PROVIDER_FILE
,PROVIDER_TAX_ID
,PROVIDER_NAME
,CHECKING_ACCOUNT_USED_1
,CHECKING_ACCOUNT_USED_2
,CHECKING_ACCOUNT_USED_3
,CHECK_NUMBER_USED_1
,CHECK_NUMBER_USED_2
,CHECK_NUMBER_USED_3
,NET_PAYMENT_AMOUNT_1
,NET_PAYMENT_AMOUNT_2
,NET_PAYMENT_AMOUNT_3
,ADJUSTMENT_AMOUNT_1
,ADJUSTMENT_AMOUNT_2
,ADJUSTMENT_AMOUNT_3
,PAYEE
,EMPLOYEE_SALARY
,PRE_APPROVED_PAYMENT_WEEKS
,FICA_PERCENT
,FICA_PERCENT_REMAINING
,STOP_PAYING_FICA
,NUMBER_OF_SERVICE_LINES_USED
,SERVICE_LINE_INFORMATION_1
,SERVICE_LINE_INFORMATION_2
,SERVICE_LINE_INFORMATION_3
,SERVICE_LINE_INFORMATION_4
--,*CLAIM_TOTALS_INFORMATION
,Benefit_amount
,FICA_AMOUNT
,OFFSET_AMOUNT
,OTHER_AMOUNT_1
,OTHER_AMOUNT_2
,OTHER_AMOUNT_3
,OTHER_AMOUNT_4
,OTHER_AMOUNT_5
,SS_WAGES
,MEDICARE_WAGES
,TOTAL_CLAIM_PAID
,TOTAL_PAID_TO_EMPLOYER
,TOTAL_PAID_TO_EMPLOYEE_1
,TOTAL_PAID_TO_EMPLOYEE_2
,PRODUCT_CODE
,PLAN_CODE_USED
,PLAN_EFFECTIVE_DATE
,CLAIM_SOURCE
,PLAN_TYPE
,EOB_MESSAGE_KEY
,CLAIM_REMARKS
,PENDED_REASON_CODE
,HOLD_CLAIM
,CLAIM_RESERVED
,OVERRIDE_CODE
,ADJUSTMENT_REASON_CODE
,ADJUSTMENT_CLAIM
,MANUAL_WORKFLOW_QUEUE
,CLAIM_CONVERTED
,CLAIM_ACC_REBUILD
,CLAIM_CONVERED_DATE
,CONVERTED_CLAIMS_1099
,FORM_TYPE
,CLAIM_NUMBERING_CONNECTION_1
,CLAIM_NUMBERING_CONNECTION_2
,CLAIM_NUMBERING_CONNECTION_3
,CLAIM_NUMBERING_CONNECTION_4
,CLAIM_VERSION
,TIFF_IMAGE_IDENTIFIER
,MAIL_ROUTING_CODE
,ALT_PAY_FLAG
,ALT_PROV_KEY
,ALT_PAYEE_SSN
,ALT_PAYEE_FIRST_NAME
,ALT_PAYEE_LAST_NAME
,ALT_PAYEE_ADDRESS_LINE_ONE
,ALT_PAYEE_ADDRESS_LINE_TWO
,ALT_PAYEE_CITY
,ALT_PAYEE_STATE
,ALT_PAYEE_ZIP_CODE
,ACCUMULATOR_EVENT
,ACCUMULATOR_EVENT_YEAR
,HOLD_PAY
--,IS_EFT_CHECK
,APPROVED_FROM_DATE
,APPROVED_THRU_DATE
,CLOSED_DATE
,EARLIEST_BENEFIT_FDOS
,ORIGINAL_BENEFIT_FDOS
,TOTAL_PAID_DAYS
,BALANCE_FORWARD
,IS_EFT_CHECK_1
,IS_EFT_CHECK_2
,IS_EFT_CHECK_3
,PAYMENT_TYPE_1
,PAYMENT_TYPE_2
,PAYMENT_TYPE_3
--,FILLER_1
)
SELECT DISTINCT
 t.POLICY_UNDERWRITER
,t.GROUP_NUMBER
,t.CLAIM_NUMBER
,t.EMPLOYEE_SSN
--,decimal(ltrim(t.DEPENDENT_SEQUENCE_NUMBER),2,0)
,dbo.ufn_Convert_to_Decimal(t.DEPENDENT_SEQUENCE_NUMBER)
,t.RELATIONSHIP_TO_EMPLOYEE
,t.PATIENT_STATUS
--,CASE CLAIMS.ISDATECHECK(t.PATIENT_DATE_OF_BIRTH) WHEN 0 THEN NULL ELSE case ltrim(t.Patient_Date_Of_Birth) when '' then null when ' ' then null else date(substr(t.Patient_Date_Of_Birth,1,4)||'-' ||substr(t.Patient_Date_Of_Birth,5,2)||'-' ||substr(t.Patient_Date_Of_Birth,7,2)) end END
,dbo.ufn_Convert_to_Date(t.PATIENT_DATE_OF_BIRTH)
,t.EMPLOYEE_DEPARTMENT
--,CASE CLAIMS.ISDATECHECK(t.DATE_OF_ELIGIBILITY_ENTRY) WHEN 0 THEN NULL ELSE case ltrim(t.DATE_OF_ELIGIBILITY_ENTRY) when '' then null when ' ' then null else date(substr(t.DATE_OF_ELIGIBILITY_ENTRY,1,4)||'-' ||substr(t.DATE_OF_ELIGIBILITY_ENTRY,5,2)||'-' ||substr(t.DATE_OF_ELIGIBILITY_ENTRY,7,2)) end END
,dbo.ufn_Convert_to_Date(t.DATE_OF_ELIGIBILITY_ENTRY)
,t.PATIENT_FIRST_NAME
,t.PATIENT_LAST_NAME
,t.CLAIM_STATUS
,t.INPUT_BY
--,CASE CLAIMS.ISDATECHECK(t.INPUT_DATE) WHEN 0 THEN NULL ELSE case ltrim(t.INPUT_DATE) when '' then null when ' ' then null else date(substr(t.INPUT_DATE,1,4)||'-' ||substr(t.INPUT_DATE,5,2)||'-' ||substr(t.INPUT_DATE,7,2)) end END
,dbo.ufn_Convert_to_Date(t.INPUT_DATE)
--,CASE CLAIMS.ISDATECHECK(t.RECEIVED_DATE) WHEN 0 THEN NULL ELSE case ltrim(t.RECEIVED_DATE) when '' then null when ' ' then null else date(substr(t.RECEIVED_DATE,1,4)||'-' ||substr(t.RECEIVED_DATE,5,2)||'-' ||substr(t.RECEIVED_DATE,7,2)) end END
,dbo.ufn_Convert_to_Date(t.RECEIVED_DATE)
--,CASE CLAIMS.ISDATECHECK(t.PAID_DATE) WHEN 0 THEN NULL ELSE case ltrim(t.PAID_DATE) when '' then null when ' ' then null else date(substr(t.PAID_DATE,1,4)||'-' ||substr(t.PAID_DATE,5,2)||'-' ||substr(t.PAID_DATE,7,2)) end END
,dbo.ufn_Convert_to_Date(t.PAID_DATE)
--,CASE CLAIMS.ISDATECHECK(t.ADJUDICATION_DATE) WHEN 0 THEN NULL ELSE case ltrim(t.ADJUDICATION_DATE) when '' then null when ' ' then null else date(substr(t.ADJUDICATION_DATE,1,4)||'-' ||substr(t.ADJUDICATION_DATE,5,2)||'-' ||substr(t.ADJUDICATION_DATE,7,2)) end END
,dbo.ufn_Convert_to_Date(t.ADJUDICATION_DATE)
,t.PLAN_YEAR
,t.DEDUCTIBLE_YEAR
,t.CHANGED_BY
--,CASE CLAIMS.ISDATECHECK(t.CHANGED_DATE) WHEN 0 THEN NULL ELSE case ltrim(t.CHANGED_DATE) when '' then null when ' ' then null else date(substr(t.CHANGED_DATE,1,4)||'-' ||substr(t.CHANGED_DATE,5,2)||'-' ||substr(t.CHANGED_DATE,7,2)) end END
,dbo.ufn_Convert_to_Date(t.CHANGED_DATE)
--,CASE CLAIMS.ISDATECHECK(t.PROCESSED_DATE) WHEN 0 THEN NULL ELSE case ltrim(t.PROCESSED_DATE) when '' then null when ' ' then null else date(substr(t.PROCESSED_DATE,1,4)||'-' ||substr(t.PROCESSED_DATE,5,2)||'-' ||substr(t.PROCESSED_DATE,7,2)) end END
,dbo.ufn_Convert_to_Date(t.PROCESSED_DATE)
--,CASE CLAIMS.ISDATECHECK(t.LAST_DAY_WORKED_DATE) WHEN 0 THEN NULL ELSE case ltrim(t.LAST_DAY_WORKED_DATE) when '' then null when ' ' then null else date(substr(t.LAST_DAY_WORKED_DATE,1,4)||'-' ||substr(t.LAST_DAY_WORKED_DATE,5,2)||'-' ||substr(t.LAST_DAY_WORKED_DATE,7,2)) end END
,dbo.ufn_Convert_to_Date(t.LAST_DAY_WORKED_DATE)
--,CASE CLAIMS.ISDATECHECK(t.RETURN_TO_WORK_DATE) WHEN 0 THEN NULL ELSE case ltrim(t.RETURN_TO_WORK_DATE) when '' then null when ' ' then null else date(substr(t.RETURN_TO_WORK_DATE,1,4)||'-' ||substr(t.RETURN_TO_WORK_DATE,5,2)||'-' ||substr(t.RETURN_TO_WORK_DATE,7,2)) end END
,dbo.ufn_Convert_to_Date(t.RETURN_TO_WORK_DATE)
--,CASE CLAIMS.ISDATECHECK(t.FIRST_PHYSICIAN_VISIT_DATE) WHEN 0 THEN NULL ELSE case ltrim(t.FIRST_PHYSICIAN_VISIT_DATE) when '' then null when ' ' then null else date(substr(t.FIRST_PHYSICIAN_VISIT_DATE,1,4)||'-' ||substr(t.FIRST_PHYSICIAN_VISIT_DATE,5,2)||'-' ||substr(t.FIRST_PHYSICIAN_VISIT_DATE,7,2)) end END
,dbo.ufn_Convert_to_Date(t.FIRST_PHYSICIAN_VISIT_DATE)
--,CASE CLAIMS.ISDATECHECK(t.LAST_PHYSICIAN_VISIT_DATE) WHEN 0 THEN NULL ELSE case ltrim(t.LAST_PHYSICIAN_VISIT_DATE) when '' then null when ' ' then null else date(substr(t.LAST_PHYSICIAN_VISIT_DATE,1,4)||'-' ||substr(t.LAST_PHYSICIAN_VISIT_DATE,5,2)||'-' ||substr(t.LAST_PHYSICIAN_VISIT_DATE,7,2)) end END
,dbo.ufn_Convert_to_Date(t.LAST_PHYSICIAN_VISIT_DATE)
--,CASE CLAIMS.ISDATECHECK(t.WAITING_PERIOD_BEGIN_DATE) WHEN 0 THEN NULL ELSE case ltrim(t.WAITING_PERIOD_BEGIN_DATE) when '' then null when ' ' then null else date(substr(t.WAITING_PERIOD_BEGIN_DATE,1,4)||'-' ||substr(t.WAITING_PERIOD_BEGIN_DATE,5,2)||'-' ||substr(t.WAITING_PERIOD_BEGIN_DATE,7,2)) end END
,dbo.ufn_Convert_to_Date(t.WAITING_PERIOD_BEGIN_DATE)
--,CASE CLAIMS.ISDATECHECK(t.BENEFIT_BEGIN_DATE) WHEN 0 THEN NULL ELSE case ltrim(t.BENEFIT_BEGIN_DATE) when '' then null when ' ' then null else date(substr(t.BENEFIT_BEGIN_DATE,1,4)||'-' ||substr(t.BENEFIT_BEGIN_DATE,5,2)||'-' ||substr(t.BENEFIT_BEGIN_DATE,7,2)) end END
,dbo.ufn_Convert_to_Date(t.BENEFIT_BEGIN_DATE)
,t.ICD9_DIAGNOSIS_CODE_1
,t.ICD9_DIAGNOSIS_CODE_2
,t.ICD9_DIAGNOSIS_CODE_3
,t.ICD9_DIAGNOSIS_CODE_4
,t.CLAIM_CAUSE
,t.HOSPITALIZED
,t.OTHER_CAUSE
,t.EMPLOYMENT_RELATED
,t.KEY_TO_PROVIDER_FILE
,t.PROVIDER_TAX_ID
,t.PROVIDER_NAME
,t.CHECKING_ACCOUNT_USED_1
,t.CHECKING_ACCOUNT_USED_2
,t.CHECKING_ACCOUNT_USED_3
,t.CHECK_NUMBER_USED_1
,t.CHECK_NUMBER_USED_2
,t.CHECK_NUMBER_USED_3
--,case when CLAIMS.ISDECIMALCHECK(ltrim(t.Net_Payment_Amount_1)) = 0 then Null else decimal(ltrim(t.Net_Payment_Amount_1),11,2) end
,dbo.ufn_Convert_to_Decimal(t.Net_Payment_Amount_1)
--,case when CLAIMS.ISDECIMALCHECK(ltrim(t.Net_Payment_Amount_2)) = 0 then Null else decimal(ltrim(t.Net_Payment_Amount_2),11,2) end
,dbo.ufn_Convert_to_Decimal(t.Net_Payment_Amount_2)
--,case when CLAIMS.ISDECIMALCHECK(ltrim(t.Net_Payment_Amount_3)) = 0 then Null else decimal(ltrim(t.Net_Payment_Amount_3),11,2) end
,dbo.ufn_Convert_to_Decimal(t.Net_Payment_Amount_3)
--,case when CLAIMS.ISDECIMALCHECK(ltrim(t.Adjustment_Amount_1)) = 0 then Null else decimal(ltrim(t.Adjustment_Amount_1),11,2) end
,dbo.ufn_Convert_to_Decimal(t.Adjustment_Amount_1)
--,case when CLAIMS.ISDECIMALCHECK(ltrim(t.Adjustment_Amount_2)) = 0 then Null else decimal(ltrim(t.Adjustment_Amount_2),11,2) end
,dbo.ufn_Convert_to_Decimal(t.Adjustment_Amount_2)
--,case when CLAIMS.ISDECIMALCHECK(ltrim(t.Adjustment_Amount_3)) = 0 then Null else decimal(ltrim(t.Adjustment_Amount_3),11,2) end
,dbo.ufn_Convert_to_Decimal(t.Adjustment_Amount_3)
,t.PAYEE
--,case ltrim(t.EMPLOYEE_SALARY) when '' then Null else decimal(ltrim(t.EMPLOYEE_SALARY),11,2) end 
,dbo.ufn_Convert_to_Decimal(t.EMPLOYEE_SALARY)
,t.PRE_APPROVED_PAYMENT_WEEKS
,t.FICA_PERCENT
,t.FICA_PERCENT_REMAINING
,t.STOP_PAYING_FICA
,t.NUMBER_OF_SERVICE_LINES_USED
,t.SERVICE_LINE_INFORMATION_1
,t.SERVICE_LINE_INFORMATION_2
,t.SERVICE_LINE_INFORMATION_3
,t.SERVICE_LINE_INFORMATION_4
--,t.CLAIM_TOTALS_INFORMATION
--,case ltrim(rtrim(t.Benefit_amount)) when '' then Null else decimal(ltrim(rtrim(t.Benefit_amount)),8,2) end
,dbo.ufn_Convert_to_Decimal(t.Benefit_amount)
--,case ltrim(rtrim(t.FICA_AMOUNT)) when '' then Null else decimal(ltrim(rtrim(t.FICA_AMOUNT)),8,2) end
,dbo.ufn_Convert_to_Decimal(t.FICA_AMOUNT)
--,case when CLAIMS.ISDECIMALCHECK(ltrim(t.OFFSET_AMOUNT)) = 0 then Null else decimal(ltrim(t.OFFSET_AMOUNT),8,2) end
,dbo.ufn_Convert_to_Decimal(t.OFFSET_AMOUNT)
--,case when CLAIMS.ISDECIMALCHECK(ltrim(t.OTHER_AMOUNT_1)) = 0 then Null else decimal(ltrim(t.OTHER_AMOUNT_1),8,2) end
,dbo.ufn_Convert_to_Decimal(t.OTHER_AMOUNT_1)
--,case when CLAIMS.ISDECIMALCHECK(ltrim(t.OTHER_AMOUNT_2)) = 0 then Null else decimal(ltrim(t.OTHER_AMOUNT_2),8,2) end
,dbo.ufn_Convert_to_Decimal(t.OTHER_AMOUNT_2)
--,case when CLAIMS.ISDECIMALCHECK(ltrim(t.OTHER_AMOUNT_3)) = 0 then Null else decimal(ltrim(t.OTHER_AMOUNT_3),8,2) end
,dbo.ufn_Convert_to_Decimal(t.OTHER_AMOUNT_3)
--,case when CLAIMS.ISDECIMALCHECK(ltrim(t.OTHER_AMOUNT_4)) = 0 then Null else decimal(ltrim(t.OTHER_AMOUNT_4),8,2) end
,dbo.ufn_Convert_to_Decimal(t.OTHER_AMOUNT_4)
--,case when CLAIMS.ISDECIMALCHECK(ltrim(t.OTHER_AMOUNT_5)) = 0 then Null else decimal(ltrim(t.OTHER_AMOUNT_5),8,2) end
,dbo.ufn_Convert_to_Decimal(t.OTHER_AMOUNT_5)
--,case when CLAIMS.ISDECIMALCHECK(ltrim(t.SS_WAGES)) = 0 then Null else decimal(ltrim(t.SS_WAGES),8,2) end
,dbo.ufn_Convert_to_Decimal(t.SS_WAGES)
--,case when CLAIMS.ISDECIMALCHECK(ltrim(t.MEDICARE_WAGES)) = 0 then Null else decimal(ltrim(t.MEDICARE_WAGES),8,2) end
,dbo.ufn_Convert_to_Decimal(t.MEDICARE_WAGES)
--,case when CLAIMS.ISDECIMALCHECK(ltrim(t.TOTAL_CLAIM_PAID)) = 0 then Null else decimal(ltrim(t.TOTAL_CLAIM_PAID),8,2) end
,dbo.ufn_Convert_to_Decimal(t.TOTAL_CLAIM_PAID)
--,case when CLAIMS.ISDECIMALCHECK(ltrim(t.TOTAL_PAID_TO_EMPLOYER)) = 0 then Null else decimal(ltrim(t.TOTAL_PAID_TO_EMPLOYER),8,2) end
,dbo.ufn_Convert_to_Decimal(t.TOTAL_PAID_TO_EMPLOYER)
--,case when CLAIMS.ISDECIMALCHECK(ltrim(t.TOTAL_PAID_TO_EMPLOYEE_1)) = 0 then Null else decimal(ltrim(t.TOTAL_PAID_TO_EMPLOYEE_1),8,2) end
,dbo.ufn_Convert_to_Decimal(t.TOTAL_PAID_TO_EMPLOYEE_1)
--,case when CLAIMS.ISDECIMALCHECK(ltrim(t.TOTAL_PAID_TO_EMPLOYEE_2)) = 0 then Null else decimal(ltrim(t.TOTAL_PAID_TO_EMPLOYEE_2),8,2) end
,dbo.ufn_Convert_to_Decimal(t.TOTAL_PAID_TO_EMPLOYEE_2)
,t.PRODUCT_CODE
,t.PLAN_CODE_USED
--,CASE CLAIMS.ISDATECHECK(t.PLAN_EFFECTIVE_DATE) WHEN 0 THEN NULL ELSE case ltrim(t.PLAN_EFFECTIVE_DATE) when '' then null when ' ' then null else date(substr(t.PLAN_EFFECTIVE_DATE,1,4)||'-' ||substr(t.PLAN_EFFECTIVE_DATE,5,2)||'-' ||substr(t.PLAN_EFFECTIVE_DATE,7,2)) end END
,dbo.ufn_Convert_to_Date(t.PLAN_EFFECTIVE_DATE)
,t.CLAIM_SOURCE
,t.PLAN_TYPE
,t.EOB_MESSAGE_KEY
,t.CLAIM_REMARKS
,t.PENDED_REASON_CODE
,t.HOLD_CLAIM
,t.CLAIM_RESERVED
,t.OVERRIDE_CODE
,t.ADJUSTMENT_REASON_CODE
,t.ADJUSTMENT_CLAIM
,t.MANUAL_WORKFLOW_QUEUE
,t.CLAIM_CONVERTED
,t.CLAIM_ACC_REBUILD
--,CASE CLAIMS.ISDATECHECK(t.CLAIM_CONVERED_DATE) WHEN 0 THEN NULL ELSE case ltrim(t.CLAIM_CONVERED_DATE) when '' then null when ' ' then null else date(substr(t.CLAIM_CONVERED_DATE,1,4)||'-' ||substr(t.CLAIM_CONVERED_DATE,5,2)||'-' ||substr(t.CLAIM_CONVERED_DATE,7,2)) end END
,dbo.ufn_Convert_to_Date(t.CLAIM_CONVERED_DATE)
,t.CONVERTED_CLAIMS_1099
,t.FORM_TYPE
,t.CLAIM_NUMBERING_CONNECTION_1
,t.CLAIM_NUMBERING_CONNECTION_2
,t.CLAIM_NUMBERING_CONNECTION_3
,t.CLAIM_NUMBERING_CONNECTION_4
,t.CLAIM_VERSION
,t.TIFF_IMAGE_IDENTIFIER
,t.MAIL_ROUTING_CODE
,t.ALT_PAY_FLAG
,t.ALT_PROV_KEY
,t.ALT_PAYEE_SSN
,t.ALT_PAYEE_FIRST_NAME
,t.ALT_PAYEE_LAST_NAME
,t.ALT_PAYEE_ADDRESS_LINE_ONE
,t.ALT_PAYEE_ADDRESS_LINE_TWO
,t.ALT_PAYEE_CITY
,t.ALT_PAYEE_STATE
,t.ALT_PAYEE_ZIP_CODE
,t.ACCUMULATOR_EVENT
,t.ACCUMULATOR_EVENT_YEAR
,t.HOLD_PAY
--,t.IS_EFT_CHECK
--,CASE CLAIMS.ISDATECHECK(t.APPROVED_FROM_DATE) WHEN 0 THEN NULL ELSE case ltrim(t.APPROVED_FROM_DATE) when '' then null when ' ' then null else date(substr(t.APPROVED_FROM_DATE,1,4)||'-' ||substr(t.APPROVED_FROM_DATE,5,2)||'-' ||substr(t.APPROVED_FROM_DATE,7,2)) end END
,dbo.ufn_Convert_to_Date(t.APPROVED_FROM_DATE)
--,CASE CLAIMS.ISDATECHECK(t.APPROVED_THRU_DATE) WHEN 0 THEN NULL ELSE case ltrim(t.APPROVED_THRU_DATE) when '' then null when ' ' then null else date(substr(t.APPROVED_THRU_DATE,1,4)||'-' ||substr(t.APPROVED_THRU_DATE,5,2)||'-' ||substr(t.APPROVED_THRU_DATE,7,2)) end END
,dbo.ufn_Convert_to_Date(t.APPROVED_THRU_DATE)
--,CASE CLAIMS.ISDATECHECK(t.CLOSED_DATE) WHEN 0 THEN NULL ELSE case ltrim(t.CLOSED_DATE) when '' then null when ' ' then null else date(substr(t.CLOSED_DATE,1,4)||'-' ||substr(t.CLOSED_DATE,5,2)||'-' ||substr(t.CLOSED_DATE,7,2)) end END
,dbo.ufn_Convert_to_Date(t.CLOSED_DATE)
,t.EARLIEST_BENEFIT_FDOS
,t.ORIGINAL_BENEFIT_FDOS
,t.TOTAL_PAID_DAYS
,t.BALANCE_FORWARD
--,t.FILLER_1
,t.IS_EFT_CHECK_1
,t.IS_EFT_CHECK_2
,t.IS_EFT_CHECK_3
,t.PAYMENT_TYPE_1
,t.PAYMENT_TYPE_2
,t.PAYMENT_TYPE_3
FROM CLAIMS.DBO.mfeldodisbpend  t
WHERE ASCII(claim_number)<>0;

--ROLLBACK

INSERT INTO CLAIMS.DBO.ELDODISBPENDLINES (
  POLICY_UNDERWRITER
, GROUP_NUMBER
, CLAIM_NUMBER
, EMPLOYEE_SSN
, BENEFIT_CODE
, FROM_DATE_OF_SERVICE
, THRU_DATE_OF_SERVICE
, BENEFIT_AMOUNT
, BENEFIT_REASON
, FICA_FROM_DATE
, FICA_THRU_DATE
, FICA_AMOUNT
, FICA_REASON
, OFFSET_FROM_DATE
, OFFSET_THRU_DATE
, OFFSET_AMOUNT
, OFFSET_REASON
, OTHER_FROM_DATE_1
, OTHER_FROM_DATE_2
, OTHER_FROM_DATE_3
, OTHER_FROM_DATE_4
, OTHER_FROM_DATE_5
, OTHER_THRU_DATE_1
, OTHER_THRU_DATE_2
, OTHER_THRU_DATE_3
, OTHER_THRU_DATE_4
, OTHER_THRU_DATE_5
, OTHER_AMOUNT_1
, OTHER_AMOUNT_2
, OTHER_AMOUNT_3
, OTHER_AMOUNT_4
, OTHER_AMOUNT_5
, OTHER_REASON_1
, OTHER_REASON_2
, OTHER_REASON_3
, OTHER_REASON_4
, OTHER_REASON_5
, PRE_POST_TAX_FLAG_1
, PRE_POST_TAX_FLAG_2
, PRE_POST_TAX_FLAG_3
, PRE_POST_TAX_FLAG_4
, PRE_POST_TAX_FLAG_5
, PAID_DAYS
, PAYMENT_AMOUNT
, PAID_TO_EMPLOYER
, PAID_TO_EMPLOYEE
, SS_WAGES
, MEDICARE_WAGES
, ROLLOVER_FLAG
, INELIGIBLE_AMOUNT
, ACC_EXCEPTION_BUCKET
, OTHER_AMOUNT_USED_1
, OTHER_AMOUNT_USED_2
, OTHER_AMOUNT_USED_3
, OTHER_AMOUNT_USED_4
, OTHER_AMOUNT_USED_5
 )
 SELECT 
  POLICY_UNDERWRITER
, GROUP_NUMBER
, CLAIM_NUMBER
, EMPLOYEE_SSN
--, case when length(ltrim(substr(service_line_information_1,1,3))) = 0 then NULL else substr(service_line_information_1,1,3) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_1,1,3)))) = 0,NULL,SUBSTRING(service_line_information_1,1,3) )
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_1,4,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_1,4,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_1,12,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_1,12,8))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_1,20,8)) = 1 THEN cast(substr(service_line_information_1,20,8) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_1,20,8))
--, case when length(ltrim(substr(service_line_information_1,28,2))) = 0 then NULL else substr(service_line_information_1,28,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_1,28,2)))) = 0,NULL,SUBSTRING(service_line_information_1,28,2) )
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_1,30,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_1,30,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_1,38,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_1,38,8))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_1,46,7)) = 1 THEN cast(substr(service_line_information_1,46,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_1,46,7))
--, case when length(ltrim(substr(service_line_information_1,53,2))) = 0 then NULL else substr(service_line_information_1,53,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_1,53,2)))) = 0,NULL,SUBSTRING(service_line_information_1,53,2) )
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_1,55,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_1,55,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_1,63,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_1,63,8))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_1,71,7)) = 1 THEN cast(substr(service_line_information_1,71,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_1,71,7))
--, case when length(ltrim(substr(service_line_information_1,78,2))) = 0 then NULL else substr(service_line_information_1,78,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_1,78,2)))) = 0,NULL,SUBSTRING(service_line_information_1,78,2) )
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_1,80,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_1,80,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_1,88,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_1,88,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_1,96,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_1,96,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_1,104,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_1,104,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_1,112,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_1,112,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_1,120,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_1,120,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_1,128,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_1,128,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_1,136,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_1,136,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_1,142,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_1,142,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_1,150,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_1,150,8))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_1,160,7)) = 1 THEN cast(substr(service_line_information_1,160,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_1,160,7))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_1,167,7)) = 1 THEN cast(substr(service_line_information_1,167,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_1,167,7))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_1,174,7)) = 1 THEN cast(substr(service_line_information_1,174,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_1,174,7))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_1,181,7)) = 1 THEN cast(substr(service_line_information_1,181,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_1,181,7))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_1,188,7)) = 1 THEN cast(substr(service_line_information_1,188,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_1,188,7))
--, case when length(ltrim(substr(service_line_information_1,195,2))) = 0 then NULL else substr(service_line_information_1,195,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_1,195,2)))) = 0,NULL,SUBSTRING(service_line_information_1,195,2) )
--, case when length(ltrim(substr(service_line_information_1,197,2))) = 0 then NULL else substr(service_line_information_1,197,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_1,197,2)))) = 0,NULL,SUBSTRING(service_line_information_1,197,2) )
--, case when length(ltrim(substr(service_line_information_1,199,2))) = 0 then NULL else substr(service_line_information_1,199,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_1,199,2)))) = 0,NULL,SUBSTRING(service_line_information_1,199,2) )
--, case when length(ltrim(substr(service_line_information_1,201,2))) = 0 then NULL else substr(service_line_information_1,201,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_1,201,2)))) = 0,NULL,SUBSTRING(service_line_information_1,201,2) )
--, case when length(ltrim(substr(service_line_information_1,203,2))) = 0 then NULL else substr(service_line_information_1,203,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_1,203,2)))) = 0,NULL,SUBSTRING(service_line_information_1,203,2) )
--, case when length(ltrim(substr(service_line_information_1,205,1))) = 0 then NULL else substr(service_line_information_1,205,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_1,205,1)))) = 0,NULL,SUBSTRING(service_line_information_1,205,1) )
--, case when length(ltrim(substr(service_line_information_1,206,1))) = 0 then NULL else substr(service_line_information_1,206,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_1,206,1)))) = 0,NULL,SUBSTRING(service_line_information_1,206,1) )
--, case when length(ltrim(substr(service_line_information_1,207,1))) = 0 then NULL else substr(service_line_information_1,207,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_1,207,1)))) = 0,NULL,SUBSTRING(service_line_information_1,207,1) )
--, case when length(ltrim(substr(service_line_information_1,208,1))) = 0 then NULL else substr(service_line_information_1,208,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_1,208,1)))) = 0,NULL,SUBSTRING(service_line_information_1,208,1) )
--, case when length(ltrim(substr(service_line_information_1,209,1))) = 0 then NULL else substr(service_line_information_1,209,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_1,209,1)))) = 0,NULL,SUBSTRING(service_line_information_1,209,1) )
--, case when length(ltrim(substr(service_line_information_1,210,4))) = 0 then NULL else substr(service_line_information_1,210,4) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_1,210,4)))) = 0,NULL,SUBSTRING(service_line_information_1,210,4) )
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_1,214,11)) = 1 THEN cast(substr(service_line_information_1,214,11) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_1,214,11))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_1,225,11)) = 1 THEN cast(substr(service_line_information_1,225,11) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_1,225,11))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_1,236,11)) = 1 THEN cast(substr(service_line_information_1,236,11) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_1,236,11))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_1,247,7)) = 1 THEN cast(substr(service_line_information_1,247,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_1,247,7))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_1,254,7)) = 1 THEN cast(substr(service_line_information_1,254,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_1,254,7))
--, case when length(ltrim(substr(service_line_information_1,261,1))) = 0 then NULL else substr(service_line_information_1,261,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_1,261,1)))) = 0,NULL,SUBSTRING(service_line_information_1,261,1 ))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_1,262,7)) = 1 THEN cast(substr(service_line_information_1,262,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_1,262,7))
--, case when length(ltrim(substr(service_line_information_1,270,2))) = 0 then NULL else substr(service_line_information_1,270,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_1,270,2)))) = 0,NULL,SUBSTRING(service_line_information_1,270,2 ))
--, case when length(ltrim(substr(service_line_information_1,272,1))) = 0 then NULL else substr(service_line_information_1,272,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_1,272,1)))) = 0,NULL,SUBSTRING(service_line_information_1,272,1))
--, case when length(ltrim(substr(service_line_information_1,273,1))) = 0 then NULL else substr(service_line_information_1,273,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_1,273,1)))) = 0,NULL,SUBSTRING(service_line_information_1,273,1))
--, case when length(ltrim(substr(service_line_information_1,274,1))) = 0 then NULL else substr(service_line_information_1,274,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_1,274,1)))) = 0,NULL,SUBSTRING(service_line_information_1,274,1))
--, case when length(ltrim(substr(service_line_information_1,275,1))) = 0 then NULL else substr(service_line_information_1,275,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_1,275,1)))) = 0,NULL,SUBSTRING(service_line_information_1,275,1))
--, case when length(ltrim(substr(service_line_information_1,276,1))) = 0 then NULL else substr(service_line_information_1,276,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_1,276,1)))) = 0,NULL,SUBSTRING(service_line_information_1,276,1))
 FROM claims.dbo.eldodisbpendheader
 WHERE LEN(LTRIM(RTRIM(service_line_information_1))) > 0;
 
 --ROLLBACK

 INSERT INTO CLAIMS.DBO.ELDODISBPENDLINES (
  POLICY_UNDERWRITER
, GROUP_NUMBER
, CLAIM_NUMBER
, EMPLOYEE_SSN
, BENEFIT_CODE
, FROM_DATE_OF_SERVICE
, THRU_DATE_OF_SERVICE
, BENEFIT_AMOUNT
, BENEFIT_REASON
, FICA_FROM_DATE
, FICA_THRU_DATE
, FICA_AMOUNT
, FICA_REASON
, OFFSET_FROM_DATE
, OFFSET_THRU_DATE
, OFFSET_AMOUNT
, OFFSET_REASON
, OTHER_FROM_DATE_1
, OTHER_FROM_DATE_2
, OTHER_FROM_DATE_3
, OTHER_FROM_DATE_4
, OTHER_FROM_DATE_5
, OTHER_THRU_DATE_1
, OTHER_THRU_DATE_2
, OTHER_THRU_DATE_3
, OTHER_THRU_DATE_4
, OTHER_THRU_DATE_5
, OTHER_AMOUNT_1
, OTHER_AMOUNT_2
, OTHER_AMOUNT_3
, OTHER_AMOUNT_4
, OTHER_AMOUNT_5
, OTHER_REASON_1
, OTHER_REASON_2
, OTHER_REASON_3
, OTHER_REASON_4
, OTHER_REASON_5
, PRE_POST_TAX_FLAG_1
, PRE_POST_TAX_FLAG_2
, PRE_POST_TAX_FLAG_3
, PRE_POST_TAX_FLAG_4
, PRE_POST_TAX_FLAG_5
, PAID_DAYS
, PAYMENT_AMOUNT
, PAID_TO_EMPLOYER
, PAID_TO_EMPLOYEE
, SS_WAGES
, MEDICARE_WAGES
, ROLLOVER_FLAG
, INELIGIBLE_AMOUNT
, ACC_EXCEPTION_BUCKET
, OTHER_AMOUNT_USED_1
, OTHER_AMOUNT_USED_2
, OTHER_AMOUNT_USED_3
, OTHER_AMOUNT_USED_4
, OTHER_AMOUNT_USED_5
 )
 SELECT 
  POLICY_UNDERWRITER
, GROUP_NUMBER
, CLAIM_NUMBER
, EMPLOYEE_SSN
--, case when length(ltrim(substr(service_line_information_2,1,3))) = 0 then NULL else substr(service_line_information_2,1,3) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_2,1,3)))) = 0,NULL,SUBSTRING(service_line_information_2,1,3) )
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_2,4,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_2,4,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_2,12,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_2,12,8))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_2,20,8)) = 1 THEN cast(substr(service_line_information_2,20,8) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_2,20,8))
--, case when length(ltrim(substr(service_line_information_2,28,2))) = 0 then NULL else substr(service_line_information_2,28,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_2,28,2)))) = 0,NULL,SUBSTRING(service_line_information_2,28,2) )
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_2,30,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_2,30,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_2,38,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_2,38,8))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_2,46,7)) = 1 THEN cast(substr(service_line_information_2,46,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_2,46,7))
--, case when length(ltrim(substr(service_line_information_2,53,2))) = 0 then NULL else substr(service_line_information_2,53,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_2,53,2)))) = 0,NULL,SUBSTRING(service_line_information_2,53,2) )
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_2,55,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_2,55,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_2,63,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_2,63,8))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_2,71,7)) = 1 THEN cast(substr(service_line_information_2,71,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_2,71,7))
--, case when length(ltrim(substr(service_line_information_2,78,2))) = 0 then NULL else substr(service_line_information_2,78,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_2,78,2)))) = 0,NULL,SUBSTRING(service_line_information_2,78,2) )
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_2,80,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_2,80,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_2,88,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_2,88,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_2,96,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_2,96,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_2,104,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_2,104,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_2,112,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_2,112,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_2,120,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_2,120,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_2,128,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_2,128,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_2,136,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_2,136,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_2,142,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_2,142,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_2,150,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_2,150,8))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_2,160,7)) = 1 THEN cast(substr(service_line_information_2,160,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_2,160,7))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_2,167,7)) = 1 THEN cast(substr(service_line_information_2,167,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_2,167,7))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_2,174,7)) = 1 THEN cast(substr(service_line_information_2,174,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_2,174,7))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_2,181,7)) = 1 THEN cast(substr(service_line_information_2,181,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_2,181,7))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_2,188,7)) = 1 THEN cast(substr(service_line_information_2,188,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_2,188,7))
--, case when length(ltrim(substr(service_line_information_2,195,2))) = 0 then NULL else substr(service_line_information_2,195,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_2,195,2)))) = 0,NULL,SUBSTRING(service_line_information_2,195,2) )
--, case when length(ltrim(substr(service_line_information_2,197,2))) = 0 then NULL else substr(service_line_information_2,197,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_2,197,2)))) = 0,NULL,SUBSTRING(service_line_information_2,197,2) )
--, case when length(ltrim(substr(service_line_information_2,199,2))) = 0 then NULL else substr(service_line_information_2,199,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_2,199,2)))) = 0,NULL,SUBSTRING(service_line_information_2,199,2) )
--, case when length(ltrim(substr(service_line_information_2,201,2))) = 0 then NULL else substr(service_line_information_2,201,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_2,201,2)))) = 0,NULL,SUBSTRING(service_line_information_2,201,2) )
--, case when length(ltrim(substr(service_line_information_2,203,2))) = 0 then NULL else substr(service_line_information_2,203,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_2,203,2)))) = 0,NULL,SUBSTRING(service_line_information_2,203,2) )
--, case when length(ltrim(substr(service_line_information_2,205,1))) = 0 then NULL else substr(service_line_information_2,205,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_2,205,1)))) = 0,NULL,SUBSTRING(service_line_information_2,205,1) )
--, case when length(ltrim(substr(service_line_information_2,206,1))) = 0 then NULL else substr(service_line_information_2,206,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_2,206,1)))) = 0,NULL,SUBSTRING(service_line_information_2,206,1) )
--, case when length(ltrim(substr(service_line_information_2,207,1))) = 0 then NULL else substr(service_line_information_2,207,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_2,207,1)))) = 0,NULL,SUBSTRING(service_line_information_2,207,1) )
--, case when length(ltrim(substr(service_line_information_2,208,1))) = 0 then NULL else substr(service_line_information_2,208,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_2,208,1)))) = 0,NULL,SUBSTRING(service_line_information_2,208,1) )
--, case when length(ltrim(substr(service_line_information_2,209,1))) = 0 then NULL else substr(service_line_information_2,209,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_2,209,1)))) = 0,NULL,SUBSTRING(service_line_information_2,209,1) )
--, case when length(ltrim(substr(service_line_information_2,210,4))) = 0 then NULL else substr(service_line_information_2,210,4) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_2,210,4)))) = 0,NULL,SUBSTRING(service_line_information_2,210,4) )
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_2,214,11)) = 1 THEN cast(substr(service_line_information_2,214,11) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_2,214,11))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_2,225,11)) = 1 THEN cast(substr(service_line_information_2,225,11) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_2,225,11))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_2,236,11)) = 1 THEN cast(substr(service_line_information_2,236,11) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_2,236,11))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_2,247,7)) = 1 THEN cast(substr(service_line_information_2,247,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_2,247,7))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_2,254,7)) = 1 THEN cast(substr(service_line_information_2,254,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_2,254,7))
--, case when length(ltrim(substr(service_line_information_2,261,1))) = 0 then NULL else substr(service_line_information_2,261,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_2,261,1)))) = 0,NULL,SUBSTRING(service_line_information_2,261,1 ))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_2,262,7)) = 1 THEN cast(substr(service_line_information_2,262,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_2,262,7))
--, case when length(ltrim(substr(service_line_information_2,270,2))) = 0 then NULL else substr(service_line_information_2,270,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_2,270,2)))) = 0,NULL,SUBSTRING(service_line_information_2,270,2 ))
--, case when length(ltrim(substr(service_line_information_2,272,1))) = 0 then NULL else substr(service_line_information_2,272,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_2,272,1)))) = 0,NULL,SUBSTRING(service_line_information_2,272,1))
--, case when length(ltrim(substr(service_line_information_2,273,1))) = 0 then NULL else substr(service_line_information_2,273,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_2,273,1)))) = 0,NULL,SUBSTRING(service_line_information_2,273,1))
--, case when length(ltrim(substr(service_line_information_2,274,1))) = 0 then NULL else substr(service_line_information_2,274,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_2,274,1)))) = 0,NULL,SUBSTRING(service_line_information_2,274,1))
--, case when length(ltrim(substr(service_line_information_2,275,1))) = 0 then NULL else substr(service_line_information_2,275,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_2,275,1)))) = 0,NULL,SUBSTRING(service_line_information_2,275,1))
--, case when length(ltrim(substr(service_line_information_2,276,1))) = 0 then NULL else substr(service_line_information_2,276,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_2,276,1)))) = 0,NULL,SUBSTRING(service_line_information_2,276,1))
 FROM claims.dbo.eldodisbpendheader
 WHERE LEN(LTRIM(RTRIM(service_line_information_2))) > 0;

 --Rollback

 INSERT INTO CLAIMS.DBO.ELDODISBPENDLINES (
  POLICY_UNDERWRITER
, GROUP_NUMBER
, CLAIM_NUMBER
, EMPLOYEE_SSN
, BENEFIT_CODE
, FROM_DATE_OF_SERVICE
, THRU_DATE_OF_SERVICE
, BENEFIT_AMOUNT
, BENEFIT_REASON
, FICA_FROM_DATE
, FICA_THRU_DATE
, FICA_AMOUNT
, FICA_REASON
, OFFSET_FROM_DATE
, OFFSET_THRU_DATE
, OFFSET_AMOUNT
, OFFSET_REASON
, OTHER_FROM_DATE_1
, OTHER_FROM_DATE_2
, OTHER_FROM_DATE_3
, OTHER_FROM_DATE_4
, OTHER_FROM_DATE_5
, OTHER_THRU_DATE_1
, OTHER_THRU_DATE_2
, OTHER_THRU_DATE_3
, OTHER_THRU_DATE_4
, OTHER_THRU_DATE_5
, OTHER_AMOUNT_1
, OTHER_AMOUNT_2
, OTHER_AMOUNT_3
, OTHER_AMOUNT_4
, OTHER_AMOUNT_5
, OTHER_REASON_1
, OTHER_REASON_2
, OTHER_REASON_3
, OTHER_REASON_4
, OTHER_REASON_5
, PRE_POST_TAX_FLAG_1
, PRE_POST_TAX_FLAG_2
, PRE_POST_TAX_FLAG_3
, PRE_POST_TAX_FLAG_4
, PRE_POST_TAX_FLAG_5
, PAID_DAYS
, PAYMENT_AMOUNT
, PAID_TO_EMPLOYER
, PAID_TO_EMPLOYEE
, SS_WAGES
, MEDICARE_WAGES
, ROLLOVER_FLAG
, INELIGIBLE_AMOUNT
, ACC_EXCEPTION_BUCKET
, OTHER_AMOUNT_USED_1
, OTHER_AMOUNT_USED_2
, OTHER_AMOUNT_USED_3
, OTHER_AMOUNT_USED_4
, OTHER_AMOUNT_USED_5
 )
 SELECT 
  POLICY_UNDERWRITER
, GROUP_NUMBER
, CLAIM_NUMBER
, EMPLOYEE_SSN
--, case when length(ltrim(substr(service_line_information_3,1,3))) = 0 then NULL else substr(service_line_information_3,1,3) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_3,1,3)))) = 0,NULL,SUBSTRING(service_line_information_3,1,3) )
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_3,4,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_3,4,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_3,12,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_3,12,8))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_3,20,8)) = 1 THEN cast(substr(service_line_information_3,20,8) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_3,20,8))
--, case when length(ltrim(substr(service_line_information_3,28,2))) = 0 then NULL else substr(service_line_information_3,28,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_3,28,2)))) = 0,NULL,SUBSTRING(service_line_information_3,28,2) )
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_3,30,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_3,30,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_3,38,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_3,38,8))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_3,46,7)) = 1 THEN cast(substr(service_line_information_3,46,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_3,46,7))
--, case when length(ltrim(substr(service_line_information_3,53,2))) = 0 then NULL else substr(service_line_information_3,53,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_3,53,2)))) = 0,NULL,SUBSTRING(service_line_information_3,53,2) )
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_3,55,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_3,55,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_3,63,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_3,63,8))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_3,71,7)) = 1 THEN cast(substr(service_line_information_3,71,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_3,71,7))
--, case when length(ltrim(substr(service_line_information_3,78,2))) = 0 then NULL else substr(service_line_information_3,78,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_3,78,2)))) = 0,NULL,SUBSTRING(service_line_information_3,78,2) )
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_3,80,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_3,80,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_3,88,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_3,88,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_3,96,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_3,96,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_3,104,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_3,104,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_3,112,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_3,112,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_3,120,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_3,120,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_3,128,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_3,128,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_3,136,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_3,136,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_3,142,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_3,142,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_3,150,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_3,150,8))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_3,160,7)) = 1 THEN cast(substr(service_line_information_3,160,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_3,160,7))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_3,167,7)) = 1 THEN cast(substr(service_line_information_3,167,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_3,167,7))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_3,174,7)) = 1 THEN cast(substr(service_line_information_3,174,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_3,174,7))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_3,181,7)) = 1 THEN cast(substr(service_line_information_3,181,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_3,181,7))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_3,188,7)) = 1 THEN cast(substr(service_line_information_3,188,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_3,188,7))
--, case when length(ltrim(substr(service_line_information_3,195,2))) = 0 then NULL else substr(service_line_information_3,195,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_3,195,2)))) = 0,NULL,SUBSTRING(service_line_information_3,195,2) )
--, case when length(ltrim(substr(service_line_information_3,197,2))) = 0 then NULL else substr(service_line_information_3,197,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_3,197,2)))) = 0,NULL,SUBSTRING(service_line_information_3,197,2) )
--, case when length(ltrim(substr(service_line_information_3,199,2))) = 0 then NULL else substr(service_line_information_3,199,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_3,199,2)))) = 0,NULL,SUBSTRING(service_line_information_3,199,2) )
--, case when length(ltrim(substr(service_line_information_3,201,2))) = 0 then NULL else substr(service_line_information_3,201,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_3,201,2)))) = 0,NULL,SUBSTRING(service_line_information_3,201,2) )
--, case when length(ltrim(substr(service_line_information_3,203,2))) = 0 then NULL else substr(service_line_information_3,203,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_3,203,2)))) = 0,NULL,SUBSTRING(service_line_information_3,203,2) )
--, case when length(ltrim(substr(service_line_information_3,205,1))) = 0 then NULL else substr(service_line_information_3,205,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_3,205,1)))) = 0,NULL,SUBSTRING(service_line_information_3,205,1) )
--, case when length(ltrim(substr(service_line_information_3,206,1))) = 0 then NULL else substr(service_line_information_3,206,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_3,206,1)))) = 0,NULL,SUBSTRING(service_line_information_3,206,1) )
--, case when length(ltrim(substr(service_line_information_3,207,1))) = 0 then NULL else substr(service_line_information_3,207,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_3,207,1)))) = 0,NULL,SUBSTRING(service_line_information_3,207,1) )
--, case when length(ltrim(substr(service_line_information_3,208,1))) = 0 then NULL else substr(service_line_information_3,208,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_3,208,1)))) = 0,NULL,SUBSTRING(service_line_information_3,208,1) )
--, case when length(ltrim(substr(service_line_information_3,209,1))) = 0 then NULL else substr(service_line_information_3,209,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_3,209,1)))) = 0,NULL,SUBSTRING(service_line_information_3,209,1) )
--, case when length(ltrim(substr(service_line_information_3,210,4))) = 0 then NULL else substr(service_line_information_3,210,4) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_3,210,4)))) = 0,NULL,SUBSTRING(service_line_information_3,210,4) )
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_3,214,11)) = 1 THEN cast(substr(service_line_information_3,214,11) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_3,214,11))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_3,225,11)) = 1 THEN cast(substr(service_line_information_3,225,11) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_3,225,11))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_3,236,11)) = 1 THEN cast(substr(service_line_information_3,236,11) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_3,236,11))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_3,247,7)) = 1 THEN cast(substr(service_line_information_3,247,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_3,247,7))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_3,254,7)) = 1 THEN cast(substr(service_line_information_3,254,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_3,254,7))
--, case when length(ltrim(substr(service_line_information_3,261,1))) = 0 then NULL else substr(service_line_information_3,261,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_3,261,1)))) = 0,NULL,SUBSTRING(service_line_information_3,261,1 ))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_3,262,7)) = 1 THEN cast(substr(service_line_information_3,262,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_3,262,7))
--, case when length(ltrim(substr(service_line_information_3,270,2))) = 0 then NULL else substr(service_line_information_3,270,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_3,270,2)))) = 0,NULL,SUBSTRING(service_line_information_3,270,2 ))
--, case when length(ltrim(substr(service_line_information_3,272,1))) = 0 then NULL else substr(service_line_information_3,272,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_3,272,1)))) = 0,NULL,SUBSTRING(service_line_information_3,272,1))
--, case when length(ltrim(substr(service_line_information_3,273,1))) = 0 then NULL else substr(service_line_information_3,273,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_3,273,1)))) = 0,NULL,SUBSTRING(service_line_information_3,273,1))
--, case when length(ltrim(substr(service_line_information_3,274,1))) = 0 then NULL else substr(service_line_information_3,274,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_3,274,1)))) = 0,NULL,SUBSTRING(service_line_information_3,274,1))
--, case when length(ltrim(substr(service_line_information_3,275,1))) = 0 then NULL else substr(service_line_information_3,275,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_3,275,1)))) = 0,NULL,SUBSTRING(service_line_information_3,275,1))
--, case when length(ltrim(substr(service_line_information_3,276,1))) = 0 then NULL else substr(service_line_information_3,276,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_3,276,1)))) = 0,NULL,SUBSTRING(service_line_information_3,276,1))
 FROM claims.dbo.eldodisbpendheader
 WHERE LEN(LTRIM(RTRIM(service_line_information_3))) > 0;


 INSERT INTO CLAIMS.DBO.ELDODISBPENDLINES (
  POLICY_UNDERWRITER
, GROUP_NUMBER
, CLAIM_NUMBER
, EMPLOYEE_SSN
, BENEFIT_CODE
, FROM_DATE_OF_SERVICE
, THRU_DATE_OF_SERVICE
, BENEFIT_AMOUNT
, BENEFIT_REASON
, FICA_FROM_DATE
, FICA_THRU_DATE
, FICA_AMOUNT
, FICA_REASON
, OFFSET_FROM_DATE
, OFFSET_THRU_DATE
, OFFSET_AMOUNT
, OFFSET_REASON
, OTHER_FROM_DATE_1
, OTHER_FROM_DATE_2
, OTHER_FROM_DATE_3
, OTHER_FROM_DATE_4
, OTHER_FROM_DATE_5
, OTHER_THRU_DATE_1
, OTHER_THRU_DATE_2
, OTHER_THRU_DATE_3
, OTHER_THRU_DATE_4
, OTHER_THRU_DATE_5
, OTHER_AMOUNT_1
, OTHER_AMOUNT_2
, OTHER_AMOUNT_3
, OTHER_AMOUNT_4
, OTHER_AMOUNT_5
, OTHER_REASON_1
, OTHER_REASON_2
, OTHER_REASON_3
, OTHER_REASON_4
, OTHER_REASON_5
, PRE_POST_TAX_FLAG_1
, PRE_POST_TAX_FLAG_2
, PRE_POST_TAX_FLAG_3
, PRE_POST_TAX_FLAG_4
, PRE_POST_TAX_FLAG_5
, PAID_DAYS
, PAYMENT_AMOUNT
, PAID_TO_EMPLOYER
, PAID_TO_EMPLOYEE
, SS_WAGES
, MEDICARE_WAGES
, ROLLOVER_FLAG
, INELIGIBLE_AMOUNT
, ACC_EXCEPTION_BUCKET
, OTHER_AMOUNT_USED_1
, OTHER_AMOUNT_USED_2
, OTHER_AMOUNT_USED_3
, OTHER_AMOUNT_USED_4
, OTHER_AMOUNT_USED_5
 )
 SELECT 
  POLICY_UNDERWRITER
, GROUP_NUMBER
, CLAIM_NUMBER
, EMPLOYEE_SSN
--, case when length(ltrim(substr(service_line_information_4,1,3))) = 0 then NULL else substr(service_line_information_4,1,3) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_4,1,3)))) = 0,NULL,SUBSTRING(service_line_information_4,1,3) )
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_4,4,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_4,4,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_4,12,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_4,12,8))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_4,20,8)) = 1 THEN cast(substr(service_line_information_4,20,8) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_4,20,8))
--, case when length(ltrim(substr(service_line_information_4,28,2))) = 0 then NULL else substr(service_line_information_4,28,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_4,28,2)))) = 0,NULL,SUBSTRING(service_line_information_4,28,2) )
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_4,30,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_4,30,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_4,38,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_4,38,8))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_4,46,7)) = 1 THEN cast(substr(service_line_information_4,46,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_4,46,7))
--, case when length(ltrim(substr(service_line_information_4,53,2))) = 0 then NULL else substr(service_line_information_4,53,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_4,53,2)))) = 0,NULL,SUBSTRING(service_line_information_4,53,2) )
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_4,55,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_4,55,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_4,63,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_4,63,8))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_4,71,7)) = 1 THEN cast(substr(service_line_information_4,71,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_4,71,7))
--, case when length(ltrim(substr(service_line_information_4,78,2))) = 0 then NULL else substr(service_line_information_4,78,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_4,78,2)))) = 0,NULL,SUBSTRING(service_line_information_4,78,2) )
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_4,80,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_4,80,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_4,88,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_4,88,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_4,96,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_4,96,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_4,104,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_4,104,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_4,112,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_4,112,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_4,120,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_4,120,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_4,128,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_4,128,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_4,136,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_4,136,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_4,142,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_4,142,8))
--, CLAIMS.TO_ISO_DATE( CLAIMS.CLEANUP_DATE(substr(service_line_information_4,150,8)))
,dbo.ufn_Convert_to_Date(SUBSTRING(service_line_information_4,150,8))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_4,160,7)) = 1 THEN cast(substr(service_line_information_4,160,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_4,160,7))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_4,167,7)) = 1 THEN cast(substr(service_line_information_4,167,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_4,167,7))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_4,174,7)) = 1 THEN cast(substr(service_line_information_4,174,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_4,174,7))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_4,181,7)) = 1 THEN cast(substr(service_line_information_4,181,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_4,181,7))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_4,188,7)) = 1 THEN cast(substr(service_line_information_4,188,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_4,188,7))
--, case when length(ltrim(substr(service_line_information_4,195,2))) = 0 then NULL else substr(service_line_information_4,195,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_4,195,2)))) = 0,NULL,SUBSTRING(service_line_information_4,195,2) )
--, case when length(ltrim(substr(service_line_information_4,197,2))) = 0 then NULL else substr(service_line_information_4,197,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_4,197,2)))) = 0,NULL,SUBSTRING(service_line_information_4,197,2) )
--, case when length(ltrim(substr(service_line_information_4,199,2))) = 0 then NULL else substr(service_line_information_4,199,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_4,199,2)))) = 0,NULL,SUBSTRING(service_line_information_4,199,2) )
--, case when length(ltrim(substr(service_line_information_4,201,2))) = 0 then NULL else substr(service_line_information_4,201,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_4,201,2)))) = 0,NULL,SUBSTRING(service_line_information_4,201,2) )
--, case when length(ltrim(substr(service_line_information_4,203,2))) = 0 then NULL else substr(service_line_information_4,203,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_4,203,2)))) = 0,NULL,SUBSTRING(service_line_information_4,203,2) )
--, case when length(ltrim(substr(service_line_information_4,205,1))) = 0 then NULL else substr(service_line_information_4,205,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_4,205,1)))) = 0,NULL,SUBSTRING(service_line_information_4,205,1) )
--, case when length(ltrim(substr(service_line_information_4,206,1))) = 0 then NULL else substr(service_line_information_4,206,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_4,206,1)))) = 0,NULL,SUBSTRING(service_line_information_4,206,1) )
--, case when length(ltrim(substr(service_line_information_4,207,1))) = 0 then NULL else substr(service_line_information_4,207,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_4,207,1)))) = 0,NULL,SUBSTRING(service_line_information_4,207,1) )
--, case when length(ltrim(substr(service_line_information_4,208,1))) = 0 then NULL else substr(service_line_information_4,208,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_4,208,1)))) = 0,NULL,SUBSTRING(service_line_information_4,208,1) )
--, case when length(ltrim(substr(service_line_information_4,209,1))) = 0 then NULL else substr(service_line_information_4,209,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_4,209,1)))) = 0,NULL,SUBSTRING(service_line_information_4,209,1) )
--, case when length(ltrim(substr(service_line_information_4,210,4))) = 0 then NULL else substr(service_line_information_4,210,4) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_4,210,4)))) = 0,NULL,SUBSTRING(service_line_information_4,210,4) )
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_4,214,11)) = 1 THEN cast(substr(service_line_information_4,214,11) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_4,214,11))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_4,225,11)) = 1 THEN cast(substr(service_line_information_4,225,11) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_4,225,11))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_4,236,11)) = 1 THEN cast(substr(service_line_information_4,236,11) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_4,236,11))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_4,247,7)) = 1 THEN cast(substr(service_line_information_4,247,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_4,247,7))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_4,254,7)) = 1 THEN cast(substr(service_line_information_4,254,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_4,254,7))
--, case when length(ltrim(substr(service_line_information_4,261,1))) = 0 then NULL else substr(service_line_information_4,261,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_4,261,1)))) = 0,NULL,SUBSTRING(service_line_information_4,261,1 ))
--, case when CLAIMS.ISDECIMALCHECK(substr(service_line_information_4,262,7)) = 1 THEN cast(substr(service_line_information_4,262,7) as decimal(10,2)) ELSE NULL END
,dbo.ufn_Convert_to_Decimal(SUBSTRING(service_line_information_4,262,7))
--, case when length(ltrim(substr(service_line_information_4,270,2))) = 0 then NULL else substr(service_line_information_4,270,2) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_4,270,2)))) = 0,NULL,SUBSTRING(service_line_information_4,270,2 ))
--, case when length(ltrim(substr(service_line_information_4,272,1))) = 0 then NULL else substr(service_line_information_4,272,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_4,272,1)))) = 0,NULL,SUBSTRING(service_line_information_4,272,1))
--, case when length(ltrim(substr(service_line_information_4,273,1))) = 0 then NULL else substr(service_line_information_4,273,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_4,273,1)))) = 0,NULL,SUBSTRING(service_line_information_4,273,1))
--, case when length(ltrim(substr(service_line_information_4,274,1))) = 0 then NULL else substr(service_line_information_4,274,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_4,274,1)))) = 0,NULL,SUBSTRING(service_line_information_4,274,1))
--, case when length(ltrim(substr(service_line_information_4,275,1))) = 0 then NULL else substr(service_line_information_4,275,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_4,275,1)))) = 0,NULL,SUBSTRING(service_line_information_4,275,1))
--, case when length(ltrim(substr(service_line_information_4,276,1))) = 0 then NULL else substr(service_line_information_4,276,1) end
, IIF(LEN(LTRIM(RTRIM(SUBSTRING(service_line_information_4,276,1)))) = 0,NULL,SUBSTRING(service_line_information_4,276,1))
 FROM claims.dbo.eldodisbpendheader
 WHERE LEN(LTRIM(RTRIM(service_line_information_4))) > 0;


DELETE FROM CLAIMS.dbo.ELDODISBPENDLINES where BENEFIT_CODE is NULL

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