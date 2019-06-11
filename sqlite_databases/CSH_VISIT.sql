﻿CREATE TABLE CSH_VISIT
(
   ID_VISIT				INT PRIMARY KEY
  ,ID_CASH_ROUTE		INT NOT NULL
  ,ID_SORT				INT NOT NULL
  ,DS_VISIT_COMMENT		VARCHAR(100) NULL
  ,DS_VISIT_HEADER		VARCHAR(100) NULL
  ,DS_VISIT_ADDRESS		VARCHAR(100) NULL
  ,MT_LATITUDE         	NUMERIC(16, 12) NULL
  ,MT_LONGITUDE        	NUMERIC(16, 12) NULL
  ,ID_VISIT_STATUS		INT NOT NULL DEFAULT 0
)