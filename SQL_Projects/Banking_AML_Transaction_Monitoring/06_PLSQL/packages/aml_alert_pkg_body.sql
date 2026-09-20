-- ============================================================
-- PROJECT 1 : BANKING & AML TRANSACTION MONITORING
-- PL/SQL Package Body
-- ============================================================

CREATE OR REPLACE PACKAGE BODY aml_alert_pkg AS

    FUNCTION get_customer_alert_count (
        p_customer_id IN NUMBER
    ) RETURN NUMBER
    IS
        v_alert_count NUMBER;
    BEGIN
        SELECT COUNT(*)
        INTO v_alert_count
        FROM aml_alert
        WHERE customer_id = p_customer_id;

        RETURN v_alert_count;
    END get_customer_alert_count;


    PROCEDURE close_customer_alerts (
        p_customer_id IN NUMBER
    )
    IS
    BEGIN
        UPDATE aml_alert
        SET alert_status = 'CLOSED'
        WHERE customer_id = p_customer_id
          AND alert_status = 'OPEN';

        COMMIT;
    END close_customer_alerts;

END aml_alert_pkg;
/