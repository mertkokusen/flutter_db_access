CREATE TABLE ORD_COPIED_ORDER
(
   ID_ORDER                  BIGINT PRIMARY KEY
  ,DT_ORDER                  DATETIME
  ,ID_CUSTOMER               INT
  ,ID_CUSTOMER_DELIVERY      INT
  ,ID_CONTRACT               INT
  ,ID_CONTRACT_CUSTOMER      INT
  ,MT_TOTAL_AMOUNT           NUMERIC(15, 6)
  ,DS_NOTE                   NVARCHAR(100)
  ,DS_NOTE2                  NVARCHAR(100)
)