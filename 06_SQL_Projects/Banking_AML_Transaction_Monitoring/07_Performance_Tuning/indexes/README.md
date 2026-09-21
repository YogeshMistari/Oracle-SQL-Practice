# Indexes

## Index: IDX_BANK_TXN_STATUS_AMOUNT

### Purpose

Improve performance of the High-Value Successful Transactions AML scenario.

### Indexed Columns

```sql
CREATE INDEX idx_bank_txn_status_amount
ON bank_transaction (
    bank_transaction_status,
    amount
);