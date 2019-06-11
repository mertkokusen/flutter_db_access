CREATE TABLE SUR_SURVEY
(
   ID_SURVEY                      INT PRIMARY KEY
  ,DS_SURVEY                      NVARCHAR(100) NOT NULL
  ,DS_DESCRIPTION                 NVARCHAR(250) NULL
  ,DT_VALID_FROM                  DATE NULL
  ,DT_VALID_TO                    DATE NULL
  ,ID_SURVEY_TYPE                 INT NOT NULL
  ,ID_SURVEY_SUB_TYPE             INT NULL
  ,ID_SURVEY_CATEGORY             INT NULL
  ,FL_MANDATORY                   BOOLEAN NOT NULL
  ,FL_DISPLAY_LAST_VISIT_ANSWER   BOOLEAN NOT NULL
  ,ID_AEP                         INT NULL
)