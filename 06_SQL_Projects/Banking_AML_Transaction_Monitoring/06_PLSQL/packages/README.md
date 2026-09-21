# PL/SQL Packages

Package specification and body implemented for AML alert management.

## Package

### AML_ALERT_PKG

The package provides reusable operations for customer AML alerts.

#### GET_CUSTOMER_ALERT_COUNT

Returns the total number of AML alerts associated with a customer.

Input:

- `P_CUSTOMER_ID`

Returns:

- Number of alerts for the specified customer

#### CLOSE_CUSTOMER_ALERTS

Closes all currently open AML alerts for a specified customer.

Input:

- `P_CUSTOMER_ID`

Only alerts with status `OPEN` are updated to `CLOSED`.

## Implemented Files

- `aml_alert_pkg_spec.sql`
- `aml_alert_pkg_body.sql`

## Testing

The package was tested using existing project data.

Examples:

- Customer `1003` returned 3 alerts
- Customer `1003` had its open alerts closed successfully