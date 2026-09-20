-- ============================================================
-- PROJECT 1 : BANKING & AML TRANSACTION MONITORING
-- PL/SQL Function : Customer Risk Level
-- ============================================================

CREATE OR REPLACE FUNCTION fn_customer_risk_level (
    p_customer_id IN NUMBER
)
RETURN VARCHAR2
IS
    v_risk_level customer.risk_level%TYPE;
BEGIN
    SELECT risk_level
    INTO v_risk_level
    FROM customer
    WHERE customer_id = p_customer_id;

    RETURN v_risk_level;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'CUSTOMER_NOT_FOUND';
END;
/