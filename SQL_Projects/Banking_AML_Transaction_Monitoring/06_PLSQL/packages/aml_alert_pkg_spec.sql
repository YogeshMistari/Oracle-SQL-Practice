-- ============================================================
-- PROJECT 1 : BANKING & AML TRANSACTION MONITORING
-- PL/SQL Package Specification
-- ============================================================

CREATE OR REPLACE PACKAGE aml_alert_pkg AS

    FUNCTION get_customer_alert_count (
        p_customer_id IN NUMBER
    ) RETURN NUMBER;

    PROCEDURE close_customer_alerts (
        p_customer_id IN NUMBER
    );

END aml_alert_pkg;
/