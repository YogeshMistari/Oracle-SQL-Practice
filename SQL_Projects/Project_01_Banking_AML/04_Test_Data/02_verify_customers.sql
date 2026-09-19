-- Verify customer data

SELECT
    customer_id,
    customer_name,
    country,
    customer_type,
    risk_level,
    customer_status
FROM customer
ORDER BY customer_id;