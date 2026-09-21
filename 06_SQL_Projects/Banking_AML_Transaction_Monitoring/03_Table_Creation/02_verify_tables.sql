-- ============================================================
-- PROJECT 1 : BANKING & AML TRANSACTION MONITORING
-- File     : 02_verify_tables.sql
-- Purpose  : Verify project tables
-- ============================================================

SELECT table_name
FROM user_tables
WHERE table_name IN ('CUSTOMER', 'ACCOUNT', 'BANK_TRANSACTION')
ORDER BY table_name;