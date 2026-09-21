# Project Notes

## Project

Banking & AML Transaction Monitoring

## Database Objects

The project uses the following core tables:

- CUSTOMER
- ACCOUNT
- BANK_TRANSACTION
- AML_ALERT

A customer transaction view is also implemented:

- CUSTOMER_TRANSACTION_VIEW

## AML Scenarios Implemented

1. High-Value Successful Transactions
2. Transaction Frequency
3. Potential Structuring Transactions
4. Rapid Movement

## PL/SQL Components

### Functions

- FN_CUSTOMER_RISK_LEVEL
- FN_CUSTOMER_ALERT_COUNT

### Procedures

- PR_UPDATE_ALERT_STATUS
- PR_CLOSE_CUSTOMER_ALERTS

### Package

- AML_ALERT_PKG

The package provides:

- Customer alert count
- Customer alert closure

## Reporting

The following reports are implemented:

- AML Alert Report
- Customer Transaction Report
- Risk Summary Report

## Performance Tuning

Index implemented:

`IDX_BANK_TXN_STATUS_AMOUNT`

The Scenario 01 execution plan changed from:

`TABLE ACCESS FULL`

to:

`INDEX RANGE SCAN DESCENDING`

Estimated cost changed from 3 to 2.

No measured runtime improvement is claimed because before/after elapsed
execution time was not captured.

## Test Results

Current project test data contains:

- 5 customers
- 5 accounts
- 10 transactions
- 6 generated AML alerts

Scenario 03 returned no matching records with the current test data.

Scenario 04 identified one rapid-movement case.

## Implementation Note

The project uses the existing customer risk levels stored in the
CUSTOMER table. No additional numeric risk-scoring formula was introduced.

## GitHub

Final project files will be reviewed, validated and uploaded to the
project GitHub repository after implementation is complete.