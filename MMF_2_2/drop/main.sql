SET TIME ON
SET TIMING ON
SPOOL log.txt
DEFINE USERNAME_ = &&1
SET SERVEROUTPUT ON

PROMPT Dropping user
@drop_user.sql &&USERNAME_
PROMPT Dropping tablespace
@drop_tablespace.sql &&USERNAME_

SET SERVEROUTPUT OFF
UNDEFINE USERNAME_
SPOOL OFF
