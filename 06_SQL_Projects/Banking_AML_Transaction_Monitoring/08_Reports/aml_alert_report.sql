-- ============================================================
-- PROJECT 1 : BANKING & AML TRANSACTION MONITORING
-- AML Alert Report
-- ============================================================

SELECT
    al.alert_id,
    al.customer_id,
    c.customer_name,
    c.risk_level,
    al.account_id,
    al.bank_transaction_id,
    al.scenario_name,
    al.alert_date,
    al.alert_amount,
    al.alert_status,
    al.alert_description
FROM aml_alert al
JOIN customer c
    ON al.customer_id = c.customer_id
ORDER BY
    al.alert_date DESC,
    al.alert_id;