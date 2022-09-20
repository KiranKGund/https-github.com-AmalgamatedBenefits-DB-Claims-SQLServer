CREATE TABLE [dbo].[ELDOACTIVECLAIMS] (
    [JOBNO]               VARCHAR (18)    NULL,
    [TRACKNUMBER]         VARCHAR (4)     NULL,
    [WORKFLOWQUEUE]       VARCHAR (10)    NULL,
    [URGENTFLAG]          VARCHAR (1)     NULL,
    [HIREDATE]            DATE            NULL,
    [JOBTYPE]             VARCHAR (1)     NULL,
    [LITERAL]             VARCHAR (10)    NULL,
    [CLAIM_NO]            VARCHAR (30)    NULL,
    [DATEENTEREDINQUEUE]  DATE            NULL,
    [TIMEENTEREDINQUEUE]  VARCHAR (6)     NULL,
    [EXTYPE]              VARCHAR (2)     NULL,
    [REASONCODE]          VARCHAR (3)     NULL,
    [IMAGENAME]           VARCHAR (30)    NULL,
    [USERID]              VARCHAR (6)     NULL,
    [STARTDATE]           DATE            NULL,
    [STARTTIME]           VARCHAR (6)     NULL,
    [ENDDATE]             DATE            NULL,
    [ENDTIME]             VARCHAR (6)     NULL,
    [STATUS]              VARCHAR (3)     NULL,
    [MISCINFORMATION]     VARCHAR (50)    NULL,
    [RULEKEY]             VARCHAR (9)     NULL,
    [PROGRAM]             VARCHAR (30)    NULL,
    [DUEBYDATE]           DATE            NULL,
    [DUEBYTIME]           VARCHAR (6)     NULL,
    [CLMFORM]             VARCHAR (1)     NULL,
    [TOTALCLAIM]          DECIMAL (10, 2) NULL,
    [INTRM]               VARCHAR (1)     NULL,
    [USERNOTE]            VARCHAR (6)     NULL,
    [USERNOTEDATEENTERED] DATE            NULL,
    [USERNOTETIMEENTERED] VARCHAR (6)     NULL,
    [ORIGURGENTFLAG]      VARCHAR (1)     NULL,
    [EEXTYPE]             VARCHAR (2)     NULL,
    [COMPLETE]            VARCHAR (1)     NULL,
    [SCANNEDIMGS]         VARCHAR (1)     NULL,
    [PREVIOUSQUEUE]       VARCHAR (10)    NULL,
    [MANUALTRANSFER]      VARCHAR (1)     NULL,
    [CLAIMSSTATUS]        VARCHAR (1)     NULL,
    [QUEUEACCESS]         VARCHAR (1)     NULL,
    [CSIKEY]              VARCHAR (11)    NULL,
    [CSIGROUP]            VARCHAR (15)    NULL,
    [CSITYPE]             VARCHAR (15)    NULL,
    [CSIENTITYTYPE]       VARCHAR (3)     NULL,
    [FILLER]              VARCHAR (34)    NULL
);


GO
CREATE NONCLUSTERED INDEX [ELDOACTIVECLAIMS_CLAIM_NO]
    ON [dbo].[ELDOACTIVECLAIMS]([CLAIM_NO] ASC);


GO
CREATE NONCLUSTERED INDEX [ELDOACTIVECLAIMS_CLAIM_NO_WORKFLOWQUEUE]
    ON [dbo].[ELDOACTIVECLAIMS]([CLAIM_NO] ASC, [WORKFLOWQUEUE] ASC);


GO
CREATE NONCLUSTERED INDEX [ELDOACTIVECLAIMS_WORKFLOWQUEUE]
    ON [dbo].[ELDOACTIVECLAIMS]([WORKFLOWQUEUE] ASC);

