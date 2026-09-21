-- ============================================================
-- PROJECT 1 : BANKING & AML TRANSACTION MONITORING
-- Customer Transaction Report
-- ============================================================

SELECT
    customer_id,
    customer_name,
    risk_level,
    customer_type,
    account_id,
    account_number,
    account_type,
    bank_transaction_id,
    bank_transaction_date,
    bank_transaction_type,
    amount,
    currency,
    country,
    channel,
    bank_transaction_status
FROM customer_transaction_view
ORDER BY
    customer_id,
    bank_transaction_id;