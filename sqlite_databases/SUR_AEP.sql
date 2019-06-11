CREATE TABLE SUR_AEP
(
   ID_AEP                         INT PRIMARY KEY
  ,DS_AEP                         NVARCHAR(100) NOT NULL
  ,DS_DESCRIPTION                 NVARCHAR(1000) NULL
  ,ID_AEP_TYPE                    INT NOT NULL
  ,ID_SURVEY_CATEGORY             INT NULL
  ,DT_START                       DATE NOT NULL
  ,DT_END                         DATE NOT NULL
  ,DT_VISIBLE                     DATE NOT NULL
  ,FL_TRADE_ITEM_BASED_QUESTION   BOOLEAN NOT NULL
  ,FL_ONLY_DESCRIPTION            BOOLEAN NOT NULL
)