CREATE TABLE PRD_PRODUCT
(
   ID_PRODUCT                    INT PRIMARY KEY
  ,ID_PRODUCT_TYPE               INT NOT NULL
  ,DS_PRODUCT                    NVARCHAR(40)
  ,DS_PRODUCT_LONG               NVARCHAR(255)
  ,DS_PRODUCT_NO                 NVARCHAR(20)
  ,ID_UNIT_SMALL                 INT NOT NULL
  ,ID_UNIT_SALES                 INT NOT NULL
  ,ID_MKU                        INT
  ,ID_CATEGORY1                  INT
  ,ID_CATEGORY2                  INT
  ,ID_CATEGORY3                  INT
  ,ID_CATEGORY4                  INT
  ,ID_CATEGORY5                  INT
  ,ID_CATEGORY6                  INT
  ,ID_CATEGORY7                  INT
  ,ID_BUSINESS_CATEGORY1         INT
  ,ID_BUSINESS_CATEGORY2         INT
  ,ID_BUSINESS_CATEGORY3         INT
  ,ID_GROUP_CODE1                INT
  ,ID_GROUP_CODE2                INT
  ,ID_GROUP_CODE3                INT
  ,ID_DISCOUNT_GROUP             INT
  ,FL_ACTIVE                     BOOLEAN DEFAULT 0
  ,FL_REVERSE_STOCK              BOOLEAN DEFAULT 0
  ,FL_ENABLED_FOR_DIRECT         BOOLEAN DEFAULT 0
  ,FL_ENABLED_FOR_INDIRECT       BOOLEAN DEFAULT 0
  ,FL_PRIMARY_GTIN               BOOLEAN DEFAULT 0
  ,MT_DIVISIBLE_ON_PRODUCT       INT
  ,DS_TAX_CLASSIFICATION         NVARCHAR(25)
  ,DS_ERP_CODE_DEFAULT           NVARCHAR(20)
  ,DS_ERP_CODE_GTIN              NVARCHAR(20)
  ,DS_TRADE_ITEM_ERP_CODE        NVARCHAR(20)
  ,DS_INT_PRODUCT_CODE			 NVARCHAR(35) NULL
)