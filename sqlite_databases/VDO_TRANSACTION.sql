﻿CREATE TABLE VDO_TRANSACTION
(
   ID_TRANSACTION				INT PRIMARY KEY
  ,ID_DEALER					INT NULL
  ,ID_DOCUMENT_TYPE				INT NULL 
  ,ID_CUSTOMER					INT NULL
  ,ID_DELIVERY_CUSTOMER			INT NULL
  ,ID_AGENT						INT NULL
  ,ID_ROUTE						INT NULL
  ,ID_STATUS					INT NULL
  ,DT_TRANSACTION				DATETIME NULL
  ,ID_VISIT						INT NULL
  ,VALID						BOOLEAN DEFAULT 1 NOT NULL
  ,DS_UNIQUE_KEY				NVARCHAR(36) NOT NULL 
  ,VR_FL_SENT					BOOLEAN DEFAULT 0 NOT NULL
)