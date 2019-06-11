CREATE TABLE ORD_COPIED_ORDER_DETAIL
(
   ID_ORDER_DETAIL                 BIGINT PRIMARY KEY
  ,ID_ORDER                        BIGINT NOT NULL
  ,ID_PRODUCT                      INT NOT NULL
  ,ID_UNIT                         SMALLINT NOT NULL
  ,MT_QUANTITY                     NUMERIC(10, 3)
)