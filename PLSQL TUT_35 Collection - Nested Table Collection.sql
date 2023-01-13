---------------- COLLECTION - NESTED TABLE COLLECTION - COUNT METHOD-------------------------------------


DECLARE
    TYPE MY_NESTED_TABLE IS TABLE OF NUMBER;
    VAR_NUM MY_NESTED_TABLE := MY_NESTED_TABLE(1,2,3,4,5,6,7,8,9,10);
BEGIN
    FOR I IN 1..VAR_NUM.COUNT
    LOOP
        DBMS_OUTPUT.PUT_LINE('INDEX STORED AT '|| I || ' IS ' || VAR_NUM(I));
    END LOOP;
END;
/
