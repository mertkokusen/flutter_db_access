﻿CREATE TABLE MEM_INVENTORY
(
   ID_INVENTORY				INT PRIMARY KEY
  ,ID_DEALER				INT NOT NULL
  ,ID_WAREHOUSE		      	INT NOT NULL
  ,ID_MODEL_CATEGORY      	INT NOT NULL
  ,ID_MODEL_TYPE      		INT NOT NULL
  ,ID_BUSINESS_CATEGORY		INT NOT NULL
  ,MT_QUANTITY      		INT NULL
)