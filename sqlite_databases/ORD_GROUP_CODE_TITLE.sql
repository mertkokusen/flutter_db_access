﻿CREATE TABLE ORD_GROUP_CODE_TITLE
(
   ID_GROUP_CODE_TITLE		INT PRIMARY KEY
  ,ID_DEALER				INT NOT NULL
  ,DS_GROUP_CODE1_TITLE		NVARCHAR(30) NULL
  ,DS_GROUP_CODE2_TITLE		NVARCHAR(30) NULL
  ,DS_GROUP_CODE3_TITLE		NVARCHAR(30) NULL
  ,DS_GROUP_CODE4_TITLE		NVARCHAR(30) NULL
  ,DS_GROUP_CODE5_TITLE		NVARCHAR(30) NULL
  ,DS_PARAMETER				NVARCHAR(5) NULL
)