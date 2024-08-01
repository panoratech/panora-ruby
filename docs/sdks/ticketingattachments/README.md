# TicketingAttachments


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

    
res = s.ticketing_attachments.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListTicketingAttachmentsResponse)](../../models/operations/listticketingattachmentsresponse.md)**


## create

Create Attachments in any supported Ticketing software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.ticketing_attachments.create(x_connection_token="<value>", unified_ticketing_attachment_input=::OpenApiSDK::Shared::UnifiedTicketingAttachmentInput.new(
    file_name: "your_file_here",
    file_url: "<value>",
    uploader: "<value>",
    field_mappings: ::OpenApiSDK::Shared::UnifiedTicketingAttachmentInputFieldMappings.new(),
  ), remote_data=false)

if ! res.unified_ticketing_attachment_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                            | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | The connection token                                                                                            |
| `unified_ticketing_attachment_input`                                                                            | [::OpenApiSDK::Shared::UnifiedTicketingAttachmentInput](../../models/shared/unifiedticketingattachmentinput.md) | :heavy_check_mark:                                                                                              | N/A                                                                                                             |
| `remote_data`                                                                                                   | *T::Boolean*                                                                                                    | :heavy_minus_sign:                                                                                              | Set to true to include data from the original Ticketing software.                                               |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateTicketingAttachmentResponse)](../../models/operations/createticketingattachmentresponse.md)**


## retrieve

Retrieve Attachments from any connected Ticketing software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.ticketing_attachments.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_ticketing_attachment_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `x_connection_token`                                              | *::String*                                                        | :heavy_check_mark:                                                | The connection token                                              |
| `id`                                                              | *::String*                                                        | :heavy_check_mark:                                                | id of the attachment you want to retrive.                         |
| `remote_data`                                                     | *T::Boolean*                                                      | :heavy_minus_sign:                                                | Set to true to include data from the original Ticketing software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveTicketingAttachmentResponse)](../../models/operations/retrieveticketingattachmentresponse.md)**

