CREATE TABLE SUR_SURVEY_PREVIOUS_ANSWER
(
   ID_SURVEY_PREVIOUS_ANSWER   INT PRIMARY KEY
  ,ID_USER                     INT NOT NULL
  ,DS_USER                     NVARCHAR(100)
  ,ID_CUSTOMER                 INT NOT NULL
  ,ID_SURVEY                   INT NOT NULL
  ,ID_QUESTION                 INT NOT NULL
  ,ID_PRODUCT                  INT NULL
  ,ID_ANSWER                   INT NULL
  ,FL_ANSWER                   BOOLEAN NULL
  ,MT_ANSWER                   NUMERIC(10, 3) NULL
  ,DS_ANSWER                   NVARCHAR(100) NULL
  ,DT_ANSWER                   DATE NULL
)