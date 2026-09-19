-- ============================================================
-- PROJECT 1 : BANKING & AML bank_transaction MONITORING
-- File     : 01_create_tables.sql
-- Purpose  : Create core banking tables
-- ============================================================


-- ============================================================
-- 1. CUSTOMER TABLE
-- ============================================================

CREATE TABLE customer (
    customer_id       NUMBER(10)       PRIMARY KEY,
    customer_name     VARCHAR2(100)    NOT NULL,
    date_of_birth     DATE,
    gender            VARCHAR2(10),
    country           VARCHAR2(50)     NOT NULL,
    customer_type     VARCHAR2(20)     NOT NULL,
    risk_level        VARCHAR2(10)     DEFAULT 'LOW' NOT NULL,
    customer_status   VARCHAR2(20)     DEFAULT 'ACTIVE' NOT NULL,
    created_date      DATE             DEFAULT SYSDATE NOT NULL,

    CONSTRAINT chk_customer_risk
        CHECK (risk_level IN ('LOW', 'MEDIUM', 'HIGH')),

    CONSTRAINT chk_customer_status
        CHECK (customer_status IN ('ACTIVE', 'INACTIVE', 'BLOCKED')),

    CONSTRAINT chk_customer_type
        CHECK (customer_type IN ('INDIVIDUAL', 'CORPORATE'))
);


-- ============================================================
-- 2. ACCOUNT TABLE
-- ============================================================

CREATE TABLE account (
    account_id        NUMBER(10)       PRIMARY KEY,
    customer_id       NUMBER(10)       NOT NULL,
    account_number    VARCHAR2(20)     NOT NULL,
    account_type      VARCHAR2(20)     NOT NULL,
    account_status    VARCHAR2(20)     DEFAULT 'ACTIVE' NOT NULL,
    open_date         DATE             NOT NULL,
    balance           NUMBER(18,2)     DEFAULT 0 NOT NULL,
    currency          VARCHAR2(3)      DEFAULT 'INR' NOT NULL,

    CONSTRAINT uk_account_number
        UNIQUE (account_number),

    CONSTRAINT fk_account_customer
        FOREIGN KEY (customer_id)
        REFERENCES customer(customer_id),

    CONSTRAINT chk_account_type
        CHECK (account_type IN ('SAVINGS', 'CURRENT', 'SALARY')),

    CONSTRAINT chk_account_status
        CHECK (account_status IN ('ACTIVE', 'INACTIVE', 'BLOCKED')),

    CONSTRAINT chk_account_balance
        CHECK (balance >= 0)
);


-- ============================================================
-- 3. bank_transaction TABLE
-- ============================================================

CREATE TABLE bank_transaction (
    bank_transaction_id       NUMBER(15)       PRIMARY KEY,
    account_id           NUMBER(10)       NOT NULL,
    bank_transaction_date     TIMESTAMP        NOT NULL,
    bank_transaction_type     VARCHAR2(10)     NOT NULL,
    amount               NUMBER(18,2)     NOT NULL,
    currency             VARCHAR2(3)      DEFAULT 'INR' NOT NULL,
    country              VARCHAR2(50)     NOT NULL,
    channel              VARCHAR2(20)     NOT NULL,
    reference_number     VARCHAR2(50),
    bank_transaction_status   VARCHAR2(20)     DEFAULT 'SUCCESS' NOT NULL,
    created_date         TIMESTAMP        DEFAULT SYSTIMESTAMP NOT NULL,

    CONSTRAINT fk_bank_transaction_account
        FOREIGN KEY (account_id)
        REFERENCES account(account_id),

    CONSTRAINT chk_bank_transaction_type
        CHECK (bank_transaction_type IN ('CREDIT', 'DEBIT')),

    CONSTRAINT chk_bank_transaction_amount
        CHECK (amount > 0),

    CONSTRAINT chk_bank_transaction_status
        CHECK (bank_transaction_status IN
               ('SUCCESS', 'FAILED', 'PENDING', 'REVERSED')),

    CONSTRAINT chk_bank_transaction_channel
        CHECK (channel IN
               ('ATM', 'ONLINE', 'MOBILE', 'BRANCH', 'UPI', 'NEFT', 'RTGS'))
);