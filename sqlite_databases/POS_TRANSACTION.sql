﻿CREATE TABLE POS_TRANSACTION
(
   ID_TRANSACTION				INT PRIMARY KEY
  ,VALID						BOOLEAN DEFAULT 1 NOT NULL
  ,DT_INSERT					DATETIME NULL
  ,DT_TRANSACTION				DATETIME NOT NULL
  ,ID_TRANSACTION_TYPE			INT NOT NULL
  ,ID_WAREHOUSE					INT NULL
  ,ID_CUSTOMER					INT NULL
  ,ID_MAIN_CUSTOMER				INT NULL
  ,ID_VISIT						INT NOT NULL
  ,ID_BALANCE					INT NULL
  ,ID_CUSTOMER_TO				INT NULL
  ,ID_MAIN_CUSTOMER_TO			INT NULL
  ,ID_WAREHOUSE_TO				INT NULL
  ,DS_COMMENT					NVARCHAR(250) NULL
  ,DS_UNIQUE_KEY				NVARCHAR(36) NOT NULL 
  ,VR_FL_SENT					BOOLEAN DEFAULT 0 NOT NULL
)