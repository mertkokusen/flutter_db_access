﻿CREATE TABLE PRD_PRODUCT_TAX_REGION
(
   ID_PRODUCT_TAX_REGION   INT PRIMARY KEY
  ,ID_TAX_REGION           INT NOT NULL
  ,ID_PRODUCT              INT NOT NULL
  ,MT_TAX_RATE             NUMERIC(5, 2)
)