-- ============================================================
-- PROJECT 1 : BANKING & AML TRANSACTION MONITORING
-- Risk Summary Report
-- ============================================================

SELECT
    c.customer_id,
    c.customer_name,
    c.risk_level,
    COUNT(al.alert_id) AS alert_count,
    NVL(SUM(al.alert_amount), 0) AS total_alert_amount
FROM customer c
LEFT JOIN aml_alert al
    ON c.customer_id = al.customer_id
GROUP BY
    c.customer_id,
    c.customer_name,
    c.risk_level
ORDER BY
    CASE c.risk_level
        WHEN 'HIGH' THEN 1
        WHEN 'MEDIUM' THEN 2
        WHEN 'LOW' THEN 3
    END,
    c.customer_id;