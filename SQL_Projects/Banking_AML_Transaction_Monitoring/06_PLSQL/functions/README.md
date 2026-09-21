# PL/SQL Functions

Reusable AML and transaction-analysis functions implemented in this project.

## Functions

### FN_CUSTOMER_RISK_LEVEL

Returns the existing risk level of a customer from the `CUSTOMER` table.

Input:

- `P_CUSTOMER_ID`

Returns:

- Customer risk level
- `CUSTOMER_NOT_FOUND` when the customer does not exist

### FN_CUSTOMER_ALERT_COUNT

Returns the total number of AML alerts associated with a customer.

Input:

- `P_CUSTOMER_ID`

Returns:

- Number of alerts for the specified customer

## Implemented Files

- `fn_customer_risk_level.sql`
- `fn_customer_alert_count.sql`

## Testing

The functions were tested using existing project data.

Examples:

- Customer `1003` returned risk level `HIGH`
- Customer `1003` returned 3 alerts
- Customer `1001` returned 0 alerts
- Non-existing customer `9999` returned `CUSTOMER_NOT_FOUND`