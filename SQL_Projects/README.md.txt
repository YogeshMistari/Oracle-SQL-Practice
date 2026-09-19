# Banking & AML Transaction Monitoring

## 📌 Project Overview

This project is a real-world Oracle SQL project designed to simulate a Banking Transaction Monitoring and Anti-Money Laundering (AML) environment.

The project demonstrates how customer, account, and banking transaction data can be stored, analyzed, and monitored using Oracle SQL to identify potentially suspicious transaction patterns.

---

## 🎯 Business Objective

The primary objective is to build a transaction monitoring solution that can:

- Maintain customer information
- Maintain customer account information
- Store banking transactions
- Analyze transaction activity
- Identify high-value transactions
- Identify transactions involving high-risk customers
- Detect multiple transactions within a short period
- Identify potentially suspicious transaction patterns
- Generate AML alerts based on defined business rules
- Demonstrate SQL performance optimization techniques

---

## 🛠️ Technology Stack

- **Database:** Oracle Database
- **Language:** SQL / PL/SQL
- **IDE:** Visual Studio Code
- **Version Control:** Git
- **Repository:** GitHub

---

## 🏗️ Database Architecture

The project follows a relational banking database architecture:

```text
CUSTOMER
   |
   | 1 : Many
   v
ACCOUNT
   |
   | 1 : Many
   v
BANK_TRANSACTION