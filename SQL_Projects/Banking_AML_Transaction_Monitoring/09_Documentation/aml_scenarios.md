# AML Scenarios

## Scenario 01 - High-Value Successful Transactions

### Business Rule

Identify successful transactions where:

- Amount >= 1,000,000
- Transaction status = SUCCESS

### Result

The scenario identified 5 transactions:

- Transaction 3007
- Transaction 3008
- Transaction 3009
- Transaction 3004
- Transaction 3005

### Alert Generation

These transactions generated HIGH_VALUE_TRANSACTION alerts.

---

## Scenario 02 - Transaction Frequency

### Business Rule

Identify accounts having 3 or more successful transactions
within the same calendar day.

### Result

Account 2005 had 3 successful transactions on 10-Aug-2026.

Total transaction amount: 6,500,000.

---

## Scenario 03 - Potential Structuring Transactions

### Business Rule

Identify multiple successful transactions on the same account
where:

- Individual transaction amount is below 1,000,000
- Combined transaction amount reaches or exceeds 1,000,000
- Transactions occur on the same calendar day

### Result

No records were identified using the current project test data.

This does not indicate that the scenario is invalid; the current
test data does not contain a matching case.

---

## Scenario 04 - Rapid Movement

### Business Rule

Identify a successful CREDIT followed by a successful DEBIT:

- On the same account
- Within 1 hour
- Debit amount >= 80% of the credit amount

### Result

One case was identified:

- Account: 2003
- Credit transaction: 3004
- Credit amount: 1,500,000
- Debit transaction: 3005
- Debit amount: 1,200,000
- Debit percentage: 80%
- Time difference: 15 minutes

This case generated a RAPID_MOVEMENT alert.