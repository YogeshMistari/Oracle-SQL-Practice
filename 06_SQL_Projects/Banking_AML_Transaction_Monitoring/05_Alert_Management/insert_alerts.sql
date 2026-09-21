-- ============================================================
-- PROJECT 1 : BANKING & AML TRANSACTION MONITORING
-- Alert Management : Insert Alerts
-- ============================================================

-- Scenario 01: High-Value Successful Transactions
INSERT INTO aml_alert (
    alert_id,
    bank_transaction_id,
    account_id,
    customer_id,
    scenario_name,
    alert_amount,
    alert_status,
    alert_description
)
SELECT
    10000 + ROW_NUMBER() OVER (ORDER BY t.bank_transaction_id),
    t.bank_transaction_id,
    t.account_id,
    a.customer_id,
    'HIGH_VALUE_TRANSACTION',
    t.amount,
    'OPEN',
    'Successful transaction with amount greater than or equal to 1,000,000'
FROM bank_transaction t
JOIN account a
    ON t.account_id = a.account_id
WHERE t.amount >= 1000000
  AND t.bank_transaction_status = 'SUCCESS';


-- Scenario 04: Rapid Movement
INSERT INTO aml_alert (
    alert_id,
    bank_transaction_id,
    account_id,
    customer_id,
    scenario_name,
    alert_amount,
    alert_status,
    alert_description
)
SELECT
    20000 + ROW_NUMBER() OVER (ORDER BY t2.bank_transaction_id),
    t2.bank_transaction_id,
    t2.account_id,
    a.customer_id,
    'RAPID_MOVEMENT',
    t2.amount,
    'OPEN',
    'Successful debit transaction of at least 80 percent of preceding credit within 1 hour'
FROM bank_transaction t1
JOIN bank_transaction t2
    ON t1.account_id = t2.account_id
JOIN account a
    ON t2.account_id = a.account_id
WHERE t1.bank_transaction_type = 'CREDIT'
  AND t2.bank_transaction_type = 'DEBIT'
  AND t1.bank_transaction_status = 'SUCCESS'
  AND t2.bank_transaction_status = 'SUCCESS'
  AND t2.bank_transaction_date > t1.bank_transaction_date
  AND t2.bank_transaction_date <= t1.bank_transaction_date + INTERVAL '1' HOUR
  AND t2.amount >= t1.amount * 0.80;

COMMIT;