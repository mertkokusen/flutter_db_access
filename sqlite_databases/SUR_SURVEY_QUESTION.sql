CREATE TABLE SUR_SURVEY_QUESTION
(
   ID_SURVEY_QUESTION             INT PRIMARY KEY
  ,ID_SURVEY                      INT NULL
  ,ID_AEP                         INT NULL
  ,ID_QUESTION                    INT NOT NULL
  ,DS_QUESTION                    NVARCHAR(100) NOT NULL
  ,ID_QUESTION_TYPE               INT NOT NULL
  ,ID_QUESTION_SUB_TYPE           INT NULL
  ,ID_ANSWER_TYPE                 INT NOT NULL
  ,FL_PRODUCT_RELATED             BOOLEAN NULL
  ,ID_QUESTION_GROUP              INT NULL
  ,FL_MANDATORY                   BOOLEAN NULL
  ,FL_DISPLAY_LAST_VISIT_ANSWER   BOOLEAN NULL
  ,MT_SCORE                       INT NULL
  ,MT_DEFAULT_VALUE               NUMERIC(8, 3) NULL
  ,MT_MIN_VALUE                   NUMERIC(8, 3) NULL
  ,MT_MAX_VALUE                   NUMERIC(8, 3) NULL
  ,MT_DISPLAY_ORDER               INT NULL
  ,FL_ADVANCED                    BOOLEAN NULL
)