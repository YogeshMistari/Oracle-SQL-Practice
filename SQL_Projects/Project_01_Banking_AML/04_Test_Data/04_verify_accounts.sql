-- Verify account data

SELECT
    account_id,
    customer_id,
    account_number,
    account_type,
    account_status,
    balance,
    currency
FROM account
ORDER BY account_id;