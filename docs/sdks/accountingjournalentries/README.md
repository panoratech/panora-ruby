# AccountingJournalentries


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
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.accounting_journalentries.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                               | Type                                                    | Required                                                | Description                                             |
| ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- |
| `x_connection_token`                                    | *::String*                                              | :heavy_check_mark:                                      | The connection token                                    |
| `remote_data`                                           | *T::Boolean*                                            | :heavy_minus_sign:                                      | Set to true to include data from the original software. |
| `limit`                                                 | *::Float*                                               | :heavy_minus_sign:                                      | Set to get the number of records.                       |
| `cursor`                                                | *::String*                                              | :heavy_minus_sign:                                      | Set to get the number of records after this cursor.     |


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
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.accounting_journalentries.create(x_connection_token="<value>", unified_accounting_journalentry_input=::OpenApiSDK::Shared::UnifiedAccountingJournalentryInput.new(), remote_data=false)

if ! res.unified_accounting_journalentry_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                                  | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | The connection token                                                                                                  |
| `unified_accounting_journalentry_input`                                                                               | [::OpenApiSDK::Shared::UnifiedAccountingJournalentryInput](../../models/shared/unifiedaccountingjournalentryinput.md) | :heavy_check_mark:                                                                                                    | N/A                                                                                                                   |
| `remote_data`                                                                                                         | *T::Boolean*                                                                                                          | :heavy_minus_sign:                                                                                                    | Set to true to include data from the original Accounting software.                                                    |


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
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.accounting_journalentries.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_accounting_journalentry_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                          | Type                                                               | Required                                                           | Description                                                        |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `x_connection_token`                                               | *::String*                                                         | :heavy_check_mark:                                                 | The connection token                                               |
| `id`                                                               | *::String*                                                         | :heavy_check_mark:                                                 | id of the journalentry you want to retrieve.                       |
| `remote_data`                                                      | *T::Boolean*                                                       | :heavy_minus_sign:                                                 | Set to true to include data from the original Accounting software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveAccountingJournalEntryResponse)](../../models/operations/retrieveaccountingjournalentryresponse.md)**

