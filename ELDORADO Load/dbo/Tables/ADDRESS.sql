CREATE TABLE [dbo].[ADDRESS] (
    [ADDRESSID]     VARCHAR (9)   NULL,
    [ADDRESSTYPEID] VARCHAR (13)  NULL,
    [ADDRESS_LINE1] VARCHAR (100) NOT NULL,
    [ADDRESS_LINE2] VARCHAR (100) NULL,
    [CITY]          VARCHAR (60)  NOT NULL,
    [STATE]         VARCHAR (6)   NOT NULL,
    [ZIPCODE]       VARCHAR (11)  NOT NULL,
    [OFF_PHONE]     VARCHAR (20)  NULL,
    [HOME_PHONE]    VARCHAR (20)  NULL
);

