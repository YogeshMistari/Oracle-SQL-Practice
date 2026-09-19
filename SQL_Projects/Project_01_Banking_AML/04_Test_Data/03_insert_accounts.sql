-- ============================================================
-- PROJECT 1 : BANKING & AML TRANSACTION MONITORING
-- File     : 03_insert_accounts.sql
-- Purpose  : Insert sample account data
-- ============================================================

INSERT INTO account
(
    account_id,
    customer_id,
    account_number,
    account_type,
    account_status,
    open_date,
    balance,
    currency
)
VALUES
(
    2001,
    1001,
    'IN1000000001',
    'SAVINGS',
    'ACTIVE',
    DATE '2020-01-15',
    250000.00,
    'INR'
);

INSERT INTO account
(
    account_id,
    customer_id,
    account_number,
    account_type,
    account_status,
    open_date,
    balance,
    currency
)
VALUES
(
    2002,
    1002,
    'IN1000000002',
    'SAVINGS',
    'ACTIVE',
    DATE '2021-06-20',
    450000.00,
    'INR'
);

INSERT INTO account
(
    account_id,
    customer_id,
    account_number,
    account_type,
    account_status,
    open_date,
    balance,
    currency
)
VALUES
(
    2003,
    1003,
    'IN1000000003',
    'CURRENT',
    'ACTIVE',
    DATE '2019-03-10',
    1500000.00,
    'INR'
);

INSERT INTO account
(
    account_id,
    customer_id,
    account_number,
    account_type,
    account_status,
    open_date,
    balance,
    currency
)
VALUES
(
    2004,
    1004,
    'IN1000000004',
    'SALARY',
    'ACTIVE',
    DATE '2022-01-05',
    175000.00,
    'INR'
);

INSERT INTO account
(
    account_id,
    customer_id,
    account_number,
    account_type,
    account_status,
    open_date,
    balance,
    currency
)
VALUES
(
    2005,
    1005,
    'IN1000000005',
    'CURRENT',
    'ACTIVE',
    DATE '2018-09-12',
    5000000.00,
    'INR'
);

COMMIT;