# FilestorageFiles


### Available Operations

* [list](#list) - List  Files
* [create](#create) - Create Files
* [retrieve](#retrieve) - Retrieve Files

## list

List  Files

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.filestorage_files.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListFilestorageFileResponse)](../../models/operations/listfilestoragefileresponse.md)**


## create

Create Files in any supported Filestorage software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.filestorage_files.create(x_connection_token="<value>", remote_data=false, unified_filestorage_file_input=::OpenApiSDK::Shared::UnifiedFilestorageFileInput.new(
    name: "my_paris_photo.png",
    file_url: "https://example.com/my_paris_photo.png",
    mime_type: "application/pdf",
    size: "1024",
    folder_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    permission: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    shared_link: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    field_mappings: {
      "online": "<value>",
    },
  ))

if ! res.unified_filestorage_file_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                    | *::String*                                                                                              | :heavy_check_mark:                                                                                      | The connection token                                                                                    |
| `remote_data`                                                                                           | *T::Boolean*                                                                                            | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `unified_filestorage_file_input`                                                                        | [::OpenApiSDK::Shared::UnifiedFilestorageFileInput](../../models/shared/unifiedfilestoragefileinput.md) | :heavy_check_mark:                                                                                      | N/A                                                                                                     |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateFilestorageFileResponse)](../../models/operations/createfilestoragefileresponse.md)**


## retrieve

Retrieve Files from any connected Filestorage software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.filestorage_files.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_filestorage_file_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                            | Type                                                                 | Required                                                             | Description                                                          | Example                                                              |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `x_connection_token`                                                 | *::String*                                                           | :heavy_check_mark:                                                   | The connection token                                                 |                                                                      |
| `id`                                                                 | *::String*                                                           | :heavy_check_mark:                                                   | id of the file you want to retrieve.                                 | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                                 |
| `remote_data`                                                        | *T::Boolean*                                                         | :heavy_minus_sign:                                                   | Set to true to include data from the original File Storage software. | false                                                                |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveFilestorageFileResponse)](../../models/operations/retrievefilestoragefileresponse.md)**

