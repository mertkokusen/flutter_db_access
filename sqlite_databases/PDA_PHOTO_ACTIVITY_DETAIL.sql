﻿CREATE TABLE PDA_PHOTO_ACTIVITY_DETAIL
(
   ID_PHOTO_ACTIVITY_DETAIL   INT PRIMARY KEY
  ,VALID					  BOOLEAN DEFAULT 1 NOT NULL
  ,ID_PHOTO_ACTIVITY          INT NOT NULL
  ,ID_PHOTO_TYPE              INT NOT NULL  
  ,FL_BEFORE				  BOOLEAN DEFAULT 0 NOT NULL
  ,FL_AFTER					  BOOLEAN DEFAULT 0 NOT NULL
  ,DS_UNIQUE_KEY              NVARCHAR(36) NOT NULL
  ,VR_FL_SENT          		  BOOLEAN DEFAULT 0 NOT NULL
)