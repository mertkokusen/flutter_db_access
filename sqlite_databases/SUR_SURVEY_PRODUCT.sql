﻿CREATE TABLE SUR_SURVEY_PRODUCT
(
   ID_SURVEY_PRODUCT	INT PRIMARY KEY
  ,ID_SURVEY			INT NOT NULL
  ,ID_PRODUCT			INT NOT NULL
  ,DS_PRODUCT			NVARCHAR(255) NOT NULL
  ,MT_DISPLAY_ORDER     INT NULL
)