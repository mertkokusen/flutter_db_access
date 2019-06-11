﻿CREATE TABLE STO_CUSTOMER_BALANCE
(
   ID_CUSTOMER_BALANCE   INT NOT NULL
  ,ID_DEALER             INT NOT NULL
  ,ID_ROUTE              INT NOT NULL
  ,ID_CUSTOMER           INT NOT NULL
  ,ID_VISIT              INT
  ,DT_COUNTING           DATETIME NOT NULL
  ,DS_UNIQUE_KEY		 CHAR(36) NOT NULL
  ,VR_FL_SENT            BOOLEAN NOT NULL
)