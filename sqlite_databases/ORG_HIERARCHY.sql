﻿CREATE TABLE ORG_HIERARCHY
(
   ID_HIERARCHY        INT PRIMARY KEY
  ,DS_HIERARCHY        NVARCHAR(50) NULL
  ,ID_LEVEL            INT NULL
  ,ID_PARENT           INT NULL
  ,DT_START			   DATE NULL
  ,DT_END			   DATE NULL
  ,ID_HIERARCHY_TYPE   INT NULL
  ,ID_SALES_ORG	       INT NULL
)