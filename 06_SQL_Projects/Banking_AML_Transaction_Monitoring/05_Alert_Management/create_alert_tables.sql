-- ============================================================
-- PROJECT 1 : BANKING & AML TRANSACTION MONITORING
-- Alert Management : Alert Table
-- ============================================================

CREATE TABLE aml_alert (
    alert_id              NUMBER(15) PRIMARY KEY,
    bank_transaction_id   NUMBER(15),
    account_id            NUMBER(10) NOT NULL,
    customer_id           NUMBER(10),
    scenario_name         VARCHAR2(100) NOT NULL,
    alert_date            DATE DEFAULT SYSDATE NOT NULL,
    alert_amount          NUMBER(18,2),
    alert_status           VARCHAR2(20) DEFAULT 'OPEN' NOT NULL,
    alert_description      VARCHAR2(500),
    
    CONSTRAINT fk_alert_transaction
        FOREIGN KEY (bank_transaction_id)
        REFERENCES bank_transaction(bank_transaction_id),

    CONSTRAINT fk_alert_account
        FOREIGN KEY (account_id)
        REFERENCES account(account_id),

    CONSTRAINT fk_alert_customer
        FOREIGN KEY (customer_id)
        REFERENCES customer(customer_id),

    CONSTRAINT chk_alert_status
        CHECK (alert_status IN ('OPEN', 'CLOSED', 'UNDER_REVIEW'))
);