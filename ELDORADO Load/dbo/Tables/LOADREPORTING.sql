CREATE TABLE [dbo].[LOADREPORTING] (
    [REC_NUM]            INT            IDENTITY (1, 1) NOT NULL,
    [JOB_ID]             CHAR (3)       NOT NULL,
    [JOB_NAM]            VARCHAR (60)   NOT NULL,
    [TABLE_LOADED]       VARCHAR (40)   NOT NULL,
    [TABLE_START_COUNT]  INT            NULL,
    [TABLE_INSERT_COUNT] INT            NOT NULL,
    [MF_LOAD_COUNT]      INT            NOT NULL,
    [STATUS]             VARCHAR (10)   NOT NULL,
    [STATUS_MESSAGE]     VARCHAR (5000) NULL,
    [LOAD_DATE]          DATE           CONSTRAINT [LOADREPORTING_LOAD_DATE] DEFAULT (getdate()) NOT NULL,
    [LAST_UPDATE]        DATETIME       CONSTRAINT [LOADREPORTING_LAST_UPDATE] DEFAULT (getdate()) NOT NULL,
    [STIME]              DATETIME       NULL,
    [ETIME]              DATETIME       NULL,
    [DUR]                INT            NULL
);

