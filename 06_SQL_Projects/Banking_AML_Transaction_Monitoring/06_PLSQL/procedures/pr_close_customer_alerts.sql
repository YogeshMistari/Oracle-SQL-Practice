-- ============================================================
-- PROJECT 1 : BANKING & AML TRANSACTION MONITORING
-- PL/SQL Procedure : Close Customer Alerts
-- ============================================================

CREATE OR REPLACE PROCEDURE pr_close_customer_alerts (
    p_customer_id IN NUMBER
)
IS
BEGIN
    UPDATE aml_alert
    SET alert_status = 'CLOSED'
    WHERE customer_id = p_customer_id
      AND alert_status = 'OPEN';

    COMMIT;
END;
/