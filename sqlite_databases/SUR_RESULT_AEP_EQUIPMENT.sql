﻿CREATE TABLE SUR_RESULT_AEP_EQUIPMENT
(
  ID_RESULT_AEP_EQUIPMENT   INT PRIMARY KEY
 ,ID_CUSTOMER               INT NOT NULL
 ,DT_RESULT                 DATETIME NOT NULL
 ,ID_AEP_EQUIPMENT          INT NOT NULL
 ,ID_AEP_EQUIPMENT_DETAIL   INT NOT NULL
 ,ID_AEP                    INT NULL
 ,ID_EQUIPMENT_ANSWER       INT NOT NULL
 ,ID_VISIT                  INT NOT NULL
 ,DS_UNIQUE_KEY             NVARCHAR(36) NOT NULL
 ,VR_FL_SENT				BOOLEAN DEFAULT 0 NOT NULL
 ,VR_FL_ONGOING             BOOLEAN DEFAULT 0
)