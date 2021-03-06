﻿CREATE TABLE CUS_VISIT_PLAN_DETAIL
(
   ID_VISIT_PLAN_DETAIL		BIGINT PRIMARY KEY
  ,ID_VISIT_PLAN			BIGINT NOT NULL
  ,ID_CUSTOMER				INT NOT NULL
  ,ID_VISIT_TYPE			INT
  ,DT_VALID_FROM			DATE
  ,DT_VALID_TO				DATE
  ,MT_SEQ_W1_D1				INT
  ,MT_SEQ_W1_D2				INT
  ,MT_SEQ_W1_D3				INT
  ,MT_SEQ_W1_D4				INT
  ,MT_SEQ_W1_D5				INT
  ,MT_SEQ_W1_D6				INT
  ,MT_SEQ_W1_D7				INT
  ,MT_SEQ_W2_D1				INT
  ,MT_SEQ_W2_D2				INT
  ,MT_SEQ_W2_D3				INT
  ,MT_SEQ_W2_D4				INT
  ,MT_SEQ_W2_D5				INT
  ,MT_SEQ_W2_D6				INT
  ,MT_SEQ_W2_D7				INT
  ,MT_SEQ_W3_D1				INT
  ,MT_SEQ_W3_D2				INT
  ,MT_SEQ_W3_D3				INT
  ,MT_SEQ_W3_D4				INT
  ,MT_SEQ_W3_D5				INT
  ,MT_SEQ_W3_D6				INT
  ,MT_SEQ_W3_D7				INT
  ,MT_SEQ_W4_D1				INT
  ,MT_SEQ_W4_D2				INT
  ,MT_SEQ_W4_D3				INT
  ,MT_SEQ_W4_D4				INT
  ,MT_SEQ_W4_D5				INT
  ,MT_SEQ_W4_D6				INT
  ,MT_SEQ_W4_D7				INT
  ,MT_PERIOD_FREQ			NUMERIC(4, 2)
  ,DS_DAYS					NVARCHAR(7)
)