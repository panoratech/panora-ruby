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

    
res = s.filestorage_folders.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListFilestorageFolderResponse)](../../models/operations/listfilestoragefolderresponse.md)**


## create

Create Folders in any supported Filestorage software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.filestorage_folders.create(x_connection_token="<value>", remote_data=false, unified_filestorage_folder_input=::OpenApiSDK::Shared::UnifiedFilestorageFolderInput.new(
    name: "<value>",
    size: "<value>",
    folder_url: "<value>",
    description: "Multi-tiered human-resource model",
    drive_id: "<value>",
    parent_folder_id: "<value>",
    shared_link: "<value>",
    permission: "<value>",
    field_mappings: ::OpenApiSDK::Shared::UnifiedFilestorageFolderInputFieldMappings.new(),
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

    
res = s.filestorage_folders.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_filestorage_folder_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                            | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `x_connection_token`                                                 | *::String*                                                           | :heavy_check_mark:                                                   | The connection token                                                 |
| `id`                                                                 | *::String*                                                           | :heavy_check_mark:                                                   | id of the folder you want to retrieve.                               |
| `remote_data`                                                        | *T::Boolean*                                                         | :heavy_minus_sign:                                                   | Set to true to include data from the original File Storage software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveFilestorageFolderResponse)](../../models/operations/retrievefilestoragefolderresponse.md)**

