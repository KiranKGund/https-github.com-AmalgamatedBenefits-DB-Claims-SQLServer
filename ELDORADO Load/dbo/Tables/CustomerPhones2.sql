CREATE TABLE [dbo].[CustomerPhones2] (
    [CustomerID] INT          NOT NULL,
    [Phone1]     VARCHAR (32) NULL,
    [PhoneType1] CHAR (4)     NULL,
    [Phone2]     VARCHAR (32) NULL,
    [PhoneType2] CHAR (4)     NULL,
    [Phone3]     VARCHAR (32) NULL,
    [PhoneType3] CHAR (4)     NULL,
    PRIMARY KEY CLUSTERED ([CustomerID] ASC)
);

