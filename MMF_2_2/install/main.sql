-- This file is main file to create schema.
-- This file should be run under SYSTEM user.
SPOOL log.txt
DEFINE USER_ = &&USER
DEFINE LOCATION_ =  &&LOCATION
SET SERVEROUTPUT ON

PROMPT Creating tablespaces
@create_tablespace.sql &&USER_ &&LOCATION_
PROMPT Creating user
@create_user.sql &&USER_
PROMPT Giving grants to user
@grants.sql &&USER_

SET SERVEROUTPUT OFF
UNDEFINE USER
UNDEFINE LOCATION
SPOOL OFF