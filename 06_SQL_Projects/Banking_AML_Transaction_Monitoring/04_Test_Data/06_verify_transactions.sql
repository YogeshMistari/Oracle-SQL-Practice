-- Verify inserted transactions

SELECT
    bank_transaction_id,
    account_id,
    bank_transaction_date,
    bank_transaction_type,
    amount,
    currency,
    country,
    channel,
    reference_number,
    bank_transaction_status
FROM bank_transaction
ORDER BY bank_transaction_id;

