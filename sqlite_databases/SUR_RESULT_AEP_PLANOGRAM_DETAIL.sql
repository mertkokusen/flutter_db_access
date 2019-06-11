﻿CREATE TABLE SUR_RESULT_AEP_PLANOGRAM_DETAIL
(
  ID_RESULT_AEP_PLANOGRAM_DETAIL	INT PRIMARY KEY
 ,VALID								BOOLEAN DEFAULT 1 NOT NULL
 ,ID_RESULT_AEP_PLANOGRAM			INT NOT NULL
 ,ID_AEP_PLANOGRAM					INT NOT NULL
 ,ID_AEP_PLANOGRAM_DETAIL			INT NOT NULL 
 ,FL_APPROVED						BOOLEAN NULL
 ,DS_UNIQUE_KEY						NVARCHAR(36) NOT NULL
 ,VR_FL_SENT						BOOLEAN DEFAULT 0 NOT NULL
)