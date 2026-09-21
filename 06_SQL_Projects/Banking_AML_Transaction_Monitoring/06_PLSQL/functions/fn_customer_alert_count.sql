-- ============================================================
-- PROJECT 1 : BANKING & AML TRANSACTION MONITORING
-- PL/SQL Function : Customer Alert Count
-- ============================================================

CREATE OR REPLACE FUNCTION fn_customer_alert_count (
    p_customer_id IN NUMBER
)
RETURN NUMBER
IS
    v_alert_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_alert_count
    FROM aml_alert
    WHERE customer_id = p_customer_id;

    RETURN v_alert_count;
END;
/