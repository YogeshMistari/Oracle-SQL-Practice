-- ============================================================
-- PROJECT 1 : BANKING & AML TRANSACTION MONITORING
-- Scenario 04: Rapid Movement
-- ============================================================

-- Business Rule:
-- Identify accounts where a successful CREDIT transaction
-- is followed by a successful DEBIT transaction within
-- 1 hour, with the debit amount being significant compared
-- with the credit amount.

SELECT
    c.customer_id,
    c.customer_name,
    t1.account_id,
    t1.bank_transaction_id AS CREDIT_TRANSACTION_ID,
    t1.bank_transaction_date AS CREDIT_DATE,
    t1.amount AS CREDIT_AMOUNT,
    t2.bank_transaction_id AS DEBIT_TRANSACTION_ID,
    t2.bank_transaction_date AS DEBIT_DATE,
    t2.amount AS DEBIT_AMOUNT,
    ROUND((t2.amount / t1.amount) * 100, 2) AS DEBIT_PERCENTAGE
FROM customer c
JOIN account a
    ON c.customer_id = a.customer_id
JOIN bank_transaction t1
    ON a.account_id = t1.account_id
JOIN bank_transaction t2
    ON a.account_id = t2.account_id
WHERE t1.bank_transaction_type = 'CREDIT'
  AND t2.bank_transaction_type = 'DEBIT'
  AND t1.bank_transaction_status = 'SUCCESS'
  AND t2.bank_transaction_status = 'SUCCESS'
  AND t2.bank_transaction_date > t1.bank_transaction_date
  AND t2.bank_transaction_date <= t1.bank_transaction_date + INTERVAL '1' HOUR
  AND t2.amount >= t1.amount * 0.80
ORDER BY
    t1.account_id,
    t1.bank_transaction_date;