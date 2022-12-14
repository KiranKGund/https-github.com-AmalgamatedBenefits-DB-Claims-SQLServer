CREATE TABLE [dbo].[MFELDOEMPLOYEENEW] (
    [POLICY_UNDERWRITER_NUMBER]     VARCHAR (3)   NOT NULL,
    [GROUP_NUMBER]                  VARCHAR (3)   NOT NULL,
    [EMPLOYEE_SSN]                  VARCHAR (9)   NOT NULL,
    [DATE_LAST_CHANGED]             VARCHAR (8)   NULL,
    [CHANGE_BY]                     VARCHAR (6)   NULL,
    [EMPLOYEE_CERTIFICATE_NUMBER]   VARCHAR (12)  NULL,
    [EMPLOYEE_LAST_NAME]            VARCHAR (15)  NULL,
    [EMPLOYEE_FIRST_NAME]           VARCHAR (15)  NULL,
    [EMPLOYEE_MIDDLE_INITIAL]       VARCHAR (1)   NULL,
    [EMPLOYEE_NAME_SUFFIX]          VARCHAR (6)   NULL,
    [EMPLOYEE_NAME]                 VARCHAR (30)  NULL,
    [ADDRESS_LINE_1]                VARCHAR (30)  NULL,
    [ADDRESS_LINE_2]                VARCHAR (30)  NULL,
    [CITY]                          VARCHAR (15)  NULL,
    [STATE]                         VARCHAR (2)   NULL,
    [ZIP_CODE]                      VARCHAR (9)   NULL,
    [PROCEDURE_LOCATION_CODE]       VARCHAR (3)   NULL,
    [HOME_PHONE_NUMBER]             VARCHAR (10)  NULL,
    [WORK_PHONE_NUMBER]             VARCHAR (10)  NULL,
    [DEPARTMENT_NUMBER]             VARCHAR (8)   NULL,
    [SEX]                           VARCHAR (1)   NULL,
    [DATE_OF_BIRTH]                 VARCHAR (8)   NULL,
    [HIRED_DATE]                    VARCHAR (8)   NULL,
    [DATE_OF_FIRST_ENROLLMENT]      VARCHAR (8)   NULL,
    [LEAVING_REASON]                VARCHAR (1)   NULL,
    [LAST_BILLING_DATE]             VARCHAR (8)   NULL,
    [NUMBER_OF_DEPENDENTS]          VARCHAR (2)   NULL,
    [NUMBER_OF_DEPENDENTS_ON_FILE]  VARCHAR (2)   NULL,
    [XTRA_1]                        VARCHAR (1)   NULL,
    [SPECIAL_CODES]                 VARCHAR (10)  NULL,
    [NOTES_1]                       VARCHAR (40)  NULL,
    [NOTES_2]                       VARCHAR (40)  NULL,
    [BENEFICIARY_NAME]              VARCHAR (30)  NULL,
    [LIFETIME_PENSION_CREDITS]      VARCHAR (5)   NULL,
    [PENSION_YR_LFTIME_CR]          VARCHAR (2)   NULL,
    [XTRA_2]                        VARCHAR (1)   NULL,
    [PREMIUMS_PAID_UNTIL]           VARCHAR (8)   NULL,
    [PCS_CARD_SELECT]               VARCHAR (1)   NULL,
    [PCS_CARD_REASON]               VARCHAR (2)   NULL,
    [PCS_CARD_COMPLETE_DATE]        VARCHAR (8)   NULL,
    [TAKE_OVER_STATUS]              VARCHAR (1)   NULL,
    [MEDICALLY_UNDERWRITTEN]        VARCHAR (1)   NULL,
    [COBRA_RECORD_FOR_EMPLOYEE]     VARCHAR (1)   NULL,
    [MARIED_OR_SINGLE]              VARCHAR (1)   NULL,
    [DATE_MARRIED]                  VARCHAR (8)   NULL,
    [ID_CARD_SELECT]                VARCHAR (1)   NULL,
    [ID_CARD_FORMAT]                VARCHAR (12)  NULL,
    [ID_CARD_RUN_DATE]              VARCHAR (8)   NULL,
    [LABEL_SELECT]                  VARCHAR (1)   NULL,
    [LABEL_FORMAT]                  VARCHAR (12)  NULL,
    [LABEL_RUN_DATE]                VARCHAR (8)   NULL,
    [CERTIFICATE_SELECT]            VARCHAR (1)   NULL,
    [CERTIFICATE_CARD_FORMAT]       VARCHAR (12)  NULL,
    [CERTIFICATE_RUN_DATE]          VARCHAR (8)   NULL,
    [NUMBER_CHECKS_WRITTEN]         VARCHAR (6)   NULL,
    [DOLLAR_VALUE_OF_CHECKS]        VARCHAR (12)  NULL,
    [RPE_ID]                        VARCHAR (3)   NULL,
    [RPE_MASTER_ID]                 VARCHAR (8)   NULL,
    [CONVERTED_EE]                  VARCHAR (1)   NULL,
    [PD_THRU_DATE]                  VARCHAR (8)   NULL,
    [EXPEDITE_CLAIM]                VARCHAR (1)   NULL,
    [FINANCIAL_CATEGORY]            VARCHAR (2)   NULL,
    [MEDICARE_INDICATOR]            VARCHAR (1)   NULL,
    [HCRA_COUNTY]                   VARCHAR (20)  NULL,
    [HIPAA_CERTIFICATE_SELECT]      VARCHAR (1)   NULL,
    [HIPAA_CERTIFICATE_CARD_FORMAT] VARCHAR (12)  NULL,
    [HIPAA_CERTIFICATE_RUN_DATE]    VARCHAR (8)   NULL,
    [HCRA_EFF_DATE]                 VARCHAR (8)   NULL,
    [LAST_UPDATE_DATE]              VARCHAR (8)   NULL,
    [LAST_UPDATE_USER]              VARCHAR (20)  NULL,
    [LOAD_DATE]                     VARCHAR (8)   NULL,
    [LAST_UPDATE_TIME]              DATETIME2 (6) NULL,
    [EMP_HANDICAP]                  CHAR (1)      NULL,
    [EMP_FILLER]                    VARCHAR (195) NULL,
    [FSA_CARD]                      VARCHAR (1)   NULL,
    [FSA_DATE_EXTRACTED]            VARCHAR (8)   NULL,
    [LFSA_CARD]                     VARCHAR (1)   NULL,
    [LFSA_DATE_EXTRACTED]           VARCHAR (8)   NULL,
    [HRA_CARD]                      VARCHAR (1)   NULL,
    [HRA_DATE_EXTRACTED]            VARCHAR (8)   NULL,
    [EMP_FILLER_2]                  VARCHAR (200) NULL
);

