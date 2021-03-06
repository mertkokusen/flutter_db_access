﻿CREATE TABLE ACC_TRANSACTION_HISTORY
(
   ID_TRANSACTION_HISTORY       INT PRIMARY KEY
  ,ID_CUSTOMER					INT NOT NULL
  ,ID_TRANSACTION				BIGINT NULL
  ,DT_TRANSACTION				DATETIME NULL
  ,ID_PAYMENT_TYPE				INT NULL
  ,DS_DOC_NUMBER				NVARCHAR(30)
  ,MT_DEBIT						NUMERIC(10, 2) NULL
  ,MT_CREDIT					NUMERIC(10, 2) NULL
  ,MT_UNCLOSED					NUMERIC(10, 2) NULL
  ,ID_TRANSACTION_TYPE          INT NULL
  ,DT_DUE						DATETIME NULL
  ,ID_SALES_ORG                 INT 
)