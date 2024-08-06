# FilestorageFolders


### Available Operations

* [list](#list) - List  Folders
* [create](#create) - Create Folders
* [retrieve](#retrieve) - Retrieve Folders

## list

List  Folders

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.filestorage_folders.list(x_connection_token="<value>", remote_data=true, limit=10.0, cursor="1b8b05bb-5273-4012-b520-8657b0b90874")

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

**[T.nilable(::OpenApiSDK::Operations::ListFilestorageFolderResponse)](../../models/operations/listfilestoragefolderresponse.md)**


## create

Create Folders in any supported Filestorage software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.filestorage_folders.create(x_connection_token="<value>", remote_data=false, unified_filestorage_folder_input=::OpenApiSDK::Shared::UnifiedFilestorageFolderInput.new(
    name: "school",
    size: "2048",
    folder_url: "https://example.com/school",
    description: "All things school related",
    drive_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    parent_folder_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    shared_link: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    permission: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    field_mappings: {
      "online": "<value>",
    },
  ))

if ! res.unified_filestorage_folder_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                        | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | The connection token                                                                                        |
| `remote_data`                                                                                               | *T::Boolean*                                                                                                | :heavy_check_mark:                                                                                          | N/A                                                                                                         |
| `unified_filestorage_folder_input`                                                                          | [::OpenApiSDK::Shared::UnifiedFilestorageFolderInput](../../models/shared/unifiedfilestoragefolderinput.md) | :heavy_check_mark:                                                                                          | N/A                                                                                                         |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateFilestorageFolderResponse)](../../models/operations/createfilestoragefolderresponse.md)**


## retrieve

Retrieve Folders from any connected Filestorage software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.filestorage_folders.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_filestorage_folder_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                            | Type                                                                 | Required                                                             | Description                                                          | Example                                                              |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `x_connection_token`                                                 | *::String*                                                           | :heavy_check_mark:                                                   | The connection token                                                 |                                                                      |
| `id`                                                                 | *::String*                                                           | :heavy_check_mark:                                                   | id of the folder you want to retrieve.                               | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                                 |
| `remote_data`                                                        | *T::Boolean*                                                         | :heavy_minus_sign:                                                   | Set to true to include data from the original File Storage software. | false                                                                |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveFilestorageFolderResponse)](../../models/operations/retrievefilestoragefolderresponse.md)**

