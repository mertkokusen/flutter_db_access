CREATE TABLE ORD_ORDER
(
   ID_ORDER                         INT PRIMARY KEY
  ,DT_ORDER                         DATETIME
  ,DT_SHIPMENT                      DATETIME
  ,ID_ORDER_TYPE                    INT
  ,ID_ORDER_STATUS                  INT
  ,ID_CUSTOMER                      INT
  ,ID_CUSTOMER_DELIVERY             INT
  ,ID_ADDRESS_DELIVERY              INT
  ,ID_DEALER                        INT
  ,ID_ROUTE                         INT
  ,ID_SALES_ORG                     INT
  ,ID_AGENT                         INT
  ,ID_VISIT                         INT
  ,ID_WAREHOUSE                     INT
  ,ID_PAYMENT_TYPE                  INT
  ,ID_CUSTOMER_AGREEMENT            INT
  ,ID_CUSTOMER_DISCOUNT             INT
  ,ID_CONTRACT                      INT
  ,ID_CONTRACT_CUSTOMER             INT
  ,DS_NOTE                          NVARCHAR(100)
  ,DS_NOTE2                         NVARCHAR(100)
  ,MT_AMOUNT_GROSS                  NUMERIC(15, 6)
  ,MT_AMOUNT_GROSS_WITH_VAT         NUMERIC(15, 6)
  ,MT_AMOUNT_GROSS_SPD              NUMERIC(15, 6)
  ,MT_AMOUNT_GROSS_SPD_WITH_VAT     NUMERIC(15, 6)
  ,MT_DISCOUNT_CUSTOMER             NUMERIC(15, 6)
  ,MT_DISCOUNT_CUSTOMER_WITH_VAT    NUMERIC(15, 6)
  ,MT_DISCOUNT_PROMOTION            NUMERIC(15, 6)
  ,MT_DISCOUNT_PROMOTION_WITH_VAT   NUMERIC(15, 6)
  ,MT_DISCOUNT_TOTAL                NUMERIC(15, 6)
  ,MT_DISCOUNT_TOTAL_WITH_VAT       NUMERIC(15, 6)
  ,MT_NET_AMOUNT                    NUMERIC(15, 6)
  ,MT_TAX_AMOUNT                    NUMERIC(15, 6)
  ,MT_TAX_AMOUNT_SPD                NUMERIC(15, 6)
  ,MT_TOTAL_AMOUNT                  NUMERIC(15, 6)
  ,MT_TOTAL_AMOUNT_SPD              NUMERIC(15, 6)
  ,ID_GROUP_CODE1                   INT
  ,ID_GROUP_CODE2                   INT
  ,ID_GROUP_CODE3                   INT
  ,ID_GROUP_CODE4                   INT
  ,ID_GROUP_CODE5                   INT
  ,FL_DISCOUNT_NOT_SPREAD           BOOLEAN NOT NULL
  ,FL_POSTPONED                     BOOLEAN NOT NULL
  ,FL_UNIT_PRICE_INCLUDE_TAX        BOOLEAN NOT NULL
  ,ID_ASM_PUSH_PROMOTION            INT
  ,DS_UNIQUE_KEY                    CHAR(36) NOT NULL
  ,VR_FL_SENT                       BOOLEAN NOT NULL
)


