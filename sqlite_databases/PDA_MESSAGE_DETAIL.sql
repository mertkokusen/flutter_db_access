﻿CREATE TABLE PDA_MESSAGE_DETAIL
(
   ID_MESSAGE_DETAIL			INT PRIMARY KEY
  ,ID_MESSAGE					INT NOT NULL
  ,ID_CUSTOMER					INT NULL
  ,ID_USER						INT NULL
  ,DS_UNIQUE_KEY				NVARCHAR(36) NOT NULL
  ,FL_READ	        			BOOLEAN DEFAULT 0 NOT NULL
  ,VR_FL_SENT					BOOLEAN DEFAULT 0 NOT NULL
)