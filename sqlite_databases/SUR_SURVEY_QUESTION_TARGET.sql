﻿CREATE TABLE SUR_SURVEY_QUESTION_TARGET
(
   ID_SURVEY_QUESTION_TARGET   INT PRIMARY KEY
  ,ID_SURVEY                   INT NOT NULL
  ,ID_SURVEY_QUESTION          INT NOT NULL
  ,ID_QUESTION                 INT NOT NULL
  ,ID_CUSTOMER                 INT NOT NULL
  ,MT_TARGET                   NUMERIC(8, 3) NOT NULL
)