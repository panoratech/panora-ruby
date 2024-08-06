# AtsAttachments


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

    
res = s.ats_attachments.list(x_connection_token="<value>", remote_data=true, limit=10.0, cursor="1b8b05bb-5273-4012-b520-8657b0b90874")

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

**[T.nilable(::OpenApiSDK::Operations::ListAtsAttachmentResponse)](../../models/operations/listatsattachmentresponse.md)**


## create

Create Attachments in any supported ATS software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats_attachments.create(x_connection_token="<value>", unified_ats_attachment_input=::OpenApiSDK::Shared::UnifiedAtsAttachmentInput.new(
    file_url: "https://example.com/file.pdf",
    file_name: "file.pdf",
    attachment_type: ::OpenApiSDK::Shared::UnifiedAtsAttachmentInputAttachmentType::RESUME,
    remote_created_at: DateTime.iso8601('2024-10-01T12:00:00Z'),
    remote_modified_at: DateTime.iso8601('2024-10-01T12:00:00Z'),
    candidate_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    field_mappings: {
      "online": "<value>",
    },
  ), remote_data=false)

if ! res.unified_ats_attachment_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         | Example                                                                                             |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                | *::String*                                                                                          | :heavy_check_mark:                                                                                  | The connection token                                                                                |                                                                                                     |
| `unified_ats_attachment_input`                                                                      | [::OpenApiSDK::Shared::UnifiedAtsAttachmentInput](../../models/shared/unifiedatsattachmentinput.md) | :heavy_check_mark:                                                                                  | N/A                                                                                                 |                                                                                                     |
| `remote_data`                                                                                       | *T::Boolean*                                                                                        | :heavy_minus_sign:                                                                                  | Set to true to include data from the original Ats software.                                         | false                                                                                               |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateAtsAttachmentResponse)](../../models/operations/createatsattachmentresponse.md)**


## retrieve

Retrieve Attachments from any connected Ats software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats_attachments.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_ats_attachment_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 | Example                                                     |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `x_connection_token`                                        | *::String*                                                  | :heavy_check_mark:                                          | The connection token                                        |                                                             |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | id of the attachment you want to retrieve.                  | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                        |
| `remote_data`                                               | *T::Boolean*                                                | :heavy_minus_sign:                                          | Set to true to include data from the original Ats software. | false                                                       |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveAtsAttachmentResponse)](../../models/operations/retrieveatsattachmentresponse.md)**

