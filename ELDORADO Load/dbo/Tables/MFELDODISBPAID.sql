﻿CREATE TABLE [dbo].[MFELDODISBPAID] (
    [POLICY_UNDERWRITER]           VARCHAR (3)   NULL,
    [GROUP_NUMBER]                 VARCHAR (3)   NULL,
    [CLAIM_NUMBER]                 VARCHAR (11)  NULL,
    [EMPLOYEE_SSN]                 VARCHAR (9)   NULL,
    [DEPENDENT_SEQUENCE_NUMBER]    VARCHAR (2)   NULL,
    [RELATIONSHIP_TO_EMPLOYEE]     VARCHAR (1)   NULL,
    [PATIENT_STATUS]               VARCHAR (1)   NULL,
    [PATIENT_DATE_OF_BIRTH]        VARCHAR (8)   NULL,
    [EMPLOYEE_DEPARTMENT]          VARCHAR (8)   NULL,
    [DATE_OF_ELIGIBILITY_ENTRY]    VARCHAR (8)   NULL,
    [PATIENT_FIRST_NAME]           VARCHAR (15)  NULL,
    [PATIENT_LAST_NAME]            VARCHAR (20)  NULL,
    [CLAIM_STATUS]                 VARCHAR (1)   NULL,
    [INPUT_BY]                     VARCHAR (6)   NULL,
    [INPUT_DATE]                   VARCHAR (8)   NULL,
    [RECEIVED_DATE]                VARCHAR (8)   NULL,
    [PAID_DATE]                    VARCHAR (8)   NULL,
    [ADJUDICATION_DATE]            VARCHAR (8)   NULL,
    [PLAN_YEAR]                    VARCHAR (4)   NULL,
    [DEDUCTIBLE_YEAR]              VARCHAR (4)   NULL,
    [CHANGED_BY]                   VARCHAR (6)   NULL,
    [CHANGED_DATE]                 VARCHAR (8)   NULL,
    [PROCESSED_DATE]               VARCHAR (8)   NULL,
    [LAST_DAY_WORKED_DATE]         VARCHAR (8)   NULL,
    [RETURN_TO_WORK_DATE]          VARCHAR (8)   NULL,
    [FIRST_PHYSICIAN_VISIT_DATE]   VARCHAR (8)   NULL,
    [LAST_PHYSICIAN_VISIT_DATE]    VARCHAR (8)   NULL,
    [WAITING_PERIOD_BEGIN_DATE]    VARCHAR (8)   NULL,
    [BENEFIT_BEGIN_DATE]           VARCHAR (8)   NULL,
    [ICD9_DIAGNOSIS_CODE_1]        VARCHAR (8)   NULL,
    [ICD9_DIAGNOSIS_CODE_2]        VARCHAR (8)   NULL,
    [ICD9_DIAGNOSIS_CODE_3]        VARCHAR (8)   NULL,
    [ICD9_DIAGNOSIS_CODE_4]        VARCHAR (8)   NULL,
    [CLAIM_CAUSE]                  VARCHAR (1)   NULL,
    [HOSPITALIZED]                 VARCHAR (1)   NULL,
    [OTHER_CAUSE]                  VARCHAR (1)   NULL,
    [EMPLOYMENT_RELATED]           VARCHAR (1)   NULL,
    [KEY_TO_PROVIDER_FILE]         VARCHAR (8)   NULL,
    [PROVIDER_TAX_ID]              VARCHAR (9)   NULL,
    [PROVIDER_NAME]                VARCHAR (25)  NULL,
    [CHECKING_ACCOUNT_USED_1]      VARCHAR (8)   NULL,
    [CHECKING_ACCOUNT_USED_2]      VARCHAR (8)   NULL,
    [CHECKING_ACCOUNT_USED_3]      VARCHAR (8)   NULL,
    [CHECK_NUMBER_USED_1]          VARCHAR (20)  NULL,
    [CHECK_NUMBER_USED_2]          VARCHAR (20)  NULL,
    [CHECK_NUMBER_USED_3]          VARCHAR (20)  NULL,
    [PAYMENT_TYPE_1]               VARCHAR (3)   NULL,
    [PAYMENT_TYPE_2]               VARCHAR (3)   NULL,
    [PAYMENT_TYPE_3]               VARCHAR (3)   NULL,
    [NET_PAYMENT_AMOUNT_1]         VARCHAR (11)  NULL,
    [NET_PAYMENT_AMOUNT_2]         VARCHAR (11)  NULL,
    [NET_PAYMENT_AMOUNT_3]         VARCHAR (11)  NULL,
    [ADJUSTMENT_AMOUNT_1]          VARCHAR (11)  NULL,
    [ADJUSTMENT_AMOUNT_2]          VARCHAR (11)  NULL,
    [ADJUSTMENT_AMOUNT_3]          VARCHAR (11)  NULL,
    [PAYEE]                        VARCHAR (1)   NULL,
    [EMPLOYEE_SALARY]              VARCHAR (8)   NULL,
    [PRE_APPROVED_PAYMENT_WEEKS]   VARCHAR (3)   NULL,
    [FICA_PERCENT]                 VARCHAR (3)   NULL,
    [FICA_PERCENT_REMAINING]       VARCHAR (3)   NULL,
    [STOP_PAYING_FICA]             VARCHAR (1)   NULL,
    [NUMBER_OF_SERVICE_LINES_USED] VARCHAR (1)   NULL,
    [SERVICE_LINE_INFORMATION_1]   VARCHAR (800) NULL,
    [SERVICE_LINE_INFORMATION_2]   VARCHAR (800) NULL,
    [SERVICE_LINE_INFORMATION_3]   VARCHAR (800) NULL,
    [SERVICE_LINE_INFORMATION_4]   VARCHAR (800) NULL,
    [BENEFIT_AMOUNT]               VARCHAR (8)   NULL,
    [FICA_AMOUNT]                  VARCHAR (7)   NULL,
    [OFFSET_AMOUNT]                VARCHAR (7)   NULL,
    [OTHER_AMOUNT_1]               VARCHAR (7)   NULL,
    [OTHER_AMOUNT_2]               VARCHAR (7)   NULL,
    [OTHER_AMOUNT_3]               VARCHAR (7)   NULL,
    [OTHER_AMOUNT_4]               VARCHAR (7)   NULL,
    [OTHER_AMOUNT_5]               VARCHAR (7)   NULL,
    [SS_WAGES]                     VARCHAR (7)   NULL,
    [MEDICARE_WAGES]               VARCHAR (7)   NULL,
    [TOTAL_CLAIM_PAID]             VARCHAR (11)  NULL,
    [TOTAL_PAID_TO_EMPLOYER]       VARCHAR (11)  NULL,
    [TOTAL_PAID_TO_EMPLOYEE_1]     VARCHAR (11)  NULL,
    [TOTAL_PAID_TO_EMPLOYEE_2]     VARCHAR (11)  NULL,
    [PRODUCT_CODE]                 VARCHAR (2)   NULL,
    [PLAN_CODE_USED]               VARCHAR (10)  NULL,
    [PLAN_EFFECTIVE_DATE]          VARCHAR (8)   NULL,
    [CLAIM_SOURCE]                 VARCHAR (1)   NULL,
    [PLAN_TYPE]                    VARCHAR (1)   NULL,
    [EOB_MESSAGE_KEY]              VARCHAR (3)   NULL,
    [CLAIM_REMARKS]                VARCHAR (150) NULL,
    [PENDED_REASON_CODE]           VARCHAR (3)   NULL,
    [HOLD_CLAIM]                   VARCHAR (1)   NULL,
    [CLAIM_RESERVED]               VARCHAR (1)   NULL,
    [OVERRIDE_CODE]                VARCHAR (2)   NULL,
    [ADJUSTMENT_REASON_CODE]       VARCHAR (4)   NULL,
    [ADJUSTMENT_CLAIM]             VARCHAR (1)   NULL,
    [MANUAL_WORKFLOW_QUEUE]        VARCHAR (10)  NULL,
    [CLAIM_CONVERTED]              VARCHAR (1)   NULL,
    [CLAIM_ACC_REBUILD]            VARCHAR (1)   NULL,
    [CLAIM_CONVERED_DATE]          VARCHAR (8)   NULL,
    [CONVERTED_CLAIMS_1099]        VARCHAR (1)   NULL,
    [FORM_TYPE]                    VARCHAR (1)   NULL,
    [CLAIM_NUMBERING_CONNECTION_1] VARCHAR (11)  NULL,
    [CLAIM_NUMBERING_CONNECTION_2] VARCHAR (11)  NULL,
    [CLAIM_NUMBERING_CONNECTION_3] VARCHAR (11)  NULL,
    [CLAIM_NUMBERING_CONNECTION_4] VARCHAR (11)  NULL,
    [CLAIM_VERSION]                VARCHAR (2)   NULL,
    [TIFF_IMAGE_IDENTIFIER]        VARCHAR (30)  NULL,
    [MAIL_ROUTING_CODE]            VARCHAR (2)   NULL,
    [ALT_PAY_FLAG]                 VARCHAR (1)   NULL,
    [ALT_PROV_KEY]                 VARCHAR (8)   NULL,
    [ALT_PAYEE_SSN]                VARCHAR (9)   NULL,
    [ALT_PAYEE_FIRST_NAME]         VARCHAR (15)  NULL,
    [ALT_PAYEE_LAST_NAME]          VARCHAR (15)  NULL,
    [ALT_PAYEE_ADDRESS_LINE_ONE]   VARCHAR (30)  NULL,
    [ALT_PAYEE_ADDRESS_LINE_TWO]   VARCHAR (30)  NULL,
    [ALT_PAYEE_CITY]               VARCHAR (15)  NULL,
    [ALT_PAYEE_STATE]              VARCHAR (2)   NULL,
    [ALT_PAYEE_ZIP_CODE]           VARCHAR (9)   NULL,
    [ACCUMULATOR_EVENT]            VARCHAR (8)   NULL,
    [ACCUMULATOR_EVENT_YEAR]       VARCHAR (4)   NULL,
    [HOLD_PAY]                     VARCHAR (1)   NULL,
    [IS_EFT_CHECK_1]               VARCHAR (1)   NULL,
    [IS_EFT_CHECK_2]               VARCHAR (1)   NULL,
    [IS_EFT_CHECK_3]               VARCHAR (1)   NULL,
    [APPROVED_FROM_DATE]           VARCHAR (8)   NULL,
    [APPROVED_THRU_DATE]           VARCHAR (8)   NULL,
    [CLOSED_DATE]                  VARCHAR (8)   NULL,
    [EARLIEST_BENEFIT_FDOS]        VARCHAR (8)   NULL,
    [ORIGINAL_BENEFIT_FDOS]        VARCHAR (8)   NULL,
    [TOTAL_PAID_DAYS]              VARCHAR (4)   NULL,
    [BALANCE_FORWARD]              VARCHAR (1)   NULL,
    [LOAD_DATE]                    DATE          DEFAULT (CONVERT([date],getdate())) NOT NULL
);

