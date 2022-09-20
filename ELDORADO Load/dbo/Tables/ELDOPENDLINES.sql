﻿CREATE TABLE [dbo].[ELDOPENDLINES] (
    [POLICY_UNDERWRITER]          VARCHAR (50) NULL,
    [GROUP_NUMBER]                VARCHAR (50) NULL,
    [CLAIM_NUMBER]                VARCHAR (50) NULL,
    [EMPLOYEE_SSN]                VARCHAR (50) NULL,
    [BENEFIT_CODE]                VARCHAR (50) NULL,
    [BENEFIT_CATEGORY]            VARCHAR (50) NULL,
    [FROM_DATE_OF_SERVICE]        VARCHAR (50) NULL,
    [THRU_DATE_OF_SERVICE]        VARCHAR (50) NULL,
    [MCS_DENIED_REASON]           VARCHAR (50) NULL,
    [PLACE_OF_SERVICE]            VARCHAR (50) NULL,
    [TYPE_OF_SERVICE]             VARCHAR (50) NULL,
    [ICD9_POINTER]                VARCHAR (50) NULL,
    [CHARGE_AMOUNT]               VARCHAR (50) NULL,
    [TOTAL_DISALLOWED]            VARCHAR (50) NULL,
    [INELIGIBLE_AMOUNT]           VARCHAR (50) NULL,
    [COPAYMENT_AMOUNT]            VARCHAR (50) NULL,
    [DISCOUNT_AMOUNT]             VARCHAR (50) NULL,
    [DEDUCTIBLE_AMOUNT]           VARCHAR (50) NULL,
    [OVER_USUAL_CUSTOMARY]        VARCHAR (50) NULL,
    [DENIED_BY_MCS]               VARCHAR (50) NULL,
    [PENALTY_AMOUNT]              VARCHAR (50) NULL,
    [OTHER_USER_DEFINED]          VARCHAR (50) NULL,
    [CLAIM_COUNT]                 VARCHAR (50) NULL,
    [NUMBER_OF_SERVICE_DAYS]      VARCHAR (50) NULL,
    [OUT_OF_POCKET_AMOUNT]        VARCHAR (50) NULL,
    [PATIENT_RESPONSIBILITY]      VARCHAR (50) NULL,
    [ANESTHESIA_MINUTES]          VARCHAR (50) NULL,
    [PROVIDER_OF_SERVICE_PTR]     VARCHAR (50) NULL,
    [COINSURANCE_PERCENTAGE]      VARCHAR (50) NULL,
    [PAYMENT_AMOUNT]              VARCHAR (50) NULL,
    [PAID_TO_PROVIDER]            VARCHAR (50) NULL,
    [PAID_TO_PATIENT]             VARCHAR (50) NULL,
    [WITHHOLD_AMOUNT]             VARCHAR (50) NULL,
    [CAPITATED_AMOUNT]            VARCHAR (50) NULL,
    [CAPITATION_ACCOUNT]          VARCHAR (50) NULL,
    [NATIONAL_DRUG_CODE]          VARCHAR (50) NULL,
    [NDC]                         VARCHAR (50) NULL,
    [PROCEDURE_CODE]              VARCHAR (50) NULL,
    [MODIFIERS1]                  VARCHAR (50) NULL,
    [MODIFIERS2]                  VARCHAR (50) NULL,
    [MODIFIERS3]                  VARCHAR (50) NULL,
    [BILLED_PROCEDURE]            VARCHAR (50) NULL,
    [INELIGIBLE_REASON_CODE]      VARCHAR (50) NULL,
    [OVER_UC_REASON_CODE]         VARCHAR (50) NULL,
    [DISCOUNT_REASON_CODE]        VARCHAR (50) NULL,
    [COPAYMENT_REASON_CODE]       VARCHAR (50) NULL,
    [DENIED_BY_MCS_REASON_CODE]   VARCHAR (50) NULL,
    [PENALTY_REASON_CODE]         VARCHAR (50) NULL,
    [NOT_COVERED_OTH_REASON_CODE] VARCHAR (50) NULL,
    [DEDUCTIBLE_ACCUM_BUCKET]     VARCHAR (50) NULL,
    [OUTOFPOCKET_ACCUM_BUCKET]    VARCHAR (50) NULL,
    [OUTOFPOCKET_TYPE]            VARCHAR (50) NULL,
    [BENEFIT_EXCEPTION_BUCKET]    VARCHAR (50) NULL,
    [COPAYMENT_ACCUM_BUCKET]      VARCHAR (50) NULL,
    [HISTORY_BUCKET_POINTER]      VARCHAR (50) NULL,
    [HISTORY_ENTRY_POINTER]       VARCHAR (50) NULL,
    [MCS_CLAIM_LINE]              VARCHAR (50) NULL,
    [ROLLOVER_OCCURED]            VARCHAR (50) NULL,
    [COPAYMENTS_TAKEN]            VARCHAR (50) NULL,
    [AMOUNT_DENIED_BY_MCS]        VARCHAR (50) NULL,
    [WHERE_AMOUNT_SHOUD_APPLY]    VARCHAR (50) NULL,
    [TYPE_COB]                    VARCHAR (50) NULL,
    [COB_AMOUNT_EMPLOYEE]         VARCHAR (50) NULL,
    [COB_AMOUNT_PROVIDER]         VARCHAR (50) NULL,
    [CR_RSRV_ALLOW_NOT_PAID]      VARCHAR (50) NULL,
    [CR_RSRV_ALLOW_AMOUNT]        VARCHAR (50) NULL,
    [CR_RSRV_SAVINGS_AMOUNT]      VARCHAR (50) NULL,
    [CR_RSRV_COB_CREDITS]         VARCHAR (50) NULL,
    [OTHER_INSURANCE_PAID]        VARCHAR (50) NULL,
    [UPDATE_COB_TO_ACCUMS]        VARCHAR (50) NULL,
    [BENEFIT_ACCUM_EVENT_ID]      VARCHAR (50) NULL,
    [REVENUE_CODE]                VARCHAR (50) NULL,
    [SURCHARGE_ADDED_TO_CLAIM]    VARCHAR (50) NULL,
    [TAX_TO_BE_PAID_ON_CLAIM]     VARCHAR (50) NULL,
    [LOAD_DATE]                   VARCHAR (50) NULL
);
