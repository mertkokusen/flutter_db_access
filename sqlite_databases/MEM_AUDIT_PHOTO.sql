﻿CREATE TABLE MEM_AUDIT_PHOTO
(
   ID_AUDIT_PHOTO		INT PRIMARY KEY
  ,ID_AUDIT			    INT NOT NULL
  ,ID_AUDIT_DETAIL		INT NOT NULL
  ,DS_UNIQUE_KEY		NVARCHAR(36) NOT NULL
  ,VR_FL_SENT			BOOLEAN DEFAULT 0 NOT NULL
)