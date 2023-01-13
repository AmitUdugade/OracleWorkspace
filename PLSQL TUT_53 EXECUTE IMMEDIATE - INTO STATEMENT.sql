--------------------NATIVE DYNAMIC SQL - EXECUTE IMMEDIATE - INTO STATEMENT--------------------

SET SERVEROUTPUT ON;

DECLARE
    SQL_QRY VARCHAR2(50);
    EMP_TOT NUMBER(2);
BEGIN
    SQL_QRY := 'SELECT COUNT(*) FROM EMPLOYEE';
    EXECUTE IMMEDIATE SQL_QRY INTO EMP_TOT;
    DBMS_OUTPUT.PUT_LINE('TOTAL EMPLOYEES ARE : ' || EMP_TOT);
END;
/

-------------------------------------------------------------------------------------------
SET SERVEROUTPUT ON;

DECLARE
    SQL_QRY VARCHAR2(150);
    EMP_FNAME EMPLOYEE.FIRST_NAME%TYPE;
BEGIN
    SQL_QRY := 'SELECT FIRST_NAME FROM EMPLOYEE WHERE EMPID = 2';
    EXECUTE IMMEDIATE SQL_QRY INTO EMP_FNAME;
    DBMS_OUTPUT.PUT_LINE('EXPLOYEES NAME IS : ' || EMP_FNAME);
