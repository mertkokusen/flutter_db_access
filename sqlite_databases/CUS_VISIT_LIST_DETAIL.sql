﻿CREATE TABLE CUS_VISIT_LIST_DETAIL
(
   ID_VISIT_LIST_DETAIL   BIGINT PRIMARY KEY
  ,ID_VISIT_LIST          BIGINT NOT NULL
  ,ID_CUSTOMER            INT NOT NULL
  ,FL_OUT_OF_PLAN         BOOLEAN NOT NULL
  ,ID_VISIT_TYPE          INT NOT NULL
  ,MT_SEQ                 INT NULL
)