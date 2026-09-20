-- ============================================================
-- PROJECT 1 : BANKING & AML TRANSACTION MONITORING
-- Scenario 03: Potential Structuring Transactions
-- ============================================================

-- Business Rule:
-- Identify multiple successful transactions on the same account
-- where individual transaction amounts are below 1,000,000
-- but the combined transaction amount reaches or exceeds 1,000,000
-- within the same calendar day.

SELECT
    ACCOUNT_ID,
    TRUNC(BANK_TRANSACTION_DATE) AS TRANSACTION_DATE,
    COUNT(*) AS TRANSACTION_COUNT,
    SUM(AMOUNT) AS TOTAL_TRANSACTION_AMOUNT,
    MIN(AMOUNT) AS MIN_TRANSACTION_AMOUNT,
    MAX(AMOUNT) AS MAX_TRANSACTION_AMOUNT
FROM BANK_TRANSACTION
WHERE BANK_TRANSACTION_STATUS = 'SUCCESS'
  AND AMOUNT < 1000000
GROUP BY
    ACCOUNT_ID,
    TRUNC(BANK_TRANSACTION_DATE)
HAVING
    COUNT(*) > 1
    AND SUM(AMOUNT) >= 1000000
ORDER BY
    TRANSACTION_DATE,
    TOTAL_TRANSACTION_AMOUNT DESC;