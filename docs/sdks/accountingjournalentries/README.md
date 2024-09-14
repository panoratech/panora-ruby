# AccountingJournalentries

## Overview

### Available Operations

* [list](#list) - List  JournalEntrys
* [create](#create) - Create Journal Entries
* [retrieve](#retrieve) - Retrieve Journal Entries

## list

List  JournalEntrys

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting_journalentries.list(x_connection_token="<value>", remote_data=true, limit=10.0, cursor="1b8b05bb-5273-4012-b520-8657b0b90874")

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

**[T.nilable(::OpenApiSDK::Operations::ListAccountingJournalEntryResponse)](../../models/operations/listaccountingjournalentryresponse.md)**




## create

Create Journal Entries in any supported Accounting software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting_journalentries.create(x_connection_token="<value>", unified_accounting_journalentry_input=::OpenApiSDK::Shared::UnifiedAccountingJournalentryInput.new(
  transaction_date: DateTime.iso8601('2024-06-15T12:00:00Z'),
  payments: [
    "payment1",
    "payment2",
  ],
  applied_payments: [
    "appliedPayment1",
    "appliedPayment2",
  ],
  memo: "Monthly expense journal entry",
  currency: "USD",
  exchange_rate: "1.2",
  id_acc_company_info: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  journal_number: "JE-001",
  tracking_categories: [
    "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  ],
  id_acc_accounting_period: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  posting_status: "Posted",
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
  field_mappings: ::OpenApiSDK::Shared::UnifiedAccountingJournalentryInputFieldMappings.new(),
), remote_data=false)

if ! res.unified_accounting_journalentry_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           | Example                                                                                                               |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                                  | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | The connection token                                                                                                  |                                                                                                                       |
| `unified_accounting_journalentry_input`                                                                               | [::OpenApiSDK::Shared::UnifiedAccountingJournalentryInput](../../models/shared/unifiedaccountingjournalentryinput.md) | :heavy_check_mark:                                                                                                    | N/A                                                                                                                   |                                                                                                                       |
| `remote_data`                                                                                                         | *T::Boolean*                                                                                                          | :heavy_minus_sign:                                                                                                    | Set to true to include data from the original Accounting software.                                                    | false                                                                                                                 |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateAccountingJournalEntryResponse)](../../models/operations/createaccountingjournalentryresponse.md)**




## retrieve

Retrieve Journal Entries from any connected Accounting software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting_journalentries.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_accounting_journalentry_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                          | Type                                                               | Required                                                           | Description                                                        | Example                                                            |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `x_connection_token`                                               | *::String*                                                         | :heavy_check_mark:                                                 | The connection token                                               |                                                                    |
| `id`                                                               | *::String*                                                         | :heavy_check_mark:                                                 | id of the journalentry you want to retrieve.                       | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                               |
| `remote_data`                                                      | *T::Boolean*                                                       | :heavy_minus_sign:                                                 | Set to true to include data from the original Accounting software. | false                                                              |

### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveAccountingJournalEntryResponse)](../../models/operations/retrieveaccountingjournalentryresponse.md)**


