﻿CREATE TABLE SEC_USER_ROLE
(
   ID_USER_ROLE					INT PRIMARY KEY
  ,DS_USER_ROLE					NVARCHAR(100) NOT NULL
  ,FL_TSM						BOOLEAN
  ,FL_TASK_APPROVAL_REQUIRED	BOOLEAN
)