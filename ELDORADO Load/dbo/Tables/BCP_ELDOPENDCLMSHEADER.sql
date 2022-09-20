﻿CREATE TABLE [dbo].[BCP_ELDOPENDCLMSHEADER] (
    [POLICY_UNDERWRITER]             VARCHAR (3)     NOT NULL,
    [GROUP_NUMBER]                   VARCHAR (3)     NOT NULL,
    [CLAIM_NUMBER]                   VARCHAR (11)    NOT NULL,
    [EMPLOYEE_SSN]                   VARCHAR (9)     NOT NULL,
    [DEPENDENT_SEQUENCE_NUMBER]      DECIMAL (2)     NOT NULL,
    [RELATIONSHIP_TO_EMPLOYEE]       VARCHAR (1)     NOT NULL,
    [PATIENT_STATUS]                 VARCHAR (1)     NULL,
    [PATIENT_DATE_OF_BIRTH]          DATE            NULL,
    [EMPLOYEE_DEPARTMENT]            VARCHAR (8)     NULL,
    [DATE_OF_ELIGIBILITY_ENTRY]      DATE            NULL,
    [CLAIM_STATUS]                   VARCHAR (1)     NULL,
    [REPRICING_STATUS]               VARCHAR (1)     NULL,
    [MCS_CLAIM_NUMBER]               VARCHAR (18)    NULL,
    [CASEPAC_CASE_NUMBER]            VARCHAR (8)     NULL,
    [PRECERT_NUMBER]                 VARCHAR (8)     NULL,
    [REFERRAL_NUMBER]                VARCHAR (8)     NULL,
    [ALTERNATE_ID_1]                 VARCHAR (20)    NULL,
    [ALTERNATE_ID_2]                 VARCHAR (20)    NULL,
    [ALTERNATE_ID_3]                 VARCHAR (20)    NULL,
    [INPUT_BY]                       VARCHAR (6)     NULL,
    [INPUT_DATE]                     DATE            NULL,
    [RECEIVED_DATE]                  DATE            NULL,
    [PAID_DATE]                      DATE            NULL,
    [INCURRED_DATE]                  DATE            NULL,
    [PPO_PRICING_SENT_DATE]          DATE            NULL,
    [PLAN_YEAR]                      VARCHAR (4)     NULL,
    [DEDUCTIBLE_YEAR]                VARCHAR (4)     NULL,
    [CHANGED_BY]                     VARCHAR (6)     NULL,
    [CHANGED_DATE]                   DATE            NULL,
    [PROCESSED_DATE]                 DATE            NULL,
    [DIAGNOSIS_PAYMENT_GROUP]        VARCHAR (3)     NULL,
    [ICD9_DIAGNOSIS_CODE_1]          VARCHAR (8)     NULL,
    [ICD9_DIAGNOSIS_CODE_2]          VARCHAR (8)     NULL,
    [ICD9_DIAGNOSIS_CODE_3]          VARCHAR (8)     NULL,
    [ICD9_DIAGNOSIS_CODE_4]          VARCHAR (8)     NULL,
    [DIAGNOSIS_CATEGORY]             VARCHAR (30)    NULL,
    [DRG_NUMBER]                     VARCHAR (3)     NULL,
    [NUMBER_OF_PROVIDERS_ON_CLAIM]   VARCHAR (1)     NULL,
    [KEY_TO_PROVIDER_FILE_1]         VARCHAR (8)     NULL,
    [KEY_TO_PROVIDER_FILE_2]         VARCHAR (8)     NULL,
    [KEY_TO_PROVIDER_FILE_3]         VARCHAR (8)     NULL,
    [KEY_TO_PROVIDER_FILE_4]         VARCHAR (8)     NULL,
    [PROVIDER_TAX_ID_1]              VARCHAR (9)     NULL,
    [PROVIDER_TAX_ID_2]              VARCHAR (9)     NULL,
    [PROVIDER_TAX_ID_3]              VARCHAR (9)     NULL,
    [PROVIDER_TAX_ID_4]              VARCHAR (9)     NULL,
    [PROVIDER_ACCOUNT_NUMBER_1]      VARCHAR (20)    NULL,
    [PROVIDER_ACCOUNT_NUMBER_2]      VARCHAR (20)    NULL,
    [PROVIDER_ACCOUNT_NUMBER_3]      VARCHAR (20)    NULL,
    [PROVIDER_ACCOUNT_NUMBER_4]      VARCHAR (20)    NULL,
    [NETWORK_CODE_USED_1]            VARCHAR (5)     NULL,
    [NETWORK_CODE_USED_2]            VARCHAR (5)     NULL,
    [NETWORK_CODE_USED_3]            VARCHAR (5)     NULL,
    [NETWORK_CODE_USED_4]            VARCHAR (5)     NULL,
    [PENALTY_PLAN_USED_1]            VARCHAR (1)     NULL,
    [PENALTY_PLAN_USED_2]            VARCHAR (1)     NULL,
    [PENALTY_PLAN_USED_3]            VARCHAR (1)     NULL,
    [PENALTY_PLAN_USED_4]            VARCHAR (1)     NULL,
    [CHECKING_ACCOUNT_USED_1]        VARCHAR (8)     NULL,
    [CHECKING_ACCOUNT_USED_2]        VARCHAR (8)     NULL,
    [CHECKING_ACCOUNT_USED_3]        VARCHAR (8)     NULL,
    [CHECKING_ACCOUNT_USED_4]        VARCHAR (8)     NULL,
    [CHECKING_ACCOUNT_USED_5]        VARCHAR (8)     NULL,
    [CHECK_NUMBER_USED_1]            VARCHAR (20)    NULL,
    [CHECK_NUMBER_USED_2]            VARCHAR (20)    NULL,
    [CHECK_NUMBER_USED_3]            VARCHAR (20)    NULL,
    [CHECK_NUMBER_USED_4]            VARCHAR (20)    NULL,
    [CHECK_NUMBER_USED_5]            VARCHAR (20)    NULL,
    [NET_PAYMENT_AMOUNT_1]           DECIMAL (11, 2) NULL,
    [NET_PAYMENT_AMOUNT_2]           DECIMAL (11, 2) NULL,
    [NET_PAYMENT_AMOUNT_3]           DECIMAL (11, 2) NULL,
    [NET_PAYMENT_AMOUNT_4]           DECIMAL (11, 2) NULL,
    [NET_PAYMENT_AMOUNT_5]           DECIMAL (11, 2) NULL,
    [ADJUSTMENT_AMOUNT_1]            DECIMAL (11, 2) NULL,
    [ADJUSTMENT_AMOUNT_2]            DECIMAL (11, 2) NULL,
    [ADJUSTMENT_AMOUNT_3]            DECIMAL (11, 2) NULL,
    [ADJUSTMENT_AMOUNT_4]            DECIMAL (11, 2) NULL,
    [ADJUSTMENT_AMOUNT_5]            DECIMAL (11, 2) NULL,
    [NUMBER_OF_SERVICE_LINES_USED]   VARCHAR (1)     NULL,
    [TOTAL_CHARGE_AMOUNT]            DECIMAL (11, 2) NULL,
    [TOTAL_DISALLOWED]               DECIMAL (11, 2) NULL,
    [TOTAL_INELIGIBLE]               DECIMAL (11, 2) NULL,
    [TOTAL_COPAYMENT]                DECIMAL (11, 2) NULL,
    [TOTAL_OVER_UC]                  DECIMAL (11, 2) NULL,
    [TOTAL_PROVIDER_DISCOUNTS]       DECIMAL (11, 2) NULL,
    [TOTAL_DENIED_BY_MCS]            DECIMAL (11, 2) NULL,
    [TOTAL_DEDUCTIBLE]               DECIMAL (11, 2) NULL,
    [TOTAL_PENALTY_AMOUNT]           DECIMAL (11, 2) NULL,
    [TOTAL_NOT_COVERED_OTHER]        DECIMAL (11, 2) NULL,
    [TOTAL_COINSURANCE]              DECIMAL (11, 2) NULL,
    [TOTAL_OUTOFPOCKET]              DECIMAL (11, 2) NULL,
    [TOTAL_PATIENT_RESPONSIBILITY]   DECIMAL (11, 2) NULL,
    [TOTAL_CLAIM_PAID]               DECIMAL (11, 2) NULL,
    [TOTAL_PAID_TO_PROVIDERS_1]      DECIMAL (11, 2) NULL,
    [TOTAL_PAID_TO_PROVIDERS_2]      DECIMAL (11, 2) NULL,
    [TOTAL_PAID_TO_PROVIDERS_3]      DECIMAL (11, 2) NULL,
    [TOTAL_PAID_TO_PROVIDERS_4]      DECIMAL (11, 2) NULL,
    [TOTAL_PAID_TO_EMPLOYEE]         DECIMAL (11, 2) NULL,
    [COB_LEVEL_APPLIED_FLAG]         VARCHAR (1)     NULL,
    [COB_SAVINGS]                    DECIMAL (11, 2) NULL,
    [COB_ALLOWED_NOT_PAID]           VARCHAR (11)    NULL,
    [COB_ADJUSTMENT_1]               DECIMAL (11, 2) NULL,
    [COB_ADJUSTMENT_2]               DECIMAL (11, 2) NULL,
    [COB_ADJUSTMENT_3]               DECIMAL (11, 2) NULL,
    [COB_ADJUSTMENT_4]               DECIMAL (11, 2) NULL,
    [COB_ADJUSTMENT_5]               DECIMAL (11, 2) NULL,
    [TYPE_COB]                       VARCHAR (1)     NULL,
    [CR_RESERVE_ALLOWED_NOT_PAID]    DECIMAL (11, 2) NULL,
    [CR_RESERVE_ALLOWED_AMOUNT]      DECIMAL (11, 2) NULL,
    [CR_RESERVE_SAVINGS_AMOUNT]      DECIMAL (11, 2) NULL,
    [CR_RESERVE_COB_CREDITS]         DECIMAL (11, 2) NULL,
    [OTHER_INSURANCE_PAID]           DECIMAL (11, 2) NULL,
    [UPDATE_COB_TO_ACCUMS]           VARCHAR (1)     NULL,
    [PRODUCT_CODE]                   VARCHAR (2)     NULL,
    [POLICY_FILE_KEY_USED_1]         VARCHAR (20)    NULL,
    [POLICY_FILE_KEY_USED_2]         VARCHAR (20)    NULL,
    [POLICY_FILE_KEY_USED_3]         VARCHAR (20)    NULL,
    [POLICY_FILE_KEY_USED_4]         VARCHAR (20)    NULL,
    [POLICY_FILE_KEY_USED_5]         VARCHAR (20)    NULL,
    [CLASS_CODE_USED]                VARCHAR (1)     NULL,
    [PLAN_CODE_USED]                 VARCHAR (9)     NULL,
    [REPRICED_BY]                    VARCHAR (1)     NULL,
    [HEALTHPAC_PRICING_DATA]         VARCHAR (10)    NULL,
    [EOB_MESSAGE_KEY]                VARCHAR (3)     NULL,
    [CLAIM_REMARKS_1]                VARCHAR (75)    NULL,
    [CLAIM_REMARKS_2]                VARCHAR (75)    NULL,
    [PENDED_REASON_CODE]             VARCHAR (3)     NULL,
    [HOLD_CLAIM_FROM_PAYMENT]        VARCHAR (1)     NULL,
    [HOLD_CLAIM_FOR_STOP_LOSS]       VARCHAR (1)     NULL,
    [CLAIM_RESERVED_BY_ENDDAY]       VARCHAR (1)     NULL,
    [TOOTH_CHART_INFORMATION]        VARCHAR (1)     NULL,
    [INDIVIDUAL_DEDUCTIBLE_MET_1]    DECIMAL (11, 2) NULL,
    [INDIVIDUAL_DEDUCTIBLE_MET_2]    DECIMAL (11, 2) NULL,
    [INDIVIDUAL_DEDUCTIBLE_MET_3]    DECIMAL (11, 2) NULL,
    [INDIVIDUAL_DEDUCTIBLE_MET_4]    DECIMAL (11, 2) NULL,
    [INDIVIDUAL_DEDUCTIBLE_MET_5]    DECIMAL (11, 2) NULL,
    [FAMILY_DEDUCTIBLE_MET_1]        DECIMAL (11, 2) NULL,
    [FAMILY_DEDUCTIBLE_MET_2]        DECIMAL (11, 2) NULL,
    [FAMILY_DEDUCTIBLE_MET_3]        DECIMAL (11, 2) NULL,
    [FAMILY_DEDUCTIBLE_MET_4]        DECIMAL (11, 2) NULL,
    [FAMILY_DEDUCTIBLE_MET_5]        DECIMAL (11, 2) NULL,
    [INDIVIDUAL_DEDUCTIBLE_MAX_1]    DECIMAL (11, 2) NULL,
    [INDIVIDUAL_DEDUCTIBLE_MAX_2]    DECIMAL (11, 2) NULL,
    [INDIVIDUAL_DEDUCTIBLE_MAX_3]    DECIMAL (11, 2) NULL,
    [INDIVIDUAL_DEDUCTIBLE_MAX_4]    DECIMAL (11, 2) NULL,
    [INDIVIDUAL_DEDUCTIBLE_MAX_5]    DECIMAL (11, 2) NULL,
    [FAMILY_DEDUCTIBLE_MAX_1]        DECIMAL (11, 2) NULL,
    [FAMILY_DEDUCTIBLE_MAX_2]        DECIMAL (11, 2) NULL,
    [FAMILY_DEDUCTIBLE_MAX_3]        DECIMAL (11, 2) NULL,
    [FAMILY_DEDUCTIBLE_MAX_4]        DECIMAL (11, 2) NULL,
    [FAMILY_DEDUCTIBLE_MAX_5]        DECIMAL (11, 2) NULL,
    [INDIVIDUAL_OUTOFPOCKET_MET_1]   DECIMAL (11, 2) NULL,
    [INDIVIDUAL_OUTOFPOCKET_MET_2]   DECIMAL (11, 2) NULL,
    [INDIVIDUAL_OUTOFPOCKET_MET_3]   DECIMAL (11, 2) NULL,
    [INDIVIDUAL_OUTOFPOCKET_MET_4]   DECIMAL (11, 2) NULL,
    [INDIVIDUAL_OUTOFPOCKET_MET_5]   DECIMAL (11, 2) NULL,
    [FAMILY_OUTOFPOCKET_MET_1]       DECIMAL (11, 2) NULL,
    [FAMILY_OUTOFPOCKET_MET_2]       DECIMAL (11, 2) NULL,
    [FAMILY_OUTOFPOCKET_MET_3]       DECIMAL (11, 2) NULL,
    [FAMILY_OUTOFPOCKET_MET_4]       DECIMAL (11, 2) NULL,
    [FAMILY_OUTOFPOCKET_MET_5]       DECIMAL (11, 2) NULL,
    [INDIVIDUAL_OUTOFPOCKET_MAX_1]   DECIMAL (11, 2) NULL,
    [INDIVIDUAL_OUTOFPOCKET_MAX_2]   DECIMAL (11, 2) NULL,
    [INDIVIDUAL_OUTOFPOCKET_MAX_3]   DECIMAL (11, 2) NULL,
    [INDIVIDUAL_OUTOFPOCKET_MAX_4]   DECIMAL (11, 2) NULL,
    [INDIVIDUAL_OUTOFPOCKET_MAX_5]   DECIMAL (11, 2) NULL,
    [FAMILY_OUTOFPOCKET_MAX_1]       DECIMAL (11, 2) NULL,
    [FAMILY_OUTOFPOCKET_MAX_2]       DECIMAL (11, 2) NULL,
    [FAMILY_OUTOFPOCKET_MAX_3]       DECIMAL (11, 2) NULL,
    [FAMILY_OUTOFPOCKET_MAX_4]       DECIMAL (11, 2) NULL,
    [FAMILY_OUTOFPOCKET_MAX_5]       DECIMAL (11, 2) NULL,
    [CLAIM_CONVERTED]                VARCHAR (1)     NULL,
    [CLAIM_USE_REBUILD]              VARCHAR (1)     NULL,
    [CLAIM_CONVERTED_DATE]           DATE            NULL,
    [CONV_CLAIM_1099]                VARCHAR (1)     NULL,
    [FORM_TYPE]                      VARCHAR (1)     NULL,
    [CLAIM_NUMBERING_CONNECTION_1]   VARCHAR (11)    NULL,
    [CLAIM_NUMBERING_CONNECTION_2]   VARCHAR (11)    NULL,
    [CLAIM_NUMBERING_CONNECTION_3]   VARCHAR (11)    NULL,
    [CLAIM_NUMBERING_CONNECTION_4]   VARCHAR (11)    NULL,
    [UB92_CLAIM_LEVEL_DISCOUNT_1]    DECIMAL (11, 2) NULL,
    [UB92_CLAIM_LEVEL_DISCOUNT_2]    DECIMAL (11, 2) NULL,
    [UB92_CLAIM_LEVEL_DISCOUNT_3]    DECIMAL (11, 2) NULL,
    [UB92_CLAIM_LEVEL_DISCOUNT_4]    DECIMAL (11, 2) NULL,
    [KEY_TO_PPO_NETWORK_USED_1]      VARCHAR (21)    NULL,
    [KEY_TO_PPO_NETWORK_USED_2]      VARCHAR (21)    NULL,
    [KEY_TO_PPO_NETWORK_USED_3]      VARCHAR (21)    NULL,
    [KEY_TO_PPO_NETWORK_USED_4]      VARCHAR (21)    NULL,
    [PRECERTIFICATION_OBTAINED_1]    VARCHAR (1)     NULL,
    [PRECERTIFICATION_OBTAINED_2]    VARCHAR (1)     NULL,
    [PRECERTIFICATION_OBTAINED_3]    VARCHAR (1)     NULL,
    [PRECERTIFICATION_OBTAINED_4]    VARCHAR (1)     NULL,
    [PRECERTIFICATION_OBTAINED_5]    VARCHAR (1)     NULL,
    [TIFF_IMAGE_IDENTIFIER]          VARCHAR (30)    NULL,
    [MAIL_ROUTING_CODE]              VARCHAR (2)     NULL,
    [TAX_TYPE_USED]                  VARCHAR (2)     NULL,
    [LOAD_DATE]                      DATE            DEFAULT (CONVERT([date],getdate())) NULL,
    [ATTACH_IND]                     CHAR (1)        NULL,
    [PLAN_EFFECTIVE_DATE]            DATE            NULL,
    [CLAIM_PLNFILL]                  CHAR (1)        NULL,
    [STANDARD_IND_DEDUCTIBLE_MET]    DECIMAL (11, 2) NULL,
    [STANDARD_FAMILY_DEDUCTIBLE_MET] DECIMAL (11, 2) NULL,
    [STANDARD_IND_DEDUCT_MAXIMUM]    DECIMAL (11, 2) NULL,
    [STANDARD_FAMILY_DEDUCT_MAXIMUM] DECIMAL (11, 2) NULL,
    [STANDARD_IND_OUT_POCKET_MET]    DECIMAL (11, 2) NULL,
    [STANDARD_FAMILY_OUT_POCKET_MET] DECIMAL (11, 2) NULL,
    [STANDARD_IND_OUTPKT_MAXIMUM]    DECIMAL (11, 2) NULL,
    [STANDARD_FAMILY_OUTPKT_MAXIMUM] DECIMAL (11, 2) NULL,
    [CLAIM_ADJ_REASON_CODE]          VARCHAR (4)     NULL,
    [CLAIM_ADJUST]                   CHAR (1)        NULL,
    [MANUAL_WORKFLOW_QUEUE]          VARCHAR (10)    NULL,
    [CLAIM_INC_DATE]                 VARCHAR (249)   NULL,
    [CLAIM_UB92PROC_1]               VARCHAR (8)     NULL,
    [CLAIM_UB92PROC_2]               VARCHAR (8)     NULL,
    [CLAIM_UB92PROC_3]               VARCHAR (8)     NULL,
    [CLAIM_UB92PROC_4]               VARCHAR (8)     NULL,
    [CLAIM_UB92PROC_5]               VARCHAR (8)     NULL,
    [CLAIM_UB92PROC_6]               VARCHAR (8)     NULL,
    [CLAIM_VERSION]                  CHAR (2)        NULL,
    [CLAIM_ALT_PROVIDER_ID]          VARCHAR (8)     NULL,
    [CLAIM_ALTPAYFG]                 CHAR (1)        NULL,
    [CLAIM_HCISENT]                  CHAR (1)        NULL,
    [CLAIM_OVERFLAG]                 CHAR (1)        NULL,
    [CLAIM_PX_CAT_KEY]               VARCHAR (36)    NULL,
    [CLAIM_PER_OCC_ACC_EVENT]        VARCHAR (8)     NULL,
    [CLAIM_REFERAL]                  CHAR (1)        NULL,
    [CLAIM_REFSCHD_USED]             VARCHAR (26)    NULL,
    [CLAIM_TOTAL_VISITS]             CHAR (4)        NULL,
    [CLAIM_ACEVYR]                   CHAR (4)        NULL,
    [CLAIM_REFSCHD]                  VARCHAR (26)    NULL,
    [CLAIM_DVISITS]                  CHAR (4)        NULL,
    [CLAIM_PER_OCC_ACC_EVENT_YR]     CHAR (4)        NULL,
    [CLAIM_FILLER]                   VARCHAR (33)    NULL,
    [DIRIGO_SAVINGS_OFFSET_PREMIUMS] VARCHAR (1)     NULL,
    [AMPS_OUT_OF_NETWORK_NEGOTIATED] VARCHAR (1)     NULL,
    [PAID_BY_STOP_LOSS_CARRIER]      VARCHAR (1)     NULL,
    [CLAIM_NOT_ALLOWED_CHECK_RUN]    VARCHAR (1)     NULL,
    [ACCOUNT_TYPE]                   VARCHAR (1)     NULL,
    [ALLOWED_VISITS]                 VARCHAR (4)     NULL,
    [AMPS_OO_NETWORK_NEGOTIATED_2]   VARCHAR (1)     NULL,
    [PAID_BY_STOPLOSS_2]             VARCHAR (1)     NULL,
    [HLDGRP_PAID]                    VARCHAR (1)     NULL,
    [ACCOUNT_TYPE_2]                 VARCHAR (1)     NULL,
    [LFSA_PROD]                      VARCHAR (2)     NULL,
    [EFT_CHECK1]                     VARCHAR (1)     NULL,
    [EFT_CHECK2]                     VARCHAR (1)     NULL,
    [EFT_CHECK3]                     VARCHAR (1)     NULL,
    [EFT_CHECK4]                     VARCHAR (1)     NULL,
    [EFT_CHECK5]                     VARCHAR (1)     NULL,
    [PMCS_INDICATOR]                 VARCHAR (1)     NULL,
    [PMCS_CLAIM_ID]                  VARCHAR (8)     NULL,
    [PMCS_DUE_DATE]                  DATE            NULL,
    [ORIG_PAYMENT_FOR_PMCS_ADJ]      VARCHAR (12)    NULL,
    [ICD_CODE_1]                     VARCHAR (8)     NULL,
    [ICD_CODE_2]                     VARCHAR (8)     NULL,
    [ICD_CODE_3]                     VARCHAR (8)     NULL,
    [ICD_CODE_4]                     VARCHAR (8)     NULL,
    [ICD_CODE_5]                     VARCHAR (8)     NULL,
    [ICD_CODE_6]                     VARCHAR (8)     NULL,
    [ICD_CODE_7]                     VARCHAR (8)     NULL,
    [ICD_CODE_8]                     VARCHAR (8)     NULL,
    [ICD_VERSION]                    VARCHAR (2)     NULL,
    [CLAIM_VENDOR]                   VARCHAR (1)     NULL,
    [VENDOR_CHECK]                   VARCHAR (1)     NULL,
    [EPAY]                           VARCHAR (1)     NULL,
    [OOP_ACCUMULATOR]                VARCHAR (12)    NULL,
    [DED_ACCUMULATOR]                VARCHAR (12)    NULL,
    [EPAY_835]                       VARCHAR (1)     NULL
);

