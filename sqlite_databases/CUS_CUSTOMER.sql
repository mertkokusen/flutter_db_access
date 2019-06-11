CREATE TABLE CUS_CUSTOMER
(
   ID_CUSTOMER                     INT PRIMARY KEY
  ,DS_TITLE                        NVARCHAR(100)
  ,DS_SIGNBOARD                    NVARCHAR(160)
  ,DS_OFFICIAL_TITLE		       NVARCHAR(160)
  ,DS_ERP_CODE                     NVARCHAR(20)
  ,ID_DEALER                       INT NOT NULL
  ,ID_CHANNEL1                     INT
  ,ID_CHANNEL2                     INT
  ,ID_CHANNEL3                     INT
  ,ID_CHANNEL4                     INT
  ,ID_ACCOUNT_TYPE                 INT
  ,ID_PRICE_LIST_TYPE              INT
  ,ID_PRICE_LIST_TYPE_DEALER       INT
  ,ID_WAREHOUSE                    INT
  ,ID_GROUP_CODE6                  INT
  ,ID_GROUP_CODE7                  INT
  ,ID_GROUP_CODE8                  INT
  ,ID_GROUP_CODE9                  INT
  ,MT_MULTI_SELECT6                INT
  ,MT_MULTI_SELECT7                INT
  ,MT_MULTI_SELECT8                INT
  ,MT_MULTI_SELECT9                INT
  ,ID_HOLDING                      INT
  ,ID_CHAIN                        INT
  ,ID_FORMAT                       INT
  ,DS_TAX_CLASSIFICATION		   NVARCHAR(25)
  ,DS_PARAMETER                    NVARCHAR(20)
  ,ID_CUSTOMER_ADDRESS             INT
  ,ID_CITY                         INT
  ,DS_ADDRESS                      NVARCHAR(200)
  ,DS_ADDRESS_NOTE                 NVARCHAR(200)
  ,MT_LATITUDE                     NUMERIC(16, 13)
  ,MT_LONGITUDE                    NUMERIC(16, 13)
  ,DS_EXTERNAL_CODE                NVARCHAR(20)
  ,DS_MODEL_TSR                    NVARCHAR(100)
  ,DS_DAYS_TSR                     NVARCHAR(7)
  ,DS_CYCLE_TSR                    NVARCHAR(100)
  ,DS_TIME_WORK_FROM               NVARCHAR(100)
  ,DS_TIME_WORK_TO                 NVARCHAR(100)
  ,DS_DESIRED_TIME_DELIVERY_FROM   NVARCHAR(100)
  ,DS_DESIRED_TIME_DELIVERY_TO     NVARCHAR(100)
  ,FL_SEASONAL                     BOOLEAN DEFAULT 0 NOT NULL
  ,MT_ISE_SCORE                    INT
  ,FL_GPS_APPROVED                 BOOLEAN DEFAULT 0 NOT NULL
  ,FL_POS_MANDATORY                BOOLEAN DEFAULT 0 NOT NULL
  ,FL_AUDITED					   BOOLEAN DEFAULT 0 NOT NULL
  ,DS_LEGACY_NO                    NVARCHAR(30) NULL
  ,FL_RLTD_USRS_TASK_APPR_STAT	   BOOLEAN NOT NULL
)