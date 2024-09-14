# AccountingAttachments

## Overview

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

    
res = s.accounting_attachments.list(x_connection_token="<value>", remote_data=true, limit=10.0, cursor="1b8b05bb-5273-4012-b520-8657b0b90874")

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

    
res = s.accounting_attachments.create(x_connection_token="<value>", unified_accounting_attachment_input=::OpenApiSDK::Shared::UnifiedAccountingAttachmentInput.new(
  file_name: "invoice.pdf",
  file_url: "https://example.com/files/invoice.pdf",
  account_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  field_mappings: ::OpenApiSDK::Shared::UnifiedAccountingAttachmentInputFieldMappings.new(),
), remote_data=false)

if ! res.unified_accounting_attachment_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       | Example                                                                                                           |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                              | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | The connection token                                                                                              |                                                                                                                   |
| `unified_accounting_attachment_input`                                                                             | [::OpenApiSDK::Shared::UnifiedAccountingAttachmentInput](../../models/shared/unifiedaccountingattachmentinput.md) | :heavy_check_mark:                                                                                                | N/A                                                                                                               |                                                                                                                   |
| `remote_data`                                                                                                     | *T::Boolean*                                                                                                      | :heavy_minus_sign:                                                                                                | Set to true to include data from the original Accounting software.                                                | false                                                                                                             |

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

    
res = s.accounting_attachments.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_accounting_attachment_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                          | Type                                                               | Required                                                           | Description                                                        | Example                                                            |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `x_connection_token`                                               | *::String*                                                         | :heavy_check_mark:                                                 | The connection token                                               |                                                                    |
| `id`                                                               | *::String*                                                         | :heavy_check_mark:                                                 | id of the attachment you want to retrieve.                         | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                               |
| `remote_data`                                                      | *T::Boolean*                                                       | :heavy_minus_sign:                                                 | Set to true to include data from the original Accounting software. | false                                                              |

### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveAccountingAttachmentResponse)](../../models/operations/retrieveaccountingattachmentresponse.md)**


