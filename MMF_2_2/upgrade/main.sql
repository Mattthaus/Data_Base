SET TIME ON
SET TIMING ON
SPOOL log.txt
DEFINE USERNAME_ = &&USERNAME_
SET SERVEROUTPUT ON

connect &&USERNAME/oracle 
--
--
--

SET SERVEROUTPUT OFF
UNDEFINE USERNAME
SPOOL OFF
