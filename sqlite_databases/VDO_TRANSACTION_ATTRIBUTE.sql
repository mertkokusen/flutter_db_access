﻿CREATE TABLE VDO_TRANSACTION_ATTRIBUTE
(
   ID_TRANSACTION_ATTRIBUTE		INT PRIMARY KEY
  ,ID_TRANSACTION				INT NULL
  ,ID_ATTRIBUTE					INT NULL
  ,ID_VALUE						INT NULL
  ,DS_ANSWER					NVARCHAR(255) NULL
  ,MT_ANSWER					NUMERIC(10, 2) NULL
  ,DT_ANSWER					DATETIME NULL
  ,VALID						BOOLEAN DEFAULT 0
  ,DS_UNIQUE_KEY				NVARCHAR(36) NOT NULL
)