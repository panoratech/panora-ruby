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
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing_attachments.list(x_connection_token="<value>", remote_data=true, limit=10.0, cursor="1b8b05bb-5273-4012-b520-8657b0b90874")

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

**[T.nilable(::OpenApiSDK::Operations::ListTicketingAttachmentsResponse)](../../models/operations/listticketingattachmentsresponse.md)**


## create

Create Attachments in any supported Ticketing software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing_attachments.create(x_connection_token="<value>", unified_ticketing_attachment_input=::OpenApiSDK::Shared::UnifiedTicketingAttachmentInput.new(
    file_name: "features_planning.pdf",
    file_url: "https://example.com/features_planning.pdf",
    uploader: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    ticket_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    comment_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    field_mappings: {
      "online": "<value>",
    },
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
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing_attachments.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_ticketing_attachment_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       | Example                                                           |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `x_connection_token`                                              | *::String*                                                        | :heavy_check_mark:                                                | The connection token                                              |                                                                   |
| `id`                                                              | *::String*                                                        | :heavy_check_mark:                                                | id of the attachment you want to retrive.                         | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                              |
| `remote_data`                                                     | *T::Boolean*                                                      | :heavy_minus_sign:                                                | Set to true to include data from the original Ticketing software. | false                                                             |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveTicketingAttachmentResponse)](../../models/operations/retrieveticketingattachmentresponse.md)**

