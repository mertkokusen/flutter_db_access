﻿CREATE TABLE CUS_OTHER_ROUTE
(
   ID_OTHER_ROUTE          INT PRIMARY KEY
  ,ID_CUSTOMER             INT NULL
  ,ID_VISIT_PLAN           BIGINT  NULL
  ,DS_ROUTE                NVARCHAR(100)
  ,DS_AGENT                NVARCHAR(100)
)