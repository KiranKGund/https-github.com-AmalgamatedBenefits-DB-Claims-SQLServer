﻿CREATE TABLE [dbo].[ELDOPROVIDERSNEW_1] (
    [PHYSICIAN_ID]                                                 VARCHAR (50)  NULL,
    [PROVIDER_MASTER]                                              VARCHAR (50)  NULL,
    [EDI_SUBMITTER_ID]                                             VARCHAR (50)  NULL,
    [USER_DEFINED_PROVIDER_TYPE]                                   VARCHAR (50)  NULL,
    [OFFICE_NAME                             ]                     VARCHAR (50)  NULL,
    [PROVIDER_LAST_NAME]                                           VARCHAR (50)  NULL,
    [PROVIDER_FIRST_NAME]                                          VARCHAR (50)  NULL,
    [PROVIDER_MIDDLE_INITIAL]                                      VARCHAR (50)  NULL,
    [PROVIDER_SUFFIX]                                              VARCHAR (50)  NULL,
    [PROVIDER_TITLE]                                               VARCHAR (50)  NULL,
    [PROVIDER_DEGREE]                                              VARCHAR (50)  NULL,
    [ADDRESS1                     ]                                VARCHAR (50)  NULL,
    [ADDRESS2                    ]                                 VARCHAR (50)  NULL,
    [ADDRESS3]                                                     VARCHAR (50)  NULL,
    [CITY                  ]                                       VARCHAR (50)  NULL,
    [STATE]                                                        VARCHAR (50)  NULL,
    [ZIPCODE  ]                                                    VARCHAR (50)  NULL,
    [COUNTY         ]                                              VARCHAR (50)  NULL,
    [TELEPHONE ]                                                   VARCHAR (50)  NULL,
    [EXTENSION]                                                    VARCHAR (50)  NULL,
    [FAX_NUMBER]                                                   VARCHAR (50)  NULL,
    [MODEM_NUMBER]                                                 VARCHAR (50)  NULL,
    [SPECIALTY_CODE1]                                              VARCHAR (50)  NULL,
    [SPECIALTY_CODE2]                                              VARCHAR (50)  NULL,
    [SPECIALTY_CODE3]                                              VARCHAR (50)  NULL,
    [TAX_ID   ]                                                    VARCHAR (50)  NULL,
    [TAX_ID_TYPE]                                                  VARCHAR (50)  NULL,
    [REQUIRED_1099]                                                VARCHAR (50)  NULL,
    [PROVIDER_TYPE]                                                VARCHAR (50)  NULL,
    [PROVIDER_STATUS]                                              VARCHAR (50)  NULL,
    [EFF_DATE  ]                                                   VARCHAR (50)  NULL,
    [TERM_DATE ]                                                   VARCHAR (50)  NULL,
    [FACILITY_TYPE]                                                VARCHAR (50)  NULL,
    [MDR_EDITS_SEVERITY_LEVEL]                                     VARCHAR (50)  NULL,
    [MDR_EDITS_ANESTHESIA_FLAG]                                    VARCHAR (50)  NULL,
    [COMMENT1                                                    ] VARCHAR (MAX) NULL,
    [COMMENT2                    ]                                 VARCHAR (MAX) NULL,
    [COMMENT3]                                                     VARCHAR (MAX) NULL,
    [INPUT_SOURCE]                                                 VARCHAR (MAX) NULL,
    [OUTPUT_SOURCE]                                                VARCHAR (MAX) NULL,
    [PAYMENT_ADDRESS_POINTER]                                      VARCHAR (50)  NULL,
    [CONTACT_NAME]                                                 VARCHAR (50)  NULL,
    [UNIQUE_PROVIDER_ID]                                           VARCHAR (50)  NULL,
    [MEDICARE_NUMBER]                                              VARCHAR (50)  NULL,
    [OTHER_ACRONYMN]                                               VARCHAR (50)  NULL,
    [OFFICE_HOURS]                                                 VARCHAR (50)  NULL,
    [TERMINATION_REASON_CODE]                                      VARCHAR (50)  NULL,
    [ALTERNATE_ID        ]                                         VARCHAR (50)  NULL,
    [AKA]                                                          VARCHAR (50)  NULL,
    [CURRENCY_CODE]                                                VARCHAR (50)  NULL,
    [HCRA_INDICATOR]                                               VARCHAR (50)  NULL,
    [HCRA_EFFECTIVE_DATE]                                          VARCHAR (50)  NULL,
    [MASS_INDICATOR]                                               VARCHAR (50)  NULL,
    [MASS_EFFECTIVE_DATE]                                          VARCHAR (50)  NULL,
    [COUNTRY_CODE]                                                 VARCHAR (50)  NULL,
    [EPIP_STOP_DEFAULT_PAYMENT]                                    VARCHAR (50)  NULL,
    [EPIP_WITHHOLD_FROM_NEGOTIATION]                               VARCHAR (50)  NULL,
    [EMAIL_ADDRESS]                                                VARCHAR (50)  NULL,
    [HIPAA_ENTITY_ID]                                              VARCHAR (50)  NULL,
    [TURN_OFF_ABF_EOBS]                                            VARCHAR (50)  NULL,
    [CREDIT_BANKING]                                               VARCHAR (50)  NULL,
    [PAY_DISCOUNT]                                                 VARCHAR (50)  NULL,
    [PAY_TYPE]                                                     VARCHAR (50)  NULL,
    [PAY_AMOUNT]                                                   VARCHAR (50)  NULL,
    [PAY_DAYS]                                                     VARCHAR (50)  NULL,
    [ALLOW_NEGOTIATION]                                            VARCHAR (50)  NULL,
    [NPI       ]                                                   VARCHAR (50)  NULL,
    [LOAD_DATE]                                                    VARCHAR (50)  NULL
);

