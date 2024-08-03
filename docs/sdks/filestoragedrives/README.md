# FilestorageDrives


### Available Operations

* [list](#list) - List  Drives
* [retrieve](#retrieve) - Retrieve Drives

## list

List  Drives

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.filestorage_drives.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListFilestorageDrivesResponse)](../../models/operations/listfilestoragedrivesresponse.md)**


## retrieve

Retrieve Drives from any connected Filestorage software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.filestorage_drives.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_filestorage_drive_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                            | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `x_connection_token`                                                 | *::String*                                                           | :heavy_check_mark:                                                   | The connection token                                                 |
| `id`                                                                 | *::String*                                                           | :heavy_check_mark:                                                   | id of the drive you want to retrieve.                                |
| `remote_data`                                                        | *T::Boolean*                                                         | :heavy_minus_sign:                                                   | Set to true to include data from the original File Storage software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveFilestorageDriveResponse)](../../models/operations/retrievefilestoragedriveresponse.md)**

