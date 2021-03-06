﻿CREATE TABLE MEM_ORDER_DETAIL
(
   ID_ORDER_DETAIL           INT NOT NULL
  ,ID_ORDER                  INT NOT NULL
  ,ID_MODEL_CATEGORY         SMALLINT NULL
  ,ID_MODEL_TYPE             SMALLINT NULL
  ,ID_BUSINESS_CATEGORY      SMALLINT NULL
  ,DS_COMMENT                NVARCHAR(250) NULL
  ,VR_DS_BUSINESS_CATEGORY   NVARCHAR(40) NULL
  ,VR_DS_MODEL_CATEGORY      NVARCHAR(60) NULL
  ,VR_DS_MODEL_TYPE          NVARCHAR(40) NULL
  ,VALID                     SMALLINT NULL
  ,FL_FROM_WEB				 INT NULL
)