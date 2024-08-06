# CrmNotes


### Available Operations

* [list](#list) - List Notes
* [create](#create) - Create Notes
* [retrieve](#retrieve) - Retrieve Notes

## list

List Notes

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.crm_notes.list(x_connection_token="<value>", remote_data=true, limit=10.0, cursor="1b8b05bb-5273-4012-b520-8657b0b90874")

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

**[T.nilable(::OpenApiSDK::Operations::ListCrmNoteResponse)](../../models/operations/listcrmnoteresponse.md)**


## create

Create Notes in any supported Crm software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.crm_notes.create(x_connection_token="<value>", unified_crm_note_input=::OpenApiSDK::Shared::UnifiedCrmNoteInput.new(
    content: "My notes taken during the meeting",
    user_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    company_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    contact_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    deal_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    field_mappings: {
      "online": "<value>",
    },
  ), remote_data=false)

if ! res.unified_crm_note_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             | Example                                                                                 |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | The connection token                                                                    |                                                                                         |
| `unified_crm_note_input`                                                                | [::OpenApiSDK::Shared::UnifiedCrmNoteInput](../../models/shared/unifiedcrmnoteinput.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |                                                                                         |
| `remote_data`                                                                           | *T::Boolean*                                                                            | :heavy_minus_sign:                                                                      | Set to true to include data from the original Crm software.                             | false                                                                                   |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateCrmNoteResponse)](../../models/operations/createcrmnoteresponse.md)**


## retrieve

Retrieve Notes from any connected Crm software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.crm_notes.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_crm_note_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 | Example                                                     |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `x_connection_token`                                        | *::String*                                                  | :heavy_check_mark:                                          | The connection token                                        |                                                             |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | id of the note you want to retrieve.                        | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                        |
| `remote_data`                                               | *T::Boolean*                                                | :heavy_minus_sign:                                          | Set to true to include data from the original Crm software. | false                                                       |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveCrmNoteResponse)](../../models/operations/retrievecrmnoteresponse.md)**

