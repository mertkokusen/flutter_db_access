﻿CREATE TABLE INT_PRODUCT_DEALER_CODE
(
   ID_PRODUCT_DEALER_CODE   INT PRIMARY KEY
  ,ID_DEALER                INT NOT NULL
  ,ID_PRODUCT               INT NOT NULL
  ,DS_PRODUCT_NO            NVARCHAR(35) NOT NULL
  ,MT_DIVISIBLE             INT
)