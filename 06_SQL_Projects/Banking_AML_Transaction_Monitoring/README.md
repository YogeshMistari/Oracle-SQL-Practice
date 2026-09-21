# Banking & AML Transaction Monitoring System

Oracle SQL / PL/SQL portfolio project for banking transaction monitoring,
AML scenario analysis, alert management, reporting, and performance tuning.

## Project Overview

This project demonstrates a banking transaction monitoring workflow using
Oracle SQL and PL/SQL.

The project includes:

- Core banking database tables
- Test data
- AML monitoring scenarios
- AML alert generation and management
- SQL views
- PL/SQL functions
- PL/SQL procedures
- PL/SQL package
- AML reports
- Oracle performance tuning
- Execution plan comparison
- Project documentation

## Core Database Tables

The project uses the following tables:

- CUSTOMER
- ACCOUNT
- BANK_TRANSACTION
- AML_ALERT

## Test Data

Current project test data contains:

- 5 customers
- 5 accounts
- 10 bank transactions
- 6 AML alerts

## AML Scenarios

### Scenario 01 - High-Value Successful Transactions

Identify successful transactions where:

- Amount >= 1,000,000
- Transaction status = SUCCESS

Current test data identified 5 matching transactions.

### Scenario 02 - Transaction Frequency

Identify accounts having:

- 3 or more successful transactions
- On the same calendar day

Current test data identified account `2005` with 3 transactions
on 10-Aug-2026.

### Scenario 03 - Potential Structuring Transactions

Identify multiple successful transactions where:

- Individual transaction amount < 1,000,000
- Same account
- Same calendar day
- Combined amount >= 1,000,000

No matching records were identified using the current project test data.

### Scenario 04 - Rapid Movement

Identify:

- Successful CREDIT
- Followed by successful DEBIT
- Same account
- Within 1 hour
- Debit amount >= 80% of the credit amount

Current test data identified one matching case involving transactions
`3004` and `3005`.

## AML Alert Management

The `AML_ALERT` table stores alerts generated from the configured
monitoring scenarios.

Supported alert statuses:

- OPEN
- CLOSED
- UNDER_REVIEW

Current test data contains 6 generated AML alerts.

## SQL View

Implemented view:

`CUSTOMER_TRANSACTION_VIEW`

The view combines customer, account, and transaction information
for reporting and analysis.

## PL/SQL Components

### Functions

- `FN_CUSTOMER_RISK_LEVEL`
- `FN_CUSTOMER_ALERT_COUNT`

### Procedures

- `PR_UPDATE_ALERT_STATUS`
- `PR_CLOSE_CUSTOMER_ALERTS`

### Package

- `AML_ALERT_PKG`

The package provides:

- Customer alert count
- Customer alert closure

## Reports

The following reports are implemented:

- AML Alert Report
- Customer Transaction Report
- Risk Summary Report

The Risk Summary Report uses the existing `RISK_LEVEL` stored in the
`CUSTOMER` table together with alert counts and alert amounts.

No additional numeric risk-scoring formula has been introduced.

## Performance Tuning

Implemented index:

`IDX_BANK_TXN_STATUS_AMOUNT`

The index was created on:

- `BANK_TRANSACTION_STATUS`
- `AMOUNT`

### Execution Plan Comparison

Before the index:

- Access method: `TABLE ACCESS FULL`
- Estimated cost: `3`
- Plan hash value: `2938351628`

After the index:

- Access method: `INDEX RANGE SCAN DESCENDING`
- Estimated cost: `2`
- Plan hash value: `1141959097`

The execution plan changed from a full table scan to an index range scan.

No measured runtime improvement is claimed because before/after elapsed
execution time was not captured.

## Project Structure

```text
Banking_AML_Transaction_Monitoring
│
├── 01_Database_Design
├── 02_Diagrams
├── 02_Test_Data
├── 03_Table_Creation
├── 03_Views
├── 04_AML_Scenarios
├── 04_Alert_Management
├── 05_AML_Analysis
├── 06_PLSQL
├── 07_Performance_Tuning
├── 08_Reports
└── 09_Documentation