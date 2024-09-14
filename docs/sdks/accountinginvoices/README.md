# AccountingInvoices

## Overview

### Available Operations

* [list](#list) - List  Invoices
* [create](#create) - Create Invoices
* [retrieve](#retrieve) - Retrieve Invoices

## list

List  Invoices

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting_invoices.list(x_connection_token="<value>", remote_data=true, limit=10.0, cursor="1b8b05bb-5273-4012-b520-8657b0b90874")

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                               | Type                                                    | Required                                                | Description                                             | Example                                                 |
| ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- |
| `x_connection_token`                                    | *::String*                                              | :heavy_check_mark:                                      | The connection token                                    |                                                         |
| `remote_data`                                           | *T::Boolean*                                            | :heavy_minus_sign:                                      | Set to true to include data from the original software. | true                                                    |
| `limit`                                                 | *::Float*                                               | :heavy_minus_sign:                                      | Set to get the number of records.                       | 10                                                      |
| `cursor`                                                | *::String*                                              | :heavy_minus_sign:                                      | Set to get the number of records after this cursor.     | 1b8b05bb-5273-4012-b520-8657b0b90874                    |

### Response

**[T.nilable(::OpenApiSDK::Operations::ListAccountingInvoiceResponse)](../../models/operations/listaccountinginvoiceresponse.md)**




## create

Create invoices in any supported Accounting software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting_invoices.create(x_connection_token="<value>", unified_accounting_invoice_input=::OpenApiSDK::Shared::UnifiedAccountingInvoiceInput.new(
  type: "Sales",
  number: "INV-001",
  issue_date: DateTime.iso8601('2024-06-15T12:00:00Z'),
  due_date: DateTime.iso8601('2024-07-15T12:00:00Z'),
  paid_on_date: DateTime.iso8601('2024-07-10T12:00:00Z'),
  memo: "Payment for services rendered",
  currency: "USD",
  exchange_rate: "1.2",
  total_discount: 1000.0,
  sub_total: 10000.0,
  status: "Paid",
  total_tax_amount: 1000.0,
  total_amount: 11000.0,
  balance: 0.0,
  contact_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  accounting_period_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  tracking_categories: [
    "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  ],
  line_items: [
    ::OpenApiSDK::Shared::LineItem.new(
      name: "Net Income",
      value: 100000.0,
      type: "Operating Activities",
      parent_item: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
      remote_id: "report_item_1234",
      remote_generated_at: DateTime.iso8601('2024-07-01T12:00:00Z'),
      company_info_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
      created_at: DateTime.iso8601('2024-06-15T12:00:00Z'),
      modified_at: DateTime.iso8601('2024-06-15T12:00:00Z'),
    ),
  ],
  field_mappings: ::OpenApiSDK::Shared::UnifiedAccountingInvoiceInputFieldMappings.new(),
), remote_data=false)

if ! res.unified_accounting_invoice_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 | Example                                                                                                     |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                        | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | The connection token                                                                                        |                                                                                                             |
| `unified_accounting_invoice_input`                                                                          | [::OpenApiSDK::Shared::UnifiedAccountingInvoiceInput](../../models/shared/unifiedaccountinginvoiceinput.md) | :heavy_check_mark:                                                                                          | N/A                                                                                                         |                                                                                                             |
| `remote_data`                                                                                               | *T::Boolean*                                                                                                | :heavy_minus_sign:                                                                                          | Set to true to include data from the original Accounting software.                                          | false                                                                                                       |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateAccountingInvoiceResponse)](../../models/operations/createaccountinginvoiceresponse.md)**




## retrieve

Retrieve Invoices from any connected Accounting software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting_invoices.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_accounting_invoice_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                          | Type                                                               | Required                                                           | Description                                                        | Example                                                            |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `x_connection_token`                                               | *::String*                                                         | :heavy_check_mark:                                                 | The connection token                                               |                                                                    |
| `id`                                                               | *::String*                                                         | :heavy_check_mark:                                                 | id of the invoice you want to retrieve.                            | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                               |
| `remote_data`                                                      | *T::Boolean*                                                       | :heavy_minus_sign:                                                 | Set to true to include data from the original Accounting software. | false                                                              |

### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveAccountingInvoiceResponse)](../../models/operations/retrieveaccountinginvoiceresponse.md)**


