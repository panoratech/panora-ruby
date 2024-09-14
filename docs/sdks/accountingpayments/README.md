# AccountingPayments

## Overview

### Available Operations

* [list](#list) - List  Payments
* [create](#create) - Create Payments
* [retrieve](#retrieve) - Retrieve Payments

## list

List  Payments

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting_payments.list(x_connection_token="<value>", remote_data=true, limit=10.0, cursor="1b8b05bb-5273-4012-b520-8657b0b90874")

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

**[T.nilable(::OpenApiSDK::Operations::ListAccountingPaymentResponse)](../../models/operations/listaccountingpaymentresponse.md)**




## create

Create Payments in any supported Accounting software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting_payments.create(x_connection_token="<value>", unified_accounting_payment_input=::OpenApiSDK::Shared::UnifiedAccountingPaymentInput.new(
  invoice_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  transaction_date: DateTime.iso8601('2024-06-15T12:00:00Z'),
  contact_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  account_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  currency: "USD",
  exchange_rate: "1.2",
  total_amount: 10000.0,
  type: "Credit Card",
  company_info_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  accounting_period_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  tracking_categories: [
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
  field_mappings: ::OpenApiSDK::Shared::UnifiedAccountingPaymentInputFieldMappings.new(),
), remote_data=false)

if ! res.unified_accounting_payment_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 | Example                                                                                                     |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                        | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | The connection token                                                                                        |                                                                                                             |
| `unified_accounting_payment_input`                                                                          | [::OpenApiSDK::Shared::UnifiedAccountingPaymentInput](../../models/shared/unifiedaccountingpaymentinput.md) | :heavy_check_mark:                                                                                          | N/A                                                                                                         |                                                                                                             |
| `remote_data`                                                                                               | *T::Boolean*                                                                                                | :heavy_minus_sign:                                                                                          | Set to true to include data from the original Accounting software.                                          | false                                                                                                       |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateAccountingPaymentResponse)](../../models/operations/createaccountingpaymentresponse.md)**




## retrieve

Retrieve Payments from any connected Accounting software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting_payments.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_accounting_payment_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                          | Type                                                               | Required                                                           | Description                                                        | Example                                                            |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `x_connection_token`                                               | *::String*                                                         | :heavy_check_mark:                                                 | The connection token                                               |                                                                    |
| `id`                                                               | *::String*                                                         | :heavy_check_mark:                                                 | id of the payment you want to retrieve.                            | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                               |
| `remote_data`                                                      | *T::Boolean*                                                       | :heavy_minus_sign:                                                 | Set to true to include data from the original Accounting software. | false                                                              |

### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveAccountingPaymentResponse)](../../models/operations/retrieveaccountingpaymentresponse.md)**


