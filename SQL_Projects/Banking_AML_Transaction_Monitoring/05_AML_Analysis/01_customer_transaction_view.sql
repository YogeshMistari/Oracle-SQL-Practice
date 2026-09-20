-- ============================================================
-- PROJECT 1 : BANKING & AML TRANSACTION MONITORING
-- File     : 01_customer_transaction_view.sql
-- Purpose  : Combine customer, account and transaction data
-- ============================================================

SELECT
    c.customer_id,
    c.customer_name,
    c.risk_level,
    c.customer_type,
    a.account_id,
    a.account_number,
    a.account_type,
    t.bank_transaction_id,
    t.bank_transaction_date,
    t.bank_transaction_type,
    t.amount,
    t.currency,
    t.country,
    t.channel,
    t.bank_transaction_status
FROM customer c
JOIN account a
    ON c.customer_id = a.customer_id
JOIN bank_transaction t
    ON a.account_id = t.account_id
ORDER BY
    t.bank_transaction_id;