# Business Rules

## Scenario 01 - High-Value Successful Transactions

- Transaction amount >= 1,000,000
- Transaction status = SUCCESS

## Scenario 02 - Transaction Frequency

- Transaction status = SUCCESS
- 3 or more transactions
- Same account
- Same calendar day

## Scenario 03 - Potential Structuring Transactions

- Transaction status = SUCCESS
- Individual transaction amount < 1,000,000
- Multiple transactions on the same account
- Same calendar day
- Combined amount >= 1,000,000

## Scenario 04 - Rapid Movement

- Credit transaction status = SUCCESS
- Debit transaction status = SUCCESS
- Same account
- Debit occurs after the credit
- Debit occurs within 1 hour of the credit
- Debit amount >= 80% of the credit amount

## Alert Status

The AML alert table supports the following statuses:

- OPEN
- CLOSED
- UNDER_REVIEW

## Important Note

These rules identify transactions or transaction patterns that meet
the configured monitoring criteria. An alert is not, by itself, proof
of suspicious activity.