# AccountingAttachments


### Available Operations

* [list](#list) - List  Attachments
* [create](#create) - Create Attachments
* [retrieve](#retrieve) - Retrieve Attachments

## list

List  Attachments

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting_attachments.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListAccountingAttachmentsResponse)](../../models/operations/listaccountingattachmentsresponse.md)**


## create

Create attachments in any supported Accounting software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting_attachments.create(x_connection_token="<value>", unified_accounting_attachment_input=::OpenApiSDK::Shared::UnifiedAccountingAttachmentInput.new(), remote_data=false)

if ! res.unified_accounting_attachment_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                              | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | The connection token                                                                                              |
| `unified_accounting_attachment_input`                                                                             | [::OpenApiSDK::Shared::UnifiedAccountingAttachmentInput](../../models/shared/unifiedaccountingattachmentinput.md) | :heavy_check_mark:                                                                                                | N/A                                                                                                               |
| `remote_data`                                                                                                     | *T::Boolean*                                                                                                      | :heavy_minus_sign:                                                                                                | Set to true to include data from the original Accounting software.                                                |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateAccountingAttachmentResponse)](../../models/operations/createaccountingattachmentresponse.md)**


## retrieve

Retrieve attachments from any connected Accounting software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting_attachments.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_accounting_attachment_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                          | Type                                                               | Required                                                           | Description                                                        |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `x_connection_token`                                               | *::String*                                                         | :heavy_check_mark:                                                 | The connection token                                               |
| `id`                                                               | *::String*                                                         | :heavy_check_mark:                                                 | id of the attachment you want to retrieve.                         |
| `remote_data`                                                      | *T::Boolean*                                                       | :heavy_minus_sign:                                                 | Set to true to include data from the original Accounting software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveAccountingAttachmentResponse)](../../models/operations/retrieveaccountingattachmentresponse.md)**

