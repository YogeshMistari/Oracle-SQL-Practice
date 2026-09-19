-- ============================================================
-- PROJECT 1 : BANKING & AML TRANSACTION MONITORING
-- File     : 01_insert_customers.sql
-- Purpose  : Insert sample customer data
-- ============================================================

INSERT INTO customer
(
    customer_id,
    customer_name,
    date_of_birth,
    gender,
    country,
    customer_type,
    risk_level,
    customer_status
)
VALUES
(
    1001,
    'Rahul Sharma',
    DATE '1985-05-15',
    'MALE',
    'INDIA',
    'INDIVIDUAL',
    'LOW',
    'ACTIVE'
);

INSERT INTO customer
(
    customer_id,
    customer_name,
    date_of_birth,
    gender,
    country,
    customer_type,
    risk_level,
    customer_status
)
VALUES
(
    1002,
    'Priya Mehta',
    DATE '1990-08-22',
    'FEMALE',
    'INDIA',
    'INDIVIDUAL',
    'MEDIUM',
    'ACTIVE'
);

INSERT INTO customer
(
    customer_id,
    customer_name,
    date_of_birth,
    gender,
    country,
    customer_type,
    risk_level,
    customer_status
)
VALUES
(
    1003,
    'Amit Patel',
    DATE '1978-11-10',
    'MALE',
    'INDIA',
    'INDIVIDUAL',
    'HIGH',
    'ACTIVE'
);

INSERT INTO customer
(
    customer_id,
    customer_name,
    date_of_birth,
    gender,
    country,
    customer_type,
    risk_level,
    customer_status
)
VALUES
(
    1004,
    'Neha Verma',
    DATE '1992-03-18',
    'FEMALE',
    'INDIA',
    'INDIVIDUAL',
    'LOW',
    'ACTIVE'
);

INSERT INTO customer
(
    customer_id,
    customer_name,
    date_of_birth,
    gender,
    country,
    customer_type,
    risk_level,
    customer_status
)
VALUES
(
    1005,
    'Global Tech Solutions',
    DATE '2010-01-01',
    NULL,
    'INDIA',
    'CORPORATE',
    'HIGH',
    'ACTIVE'
);

COMMIT;