﻿CREATE TABLE SUR_AEP_PLANOGRAM_DETAIL
(
   ID_AEP_PLANOGRAM_DETAIL   INT PRIMARY KEY
  ,ID_AEP_PLANOGRAM          INT NOT NULL
  ,DS_DESCRIPTION            NVARCHAR(120) NOT NULL
  ,DS_UNIQUE_KEY             NVARCHAR(36) NOT NULL
)