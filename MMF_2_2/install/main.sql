-- This file is main file to create schema.
-- This file should be run under SYSTEM user.
SPOOL log.txt
DEFINE USER_ = &&1
DEFINE LOCATION_ =  &&2
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
