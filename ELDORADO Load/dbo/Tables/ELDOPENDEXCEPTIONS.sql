﻿CREATE TABLE [dbo].[ELDOPENDEXCEPTIONS] (
    [POLICY_UNDERWRITER] VARCHAR (3)  NOT NULL,
    [GROUP_NUMBER]       VARCHAR (3)  NOT NULL,
    [CLAIM_NUMBER]       VARCHAR (11) NOT NULL,
    [MCS_CLAIM_NUMBER]   VARCHAR (18) NULL,
    [NUM_PENDED_REASON]  CHAR (3)     NULL,
    [PENDED_REASON_CODE] CHAR (3)     NULL,
    [PEND_TYPE]          CHAR (3)     NULL,
    [HP_FILLER1]         VARCHAR (62) NULL
);
