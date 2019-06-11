﻿CREATE TABLE PRD_PRODUCT_UNIT
(
   ID_PRODUCT_UNIT       INT PRIMARY KEY
  ,ID_PRODUCT            INT NOT NULL
  ,ID_UNIT               INT NOT NULL
  ,DS_BARCODE            NVARCHAR(14)
  ,FL_SMALL_UNIT         BOOLEAN DEFAULT 0
  ,FL_SALES_UNIT         BOOLEAN DEFAULT 0
  ,MT_MULTIPLIER         NUMERIC(8, 3)
  ,MT_MULTIPLIER_SALES   NUMERIC(8, 3)
  ,MT_MULTIPLIER_RC      NUMERIC(8, 3)
  ,MT_STOCK              NUMERIC(10, 3)
  ,MT_STOCK_DISCARDED    NUMERIC(10, 3)
  ,MT_STOCK_DEALER       NUMERIC(10, 3)
  ,MT_WEIGHT_NET         NUMERIC(8, 4)
  ,MT_WEIGHT_GROSS       NUMERIC(8, 4)
)