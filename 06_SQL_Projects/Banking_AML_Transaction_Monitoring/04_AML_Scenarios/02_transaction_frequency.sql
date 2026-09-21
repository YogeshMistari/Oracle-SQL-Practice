-- ============================================================
-- PROJECT 1 : BANKING & AML TRANSACTION MONITORING
-- Scenario 02: Transaction Frequency
-- ============================================================

-- Business Rule:
-- Identify accounts having 3 or more successful transactions
-- within a 1-day monitoring period.

SELECT
    ACCOUNT_ID,
    TRUNC(BANK_TRANSACTION_DATE) AS TRANSACTION_DATE,
    COUNT(*) AS TRANSACTION_COUNT,
    MIN(BANK_TRANSACTION_DATE) AS FIRST_TRANSACTION_DATE,
    MAX(BANK_TRANSACTION_DATE) AS LAST_TRANSACTION_DATE,
    SUM(AMOUNT) AS TOTAL_TRANSACTION_AMOUNT
FROM BANK_TRANSACTION
WHERE BANK_TRANSACTION_STATUS = 'SUCCESS'
GROUP BY
    ACCOUNT_ID,
    TRUNC(BANK_TRANSACTION_DATE)
HAVING COUNT(*) >= 3
ORDER BY
    TRANSACTION_DATE,
    TRANSACTION_COUNT DESC;