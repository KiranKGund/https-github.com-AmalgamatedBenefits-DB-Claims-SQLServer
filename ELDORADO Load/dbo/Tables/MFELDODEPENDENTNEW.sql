﻿CREATE TABLE [dbo].[MFELDODEPENDENTNEW] (
    [POLICY_UNDERWRITER_NUMBER]     VARCHAR (3)  NULL,
    [GROUP_NUMBER]                  VARCHAR (3)  NULL,
    [EMPLOYEE_SSN]                  VARCHAR (9)  NULL,
    [DEPENDENT_SEQUENCE_NUMBER]     VARCHAR (2)  NULL,
    [DATE_LAST_CHANGED]             VARCHAR (8)  NULL,
    [CHANGE_BY]                     VARCHAR (6)  NULL,
    [DEPENDENT_LAST_NAME]           VARCHAR (15) NULL,
    [DEPENDENT_FIRST_NAME]          VARCHAR (15) NULL,
    [DEPENDENT_MIDDLE_INITIAL]      VARCHAR (1)  NULL,
    [DEPENDENT_NAME_SUFFIX]         VARCHAR (6)  NULL,
    [DEPENDENT_NAME]                VARCHAR (30) NULL,
    [ADDRESS_LINE_1]                VARCHAR (30) NULL,
    [ADDRESS_LINE_2]                VARCHAR (30) NULL,
    [CITY]                          VARCHAR (15) NULL,
    [STATE]                         VARCHAR (2)  NULL,
    [ZIP]                           VARCHAR (9)  NULL,
    [HOME_PHONE]                    VARCHAR (10) NULL,
    [OTHER_PHONE]                   VARCHAR (10) NULL,
    [DATE_OF_BIRTH]                 VARCHAR (8)  NULL,
    [SEX]                           VARCHAR (1)  NULL,
    [RELATIONSHIP_TO_EMPLOYEE]      VARCHAR (1)  NULL,
    [DEPENDENT_SSN]                 VARCHAR (9)  NULL,
    [NAME_OF_SCHOOL]                VARCHAR (40) NULL,
    [SEMESTER_HOURS]                VARCHAR (3)  NULL,
    [DATE_DEPENDENT_FIRST_ENROLLED] VARCHAR (8)  NULL,
    [SPECIAL_CODES]                 VARCHAR (10) NULL,
    [USER_DEFINED_ALTERNATE_ID]     VARCHAR (3)  NULL,
    [USER_COMMENT_LINE_1]           VARCHAR (40) NULL,
    [USER_COMMENT_LINE_2]           VARCHAR (40) NULL,
    [PCS_CARD_SELECT]               VARCHAR (1)  NULL,
    [PCS_CARD_REASON]               VARCHAR (2)  NULL,
    [PCS_CARD_COMPLETE_DATE]        VARCHAR (8)  NULL,
    [TAKEN_OVER]                    VARCHAR (1)  NULL,
    [MEDICALLY_UNDERWRITTEN]        VARCHAR (1)  NULL,
    [PAY_CHECK_TO_EMPLOYEE]         VARCHAR (1)  NULL,
    [MCS_ID]                        VARCHAR (2)  NULL,
    [MCS_NBR]                       VARCHAR (8)  NULL,
    [EXPEDITE_CLAIM]                VARCHAR (1)  NULL,
    [MEDICARE_INDICATOR]            VARCHAR (1)  NULL,
    [HCRA_COUNTY]                   VARCHAR (20) NULL,
    [HCRA_EFFECTIVE_DATE]           VARCHAR (8)  NULL,
    [DEP_HANDICAP]                  VARCHAR (1)  NULL,
    [DEP_CERT_NUMBER]               VARCHAR (12) NULL,
    [EMP_EOB]                       VARCHAR (1)  NULL,
    [ALTID1]                        VARCHAR (20) NULL,
    [ALTID2]                        VARCHAR (20) NULL,
    [LTREMP]                        VARCHAR (1)  NULL,
    [EMPDEF]                        VARCHAR (1)  NULL,
    [FILLER]                        VARCHAR (23) NULL
);

