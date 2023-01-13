--------------------------BULK INTO CLAUSE - LIMIT CLAUSE WITH FETCH INTO CLAUSE------------------------

SET SERVEROUTPUT ON;

DECLARE
    CURSOR EXP_CURSOR IS
    SELECT FIRST_NAME FROM EMPLOYEE;
    
    TYPE NT_FNAME IS TABLE OF VARCHAR2(20);
    FNAME NT_FNAME;
BEGIN
    OPEN EXP_CURSOR;
    FETCH EXP_CURSOR BULK COLLECT INTO FNAME  LIMIT 2;
    CLOSE EXP_CURSOR;
    FOR IDX IN 1..FNAME.COUNT
    LOOP
        DBMS_OUTPUT.PUT_LINE(IDX || ' - ' || FNAME(IDX));
    END LOOP;
END;
/

----------------------------------------------------------------------------------------
SET SERVEROUTPUT ON;

DECLARE
    CURSOR EXP_CURSOR IS 
    SELECT CAR_NAME FROM SPORTS_CARS;
    
    TYPE NT_CNAME IS TABLE OF SPORTS_CARS.CAR_NAME%TYPE;
    CNAME NT_CNAME;
BEGIN
    OPEN EXP_CURSOR;
    FETCH EXP_CURSOR BULK COLLECT INTO CNAME LIMIT 10;
    CLOSE EXP_CURSOR;
    FOR IDX IN 1..CNAME.COUNT
    LOOP
        DBMS_OUTPUT.PUT_LINE(IDX || ' - ' || CNAME(IDX));
    END LOOP;
END;
/