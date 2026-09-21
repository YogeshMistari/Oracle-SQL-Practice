-- ============================================================
-- PROJECT 1 : BANKING & AML TRANSACTION MONITORING
-- Alert Management : Alert Queries
-- ============================================================

-- 1. All Open Alerts
SELECT
    alert_id,
    bank_transaction_id,
    account_id,
    customer_id,
    scenario_name,
    alert_amount,
    alert_date,
    alert_status,
    alert_description
FROM aml_alert
WHERE alert_status = 'OPEN'
ORDER BY alert_date DESC, alert_id;


-- 2. Alert Summary by Scenario
SELECT
    scenario_name,
    COUNT(*) AS alert_count,
    SUM(alert_amount) AS total_alert_amount
FROM aml_alert
GROUP BY scenario_name
ORDER BY scenario_name;


-- 3. Customer-wise Alert Summary
SELECT
    customer_id,
    COUNT(*) AS alert_count,
    SUM(alert_amount) AS total_alert_amount
FROM aml_alert
GROUP BY customer_id
ORDER BY alert_count DESC;


-- 4. Alerts for High-Risk Customers
SELECT
    al.alert_id,
    al.customer_id,
    c.customer_name,
    c.risk_level,
    al.scenario_name,
    al.alert_amount,
    al.alert_status
FROM aml_alert al
JOIN customer c
    ON al.customer_id = c.customer_id
WHERE c.risk_level = 'HIGH'
ORDER BY al.alert_id;