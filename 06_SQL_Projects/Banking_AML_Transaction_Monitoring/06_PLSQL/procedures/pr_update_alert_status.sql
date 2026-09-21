-- ============================================================
-- PROJECT 1 : BANKING & AML TRANSACTION MONITORING
-- PL/SQL Procedure : Update Alert Status
-- ============================================================

CREATE OR REPLACE PROCEDURE pr_update_alert_status (
    p_alert_id     IN NUMBER,
    p_alert_status  IN VARCHAR2
)
IS
BEGIN
    UPDATE aml_alert
    SET alert_status = UPPER(p_alert_status)
    WHERE alert_id = p_alert_id;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Alert ID not found: ' || p_alert_id
        );
    END IF;

    COMMIT;
END;
/