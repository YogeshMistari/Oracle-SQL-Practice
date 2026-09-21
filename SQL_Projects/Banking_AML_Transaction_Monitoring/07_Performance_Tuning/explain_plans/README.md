# Explain Plans

## Scenario 01 - High-Value Successful Transactions

### Before Index

Plan hash value: `2938351628`

- Access method: TABLE ACCESS FULL
- Estimated cost: 3
- Estimated rows: 7

### After Index

Plan hash value: `1141959097`

- Access method: INDEX RANGE SCAN DESCENDING
- Index: `IDX_BANK_TXN_STATUS_AMOUNT`
- Estimated cost: 2
- Estimated rows: 4

### Plan Change

Before the index, Oracle used a full table scan on `BANK_TRANSACTION`.

After creating `IDX_BANK_TXN_STATUS_AMOUNT`, Oracle used an index range
scan descending followed by table access by index rowid.

### Conclusion

The execution plan changed from a full table scan to an index range scan,
and the estimated cost decreased from 3 to 2.

This project does not claim a measured runtime improvement because
before/after elapsed execution time was not captured.