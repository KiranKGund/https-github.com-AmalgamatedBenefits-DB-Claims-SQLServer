﻿CREATE TABLE [dbo].[ELDOPENDHEADER] (
    [POLICY_UNDERWRITER]             VARCHAR (50)  NULL,
    [GROUP_NUMBER]                   VARCHAR (50)  NULL,
    [CLAIM_NUMBER]                   VARCHAR (50)  NULL,
    [EMPLOYEE_SSN]                   VARCHAR (50)  NULL,
    [DEPENDENT_SEQUENCE_NUMBER]      VARCHAR (50)  NULL,
    [RELATIONSHIP_TO_EMPLOYEE]       VARCHAR (50)  NULL,
    [PATIENT_STATUS]                 VARCHAR (50)  NULL,
    [PATIENT_DATE_OF_BIRTH]          VARCHAR (50)  NULL,
    [EMPLOYEE_DEPARTMENT]            VARCHAR (50)  NULL,
    [DATE_OF_ELIGIBILITY_ENTRY]      VARCHAR (50)  NULL,
    [CLAIM_STATUS]                   VARCHAR (50)  NULL,
    [REPRICING_STATUS]               VARCHAR (50)  NULL,
    [MCS_CLAIM_NUMBER  ]             VARCHAR (50)  NULL,
    [CASEPAC_CASE_NUMBER]            VARCHAR (50)  NULL,
    [PRECERT_NUMBER]                 VARCHAR (50)  NULL,
    [REFERRAL_NUMBER]                VARCHAR (50)  NULL,
    [ALTERNATE_ID_1]                 VARCHAR (50)  NULL,
    [ALTERNATE_ID_2]                 VARCHAR (50)  NULL,
    [ALTERNATE_ID_3]                 VARCHAR (50)  NULL,
    [INPUT_BY]                       VARCHAR (50)  NULL,
    [INPUT_DATE]                     VARCHAR (50)  NULL,
    [RECEIVED_DATE]                  VARCHAR (50)  NULL,
    [PAID_DATE ]                     VARCHAR (50)  NULL,
    [INCURRED_DATE]                  VARCHAR (50)  NULL,
    [PPO_PRICING_SENT_DATE]          VARCHAR (50)  NULL,
    [PLAN_YEAR]                      VARCHAR (50)  NULL,
    [DEDUCTIBLE_YEAR]                VARCHAR (50)  NULL,
    [CHANGED_BY]                     VARCHAR (50)  NULL,
    [CHANGED_DATE]                   VARCHAR (50)  NULL,
    [PROCESSED_DATE]                 VARCHAR (50)  NULL,
    [DIAGNOSIS_PAYMENT_GROUP]        VARCHAR (50)  NULL,
    [ICD9_DIAGNOSIS_CODE_1]          VARCHAR (50)  NULL,
    [ICD9_DIAGNOSIS_CODE_2]          VARCHAR (50)  NULL,
    [ICD9_DIAGNOSIS_CODE_3]          VARCHAR (50)  NULL,
    [ICD9_DIAGNOSIS_CODE_4]          VARCHAR (50)  NULL,
    [DIAGNOSIS_CATEGORY]             VARCHAR (50)  NULL,
    [DRG_NUMBER]                     VARCHAR (50)  NULL,
    [NUMBER_OF_PROVIDERS_ON_CLAIM]   VARCHAR (50)  NULL,
    [KEY_TO_PROVIDER_FILE_1]         VARCHAR (50)  NULL,
    [KEY_TO_PROVIDER_FILE_2]         VARCHAR (50)  NULL,
    [KEY_TO_PROVIDER_FILE_3]         VARCHAR (50)  NULL,
    [KEY_TO_PROVIDER_FILE_4]         VARCHAR (50)  NULL,
    [PROVIDER_TAX_ID_1]              VARCHAR (50)  NULL,
    [PROVIDER_TAX_ID_2]              VARCHAR (50)  NULL,
    [PROVIDER_TAX_ID_3]              VARCHAR (50)  NULL,
    [PROVIDER_TAX_ID_4]              VARCHAR (50)  NULL,
    [PROVIDER_ACCOUNT_NUMBER_1]      VARCHAR (50)  NULL,
    [PROVIDER_ACCOUNT_NUMBER_2]      VARCHAR (50)  NULL,
    [PROVIDER_ACCOUNT_NUMBER_3]      VARCHAR (50)  NULL,
    [PROVIDER_ACCOUNT_NUMBER_4]      VARCHAR (50)  NULL,
    [NETWORK_CODE_USED_1]            VARCHAR (50)  NULL,
    [NETWORK_CODE_USED_2]            VARCHAR (50)  NULL,
    [NETWORK_CODE_USED_3]            VARCHAR (50)  NULL,
    [NETWORK_CODE_USED_4]            VARCHAR (50)  NULL,
    [PENALTY_PLAN_USED_1]            VARCHAR (50)  NULL,
    [PENALTY_PLAN_USED_2]            VARCHAR (50)  NULL,
    [PENALTY_PLAN_USED_3]            VARCHAR (50)  NULL,
    [PENALTY_PLAN_USED_4]            VARCHAR (50)  NULL,
    [CHECKING_ACCOUNT_USED_1]        VARCHAR (50)  NULL,
    [CHECKING_ACCOUNT_USED_2]        VARCHAR (50)  NULL,
    [CHECKING_ACCOUNT_USED_3]        VARCHAR (50)  NULL,
    [CHECKING_ACCOUNT_USED_4]        VARCHAR (50)  NULL,
    [CHECKING_ACCOUNT_USED_5]        VARCHAR (50)  NULL,
    [CHECK_NUMBER_USED_1]            VARCHAR (50)  NULL,
    [CHECK_NUMBER_USED_2]            VARCHAR (50)  NULL,
    [CHECK_NUMBER_USED_3]            VARCHAR (50)  NULL,
    [CHECK_NUMBER_USED_4]            VARCHAR (50)  NULL,
    [CHECK_NUMBER_USED_5]            VARCHAR (50)  NULL,
    [NET_PAYMENT_AMOUNT_1]           VARCHAR (50)  NULL,
    [NET_PAYMENT_AMOUNT_2]           VARCHAR (50)  NULL,
    [NET_PAYMENT_AMOUNT_3]           VARCHAR (50)  NULL,
    [NET_PAYMENT_AMOUNT_4]           VARCHAR (50)  NULL,
    [NET_PAYMENT_AMOUNT_5]           VARCHAR (50)  NULL,
    [ADJUSTMENT_AMOUNT_1]            VARCHAR (50)  NULL,
    [ADJUSTMENT_AMOUNT_2]            VARCHAR (50)  NULL,
    [ADJUSTMENT_AMOUNT_3]            VARCHAR (50)  NULL,
    [ADJUSTMENT_AMOUNT_4]            VARCHAR (50)  NULL,
    [ADJUSTMENT_AMOUNT_5]            VARCHAR (50)  NULL,
    [NUMBER_OF_SERVICE_LINES_USED]   VARCHAR (50)  NULL,
    [TOTAL_CHARGE_AMOUNT]            VARCHAR (50)  NULL,
    [TOTAL_DISALLOWED]               VARCHAR (50)  NULL,
    [TOTAL_INELIGIBLE]               VARCHAR (50)  NULL,
    [TOTAL_COPAYMENT]                VARCHAR (50)  NULL,
    [TOTAL_OVER_UC]                  VARCHAR (50)  NULL,
    [TOTAL_PROVIDER_DISCOUNTS]       VARCHAR (50)  NULL,
    [TOTAL_DENIED_BY_MCS]            VARCHAR (50)  NULL,
    [TOTAL_DEDUCTIBLE]               VARCHAR (50)  NULL,
    [TOTAL_PENALTY_AMOUNT]           VARCHAR (50)  NULL,
    [TOTAL_NOT_COVERED_OTHER]        VARCHAR (50)  NULL,
    [TOTAL_COINSURANCE]              VARCHAR (50)  NULL,
    [TOTAL_OUTOFPOCKET]              VARCHAR (50)  NULL,
    [TOTAL_PATIENT_RESPONSIBILITY]   VARCHAR (50)  NULL,
    [TOTAL_CLAIM_PAID]               VARCHAR (50)  NULL,
    [TOTAL_PAID_TO_PROVIDERS_1]      VARCHAR (50)  NULL,
    [TOTAL_PAID_TO_PROVIDERS_2]      VARCHAR (50)  NULL,
    [TOTAL_PAID_TO_PROVIDERS_3]      VARCHAR (50)  NULL,
    [TOTAL_PAID_TO_PROVIDERS_4]      VARCHAR (50)  NULL,
    [TOTAL_PAID_TO_EMPLOYEE]         VARCHAR (50)  NULL,
    [COB_LEVEL_APPLIED_FLAG]         VARCHAR (50)  NULL,
    [COB_SAVINGS]                    VARCHAR (50)  NULL,
    [COB_ALLOWED_NOT_PAID]           VARCHAR (50)  NULL,
    [COB_ADJUSTMENT_1]               VARCHAR (50)  NULL,
    [COB_ADJUSTMENT_2]               VARCHAR (50)  NULL,
    [COB_ADJUSTMENT_3]               VARCHAR (50)  NULL,
    [COB_ADJUSTMENT_4]               VARCHAR (50)  NULL,
    [COB_ADJUSTMENT_5]               VARCHAR (50)  NULL,
    [TYPE_COB]                       VARCHAR (50)  NULL,
    [CR_RESERVE_ALLOWED_NOT_PAID]    VARCHAR (50)  NULL,
    [CR_RESERVE_ALLOWED_AMOUNT]      VARCHAR (50)  NULL,
    [CR_RESERVE_SAVINGS_AMOUNT]      VARCHAR (50)  NULL,
    [CR_RESERVE_COB_CREDITS]         VARCHAR (50)  NULL,
    [OTHER_INSURANCE_PAID]           VARCHAR (50)  NULL,
    [UPDATE_COB_TO_ACCUMS]           VARCHAR (50)  NULL,
    [PRODUCT_CODE]                   VARCHAR (50)  NULL,
    [POLICY_FILE_KEY_USED_1]         VARCHAR (50)  NULL,
    [POLICY_FILE_KEY_USED_2]         VARCHAR (50)  NULL,
    [POLICY_FILE_KEY_USED_3]         VARCHAR (50)  NULL,
    [POLICY_FILE_KEY_USED_4]         VARCHAR (50)  NULL,
    [POLICY_FILE_KEY_USED_5]         VARCHAR (50)  NULL,
    [CLASS_CODE_USED]                VARCHAR (50)  NULL,
    [PLAN_CODE_USED]                 VARCHAR (50)  NULL,
    [REPRICED_BY]                    VARCHAR (50)  NULL,
    [HEALTHPAC_PRICING_DATA]         VARCHAR (50)  NULL,
    [EOB_MESSAGE_KEY]                VARCHAR (50)  NULL,
    [CLAIM_REMARKS_1   ]             VARCHAR (150) NULL,
    [CLAIM_REMARKS_2]                VARCHAR (150) NULL,
    [PENDED_REASON_CODE]             VARCHAR (50)  NULL,
    [HOLD_CLAIM_FROM_PAYMENT]        VARCHAR (50)  NULL,
    [HOLD_CLAIM_FOR_STOP_LOSS]       VARCHAR (50)  NULL,
    [CLAIM_RESERVED_BY_ENDDAY]       VARCHAR (50)  NULL,
    [TOOTH_CHART_INFORMATION]        VARCHAR (50)  NULL,
    [INDIVIDUAL_DEDUCTIBLE_MET_1]    VARCHAR (50)  NULL,
    [INDIVIDUAL_DEDUCTIBLE_MET_2]    VARCHAR (50)  NULL,
    [INDIVIDUAL_DEDUCTIBLE_MET_3]    VARCHAR (50)  NULL,
    [INDIVIDUAL_DEDUCTIBLE_MET_4]    VARCHAR (50)  NULL,
    [INDIVIDUAL_DEDUCTIBLE_MET_5]    VARCHAR (50)  NULL,
    [FAMILY_DEDUCTIBLE_MET_1]        VARCHAR (50)  NULL,
    [FAMILY_DEDUCTIBLE_MET_2]        VARCHAR (50)  NULL,
    [FAMILY_DEDUCTIBLE_MET_3]        VARCHAR (50)  NULL,
    [FAMILY_DEDUCTIBLE_MET_4]        VARCHAR (50)  NULL,
    [FAMILY_DEDUCTIBLE_MET_5]        VARCHAR (50)  NULL,
    [INDIVIDUAL_DEDUCTIBLE_MAX_1]    VARCHAR (50)  NULL,
    [INDIVIDUAL_DEDUCTIBLE_MAX_2]    VARCHAR (50)  NULL,
    [INDIVIDUAL_DEDUCTIBLE_MAX_3]    VARCHAR (50)  NULL,
    [INDIVIDUAL_DEDUCTIBLE_MAX_4]    VARCHAR (50)  NULL,
    [INDIVIDUAL_DEDUCTIBLE_MAX_5]    VARCHAR (50)  NULL,
    [FAMILY_DEDUCTIBLE_MAX_1]        VARCHAR (50)  NULL,
    [FAMILY_DEDUCTIBLE_MAX_2]        VARCHAR (50)  NULL,
    [FAMILY_DEDUCTIBLE_MAX_3]        VARCHAR (50)  NULL,
    [FAMILY_DEDUCTIBLE_MAX_4]        VARCHAR (50)  NULL,
    [FAMILY_DEDUCTIBLE_MAX_5]        VARCHAR (50)  NULL,
    [INDIVIDUAL_OUTOFPOCKET_MET_1]   VARCHAR (50)  NULL,
    [INDIVIDUAL_OUTOFPOCKET_MET_2]   VARCHAR (50)  NULL,
    [INDIVIDUAL_OUTOFPOCKET_MET_3]   VARCHAR (50)  NULL,
    [INDIVIDUAL_OUTOFPOCKET_MET_4]   VARCHAR (50)  NULL,
    [INDIVIDUAL_OUTOFPOCKET_MET_5]   VARCHAR (50)  NULL,
    [FAMILY_OUTOFPOCKET_MET_1]       VARCHAR (50)  NULL,
    [FAMILY_OUTOFPOCKET_MET_2]       VARCHAR (50)  NULL,
    [FAMILY_OUTOFPOCKET_MET_3]       VARCHAR (50)  NULL,
    [FAMILY_OUTOFPOCKET_MET_4]       VARCHAR (50)  NULL,
    [FAMILY_OUTOFPOCKET_MET_5]       VARCHAR (50)  NULL,
    [INDIVIDUAL_OUTOFPOCKET_MAX_1]   VARCHAR (50)  NULL,
    [INDIVIDUAL_OUTOFPOCKET_MAX_2]   VARCHAR (50)  NULL,
    [INDIVIDUAL_OUTOFPOCKET_MAX_3]   VARCHAR (50)  NULL,
    [INDIVIDUAL_OUTOFPOCKET_MAX_4]   VARCHAR (50)  NULL,
    [INDIVIDUAL_OUTOFPOCKET_MAX_5]   VARCHAR (50)  NULL,
    [FAMILY_OUTOFPOCKET_MAX_1]       VARCHAR (50)  NULL,
    [FAMILY_OUTOFPOCKET_MAX_2]       VARCHAR (50)  NULL,
    [FAMILY_OUTOFPOCKET_MAX_3]       VARCHAR (50)  NULL,
    [FAMILY_OUTOFPOCKET_MAX_4]       VARCHAR (50)  NULL,
    [FAMILY_OUTOFPOCKET_MAX_5]       VARCHAR (50)  NULL,
    [CLAIM_CONVERTED]                VARCHAR (50)  NULL,
    [CLAIM_USE_REBUILD]              VARCHAR (50)  NULL,
    [CLAIM_CONVERTED_DATE]           VARCHAR (50)  NULL,
    [CONV_CLAIM_1099]                VARCHAR (50)  NULL,
    [FORM_TYPE]                      VARCHAR (50)  NULL,
    [CLAIM_NUMBERING_CONNECTION_1]   VARCHAR (50)  NULL,
    [CLAIM_NUMBERING_CONNECTION_2]   VARCHAR (50)  NULL,
    [CLAIM_NUMBERING_CONNECTION_3]   VARCHAR (50)  NULL,
    [CLAIM_NUMBERING_CONNECTION_4]   VARCHAR (50)  NULL,
    [UB92_CLAIM_LEVEL_DISCOUNT_1]    VARCHAR (50)  NULL,
    [UB92_CLAIM_LEVEL_DISCOUNT_2]    VARCHAR (50)  NULL,
    [UB92_CLAIM_LEVEL_DISCOUNT_3]    VARCHAR (50)  NULL,
    [UB92_CLAIM_LEVEL_DISCOUNT_4]    VARCHAR (50)  NULL,
    [KEY_TO_PPO_NETWORK_USED_1]      VARCHAR (50)  NULL,
    [KEY_TO_PPO_NETWORK_USED_2]      VARCHAR (50)  NULL,
    [KEY_TO_PPO_NETWORK_USED_3]      VARCHAR (50)  NULL,
    [KEY_TO_PPO_NETWORK_USED_4]      VARCHAR (50)  NULL,
    [PRECERTIFICATION_OBTAINED_1]    VARCHAR (50)  NULL,
    [PRECERTIFICATION_OBTAINED_2]    VARCHAR (50)  NULL,
    [PRECERTIFICATION_OBTAINED_3]    VARCHAR (50)  NULL,
    [PRECERTIFICATION_OBTAINED_4]    VARCHAR (50)  NULL,
    [PRECERTIFICATION_OBTAINED_5]    VARCHAR (50)  NULL,
    [TIFF_IMAGE_IDENTIFIER         ] VARCHAR (50)  NULL,
    [MAIL_ROUTING_CODE]              VARCHAR (50)  NULL,
    [TAX_TYPE_USED]                  VARCHAR (50)  NULL,
    [LOAD_DATE]                      VARCHAR (50)  NULL
);

