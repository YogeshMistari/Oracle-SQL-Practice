# Banking & AML Transaction Monitoring System

Oracle SQL / PL/SQL portfolio project for banking transaction monitoring and AML scenario analysis.

## Current Status
- Database structure documented
- BANK_TRANSACTIONS table structure verified
- AML Scenario 01 defined: High-Value Successful Transactions
- Alert generation, PL/SQL automation, reporting and performance tuning are next

## Project Location
Designed to live under:
`E:\Oracle SQL Practice 2026-27\SQL_Projects\Banking_AML_Transaction_Monitoring`

## Verified BANK_TRANSACTIONS columns
- BANK_TRANSACTION_ID NUMBER(15)
- ACCOUNT_ID NUMBER(10)
- BANK_TRANSACTION_DATE TIMESTAMP(6)
- BANK_TRANSACTION_TYPE VARCHAR2(10)
- AMOUNT NUMBER(18,2)
- CURRENCY VARCHAR2(3)
- COUNTRY VARCHAR2(50)
- CHANNEL VARCHAR2(20)
- REFERENCE_NUMBER VARCHAR2(50)
- BANK_TRANSACTION_STATUS VARCHAR2(20)
- CREATED_DATE TIMESTAMP(6)

## AML Scenario 01
Flag successful transactions with amount >= 1,000,000 as candidates for AML monitoring.

This rule is a monitoring rule and does not by itself establish suspicious activity.
