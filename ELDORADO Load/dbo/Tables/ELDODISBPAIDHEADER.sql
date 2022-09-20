﻿CREATE TABLE [dbo].[ELDODISBPAIDHEADER] (
    [POLICY_UNDERWRITER]                                                                                                       VARCHAR (50)   NULL,
    [GROUP_NUMBER]                                                                                                             VARCHAR (50)   NULL,
    [CLAIM_NUMBER]                                                                                                             VARCHAR (50)   NULL,
    [EMPLOYEE_SSN]                                                                                                             VARCHAR (50)   NULL,
    [DEPENDENT_SEQUENCE_NUMBER]                                                                                                VARCHAR (50)   NULL,
    [RELATIONSHIP_TO_EMPLOYEE]                                                                                                 VARCHAR (50)   NULL,
    [PATIENT_STATUS]                                                                                                           VARCHAR (50)   NULL,
    [PATIENT_DATE_OF_BIRTH]                                                                                                    VARCHAR (50)   NULL,
    [EMPLOYEE_DEPARTMENT]                                                                                                      VARCHAR (50)   NULL,
    [DATE_OF_ELIGIBILITY_ENTRY]                                                                                                VARCHAR (50)   NULL,
    [PATIENT_FIRST_NAME]                                                                                                       VARCHAR (50)   NULL,
    [PATIENT_LAST_NAME]                                                                                                        VARCHAR (50)   NULL,
    [CLAIM_STATUS]                                                                                                             VARCHAR (50)   NULL,
    [INPUT_BY]                                                                                                                 VARCHAR (50)   NULL,
    [INPUT_DATE]                                                                                                               VARCHAR (50)   NULL,
    [RECEIVED_DATE]                                                                                                            VARCHAR (50)   NULL,
    [PAID_DATE ]                                                                                                               VARCHAR (50)   NULL,
    [ADJUDICATION_DATE]                                                                                                        VARCHAR (50)   NULL,
    [PLAN_YEAR]                                                                                                                VARCHAR (50)   NULL,
    [DEDUCTIBLE_YEAR]                                                                                                          VARCHAR (50)   NULL,
    [CHANGED_BY]                                                                                                               VARCHAR (50)   NULL,
    [CHANGED_DATE]                                                                                                             VARCHAR (50)   NULL,
    [PROCESSED_DATE]                                                                                                           VARCHAR (50)   NULL,
    [LAST_DAY_WORKED_DATE]                                                                                                     VARCHAR (50)   NULL,
    [RETURN_TO_WORK_DATE]                                                                                                      VARCHAR (50)   NULL,
    [FIRST_PHYSICIAN_VISIT_DATE]                                                                                               VARCHAR (50)   NULL,
    [LAST_PHYSICIAN_VISIT_DATE]                                                                                                VARCHAR (50)   NULL,
    [WAITING_PERIOD_BEGIN_DATE]                                                                                                VARCHAR (50)   NULL,
    [BENEFIT_BEGIN_DATE]                                                                                                       VARCHAR (50)   NULL,
    [ICD9_DIAGNOSIS_CODE_1]                                                                                                    VARCHAR (50)   NULL,
    [ICD9_DIAGNOSIS_CODE_2]                                                                                                    VARCHAR (50)   NULL,
    [ICD9_DIAGNOSIS_CODE_3]                                                                                                    VARCHAR (50)   NULL,
    [ICD9_DIAGNOSIS_CODE_4]                                                                                                    VARCHAR (50)   NULL,
    [CLAIM_CAUSE]                                                                                                              VARCHAR (50)   NULL,
    [HOSPITALIZED]                                                                                                             VARCHAR (50)   NULL,
    [OTHER_CAUSE]                                                                                                              VARCHAR (50)   NULL,
    [EMPLOYMENT_RELATED]                                                                                                       VARCHAR (50)   NULL,
    [KEY_TO_PROVIDER_FILE]                                                                                                     VARCHAR (50)   NULL,
    [PROVIDER_TAX_ID]                                                                                                          VARCHAR (50)   NULL,
    [PROVIDER_NAME    ]                                                                                                        VARCHAR (50)   NULL,
    [CHECKING_ACCOUNT_USED_1]                                                                                                  VARCHAR (50)   NULL,
    [CHECKING_ACCOUNT_USED_2]                                                                                                  VARCHAR (50)   NULL,
    [CHECKING_ACCOUNT_USED_3]                                                                                                  VARCHAR (50)   NULL,
    [CHECK_NUMBER_USED_1]                                                                                                      VARCHAR (50)   NULL,
    [CHECK_NUMBER_USED_2 ]                                                                                                     VARCHAR (50)   NULL,
    [CHECK_NUMBER_USED_3]                                                                                                      VARCHAR (50)   NULL,
    [NET_PAYMENT_AMOUNT_1]                                                                                                     VARCHAR (50)   NULL,
    [NET_PAYMENT_AMOUNT_2]                                                                                                     VARCHAR (50)   NULL,
    [NET_PAYMENT_AMOUNT_3]                                                                                                     VARCHAR (50)   NULL,
    [ADJUSTMENT_AMOUNT_1]                                                                                                      VARCHAR (50)   NULL,
    [ADJUSTMENT_AMOUNT_2]                                                                                                      VARCHAR (50)   NULL,
    [ADJUSTMENT_AMOUNT_3]                                                                                                      VARCHAR (50)   NULL,
    [PAYEE]                                                                                                                    VARCHAR (50)   NULL,
    [EMPLOYEE_SALARY]                                                                                                          VARCHAR (50)   NULL,
    [PRE_APPROVED_PAYMENT_WEEKS]                                                                                               VARCHAR (50)   NULL,
    [FICA_PERCENT]                                                                                                             VARCHAR (50)   NULL,
    [FICA_PERCENT_REMAINING]                                                                                                   VARCHAR (50)   NULL,
    [STOP_PAYING_FICA]                                                                                                         VARCHAR (50)   NULL,
    [NUMBER_OF_SERVICE_LINES_USED]                                                                                             VARCHAR (50)   NULL,
    [SERVICE_LINE_INFORMATION_1 ]                                                                                              VARCHAR (1000) NULL,
    [SERVICE_LINE_INFORMATION_2]                                                                                               VARCHAR (1000) NULL,
    [SERVICE_LINE_INFORMATION_3]                                                                                               VARCHAR (1000) NULL,
    [SERVICE_LINE_INFORMATION_4]                                                                                               VARCHAR (1000) NULL,
    [BENEFIT_AMOUNT]                                                                                                           VARCHAR (400)  NULL,
    [FICA_AMOUNT]                                                                                                              VARCHAR (50)   NULL,
    [OFFSET_AMOUNT]                                                                                                            VARCHAR (50)   NULL,
    [OTHER_AMOUNT_1]                                                                                                           VARCHAR (50)   NULL,
    [OTHER_AMOUNT_2]                                                                                                           VARCHAR (50)   NULL,
    [OTHER_AMOUNT_3]                                                                                                           VARCHAR (50)   NULL,
    [OTHER_AMOUNT_4]                                                                                                           VARCHAR (50)   NULL,
    [OTHER_AMOUNT_5]                                                                                                           VARCHAR (50)   NULL,
    [SS_WAGES]                                                                                                                 VARCHAR (50)   NULL,
    [MEDICARE_WAGES]                                                                                                           VARCHAR (50)   NULL,
    [TOTAL_CLAIM_PAID]                                                                                                         VARCHAR (50)   NULL,
    [TOTAL_PAID_TO_EMPLOYER]                                                                                                   VARCHAR (50)   NULL,
    [TOTAL_PAID_TO_EMPLOYEE_1]                                                                                                 VARCHAR (50)   NULL,
    [TOTAL_PAID_TO_EMPLOYEE_2]                                                                                                 VARCHAR (50)   NULL,
    [PRODUCT_CODE]                                                                                                             VARCHAR (50)   NULL,
    [PLAN_CODE_USED]                                                                                                           VARCHAR (50)   NULL,
    [PLAN_EFFECTIVE_DATE]                                                                                                      VARCHAR (50)   NULL,
    [CLAIM_SOURCE]                                                                                                             VARCHAR (50)   NULL,
    [PLAN_TYPE]                                                                                                                VARCHAR (50)   NULL,
    [EOB_MESSAGE_KEY]                                                                                                          VARCHAR (50)   NULL,
    [CLAIM_REMARKS                                                                                                           ] VARCHAR (MAX)  NULL,
    [PENDED_REASON_CODE]                                                                                                       VARCHAR (150)  NULL,
    [HOLD_CLAIM]                                                                                                               VARCHAR (50)   NULL,
    [CLAIM_RESERVED]                                                                                                           VARCHAR (50)   NULL,
    [OVERRIDE_CODE]                                                                                                            VARCHAR (50)   NULL,
    [ADJUSTMENT_REASON_CODE]                                                                                                   VARCHAR (50)   NULL,
    [ADJUSTMENT_CLAIM]                                                                                                         VARCHAR (50)   NULL,
    [MANUAL_WORKFLOW_QUEUE]                                                                                                    VARCHAR (50)   NULL,
    [CLAIM_CONVERTED]                                                                                                          VARCHAR (50)   NULL,
    [CLAIM_ACC_REBUILD]                                                                                                        VARCHAR (50)   NULL,
    [CLAIM_CONVERED_DATE]                                                                                                      VARCHAR (50)   NULL,
    [CONVERTED_CLAIMS_1099]                                                                                                    VARCHAR (50)   NULL,
    [FORM_TYPE]                                                                                                                VARCHAR (50)   NULL,
    [CLAIM_NUMBERING_CONNECTION_1]                                                                                             VARCHAR (50)   NULL,
    [CLAIM_NUMBERING_CONNECTION_2]                                                                                             VARCHAR (50)   NULL,
    [CLAIM_NUMBERING_CONNECTION_3]                                                                                             VARCHAR (50)   NULL,
    [CLAIM_NUMBERING_CONNECTION_4]                                                                                             VARCHAR (50)   NULL,
    [CLAIM_VERSION]                                                                                                            VARCHAR (50)   NULL,
    [TIFF_IMAGE_IDENTIFIER]                                                                                                    VARCHAR (50)   NULL,
    [MAIL_ROUTING_CODE]                                                                                                        VARCHAR (50)   NULL,
    [ALT_PAY_FLAG]                                                                                                             VARCHAR (50)   NULL,
    [ALT_PROV_KEY]                                                                                                             VARCHAR (50)   NULL,
    [ALT_PAYEE_SSN]                                                                                                            VARCHAR (50)   NULL,
    [ALT_PAYEE_FIRST_NAME]                                                                                                     VARCHAR (50)   NULL,
    [ALT_PAYEE_LAST_NAME]                                                                                                      VARCHAR (50)   NULL,
    [ALT_PAYEE_ADDRESS_LINE_ONE]                                                                                               VARCHAR (50)   NULL,
    [ALT_PAYEE_ADDRESS_LINE_TWO]                                                                                               VARCHAR (50)   NULL,
    [ALT_PAYEE_CITY]                                                                                                           VARCHAR (50)   NULL,
    [ALT_PAYEE_STATE]                                                                                                          VARCHAR (50)   NULL,
    [ALT_PAYEE_ZIP_CODE]                                                                                                       VARCHAR (50)   NULL,
    [ACCUMULATOR_EVENT]                                                                                                        VARCHAR (50)   NULL,
    [ACCUMULATOR_EVENT_YEAR]                                                                                                   VARCHAR (50)   NULL,
    [HOLD_PAY]                                                                                                                 VARCHAR (50)   NULL,
    [IS_EFT_CHECK]                                                                                                             VARCHAR (50)   NULL,
    [APPROVED_FROM_DATE]                                                                                                       VARCHAR (50)   NULL,
    [APPROVED_THRU_DATE]                                                                                                       VARCHAR (50)   NULL,
    [CLOSED_DATE]                                                                                                              VARCHAR (50)   NULL,
    [EARLIEST_BENEFIT_FDOS]                                                                                                    VARCHAR (50)   NULL,
    [ORIGINAL_BENEFIT_FDOS]                                                                                                    VARCHAR (50)   NULL,
    [TOTAL_PAID_DAYS]                                                                                                          VARCHAR (50)   NULL,
    [BALANCE_FORWARD]                                                                                                          VARCHAR (50)   NULL,
    [LOAD_DATE ]                                                                                                               VARCHAR (50)   NULL,
    [PAYMENT_TYPE_1]                                                                                                           VARCHAR (50)   NULL,
    [PAYMENT_TYPE_2]                                                                                                           VARCHAR (50)   NULL,
    [PAYMENT_TYPE_3]                                                                                                           VARCHAR (50)   NULL,
    [IS_EFT_CHECK_1]                                                                                                           VARCHAR (50)   NULL,
    [IS_EFT_CHECK_2]                                                                                                           VARCHAR (50)   NULL,
    [IS_EFT_CHECK_3]                                                                                                           VARCHAR (50)   NULL
);

