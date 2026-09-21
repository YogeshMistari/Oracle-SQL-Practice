-- ============================================================
-- PROJECT 1 : BANKING & AML TRANSACTION MONITORING
-- File     : 05_insert_transactions.sql
-- Purpose  : Insert sample banking transaction data
-- ============================================================

INSERT INTO bank_transaction
(
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
)
VALUES
(
    3001,
    2001,
    TIMESTAMP '2026-08-01 10:15:00',
    'CREDIT',
    50000.00,
    'INR',
    'INDIA',
    'UPI',
    'REF3001',
    'SUCCESS'
);

INSERT INTO bank_transaction
(
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
)
VALUES
(
    3002,
    2001,
    TIMESTAMP '2026-08-02 11:30:00',
    'DEBIT',
    15000.00,
    'INR',
    'INDIA',
    'ATM',
    'REF3002',
    'SUCCESS'
);

INSERT INTO bank_transaction
(
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
)
VALUES
(
    3003,
    2002,
    TIMESTAMP '2026-08-03 09:45:00',
    'CREDIT',
    75000.00,
    'INR',
    'INDIA',
    'NEFT',
    'REF3003',
    'SUCCESS'
);

INSERT INTO bank_transaction
(
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
)
VALUES
(
    3004,
    2003,
    TIMESTAMP '2026-08-05 14:20:00',
    'CREDIT',
    1500000.00,
    'INR',
    'INDIA',
    'RTGS',
    'REF3004',
    'SUCCESS'
);

INSERT INTO bank_transaction
(
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
)
VALUES
(
    3005,
    2003,
    TIMESTAMP '2026-08-05 14:35:00',
    'DEBIT',
    1200000.00,
    'INR',
    'INDIA',
    'RTGS',
    'REF3005',
    'SUCCESS'
);

INSERT INTO bank_transaction
(
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
)
VALUES
(
    3006,
    2004,
    TIMESTAMP '2026-08-07 16:10:00',
    'CREDIT',
    30000.00,
    'INR',
    'INDIA',
    'UPI',
    'REF3006',
    'SUCCESS'
);

INSERT INTO bank_transaction
(
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
)
VALUES
(
    3007,
    2005,
    TIMESTAMP '2026-08-10 10:00:00',
    'CREDIT',
    2500000.00,
    'INR',
    'INDIA',
    'NEFT',
    'REF3007',
    'SUCCESS'
);

INSERT INTO bank_transaction
(
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
)
VALUES
(
    3008,
    2005,
    TIMESTAMP '2026-08-10 10:05:00',
    'CREDIT',
    2200000.00,
    'INR',
    'INDIA',
    'NEFT',
    'REF3008',
    'SUCCESS'
);

INSERT INTO bank_transaction
(
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
)
VALUES
(
    3009,
    2005,
    TIMESTAMP '2026-08-10 10:10:00',
    'CREDIT',
    1800000.00,
    'INR',
    'INDIA',
    'NEFT',
    'REF3009',
    'SUCCESS'
);

INSERT INTO bank_transaction
(
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
)
VALUES
(
    3010,
    2002,
    TIMESTAMP '2026-08-12 12:00:00',
    'DEBIT',
    25000.00,
    'INR',
    'INDIA',
    'MOBILE',
    'REF3010',
    'SUCCESS'
);

COMMIT;