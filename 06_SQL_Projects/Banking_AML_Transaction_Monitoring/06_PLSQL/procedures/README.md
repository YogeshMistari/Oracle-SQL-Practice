# PL/SQL Procedures

Procedures implemented for AML alert management.

## Procedures

### PR_UPDATE_ALERT_STATUS

Updates the status of a specific AML alert.

Input:

- `P_ALERT_ID`
- `P_ALERT_STATUS`

The procedure converts the supplied status to uppercase.

If the alert ID does not exist, an application error is raised.

### PR_CLOSE_CUSTOMER_ALERTS

Closes all currently open AML alerts for a specified customer.

Input:

- `P_CUSTOMER_ID`

Only alerts with status `OPEN` are updated to `CLOSED`.

## Implemented Files

- `pr_update_alert_status.sql`
- `pr_close_customer_alerts.sql`

## Testing

The procedures were tested using existing project data.

Examples:

- Alert `10001` was updated from `OPEN` to `CLOSED`
- Customer `1005` had 3 open alerts closed