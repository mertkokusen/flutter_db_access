﻿CREATE TABLE PRD_UNIT
(
   ID_UNIT				INT PRIMARY KEY
  ,DS_UNIT         		NVARCHAR(20) NULL
  ,DS_UNIT_SHORT		NVARCHAR(5) NULL
  ,FL_ALLOW_DECIMAL     BOOLEAN DEFAULT 0
  ,DS_DEALER_CODE		NVARCHAR(100) NULL
  ,DS_ERP_CODE			NVARCHAR(30) NULL
)