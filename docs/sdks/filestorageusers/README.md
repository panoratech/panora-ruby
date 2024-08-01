# FilestorageUsers


### Available Operations

* [list](#list) - List  Users
* [retrieve](#retrieve) - Retrieve Users

## list

List  Users

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.filestorage_users.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListFilestorageUsersResponse)](../../models/operations/listfilestorageusersresponse.md)**


## retrieve

Retrieve Users from any connected Filestorage software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.filestorage_users.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_user_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                            | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `x_connection_token`                                                 | *::String*                                                           | :heavy_check_mark:                                                   | The connection token                                                 |
| `id`                                                                 | *::String*                                                           | :heavy_check_mark:                                                   | id of the permission you want to retrieve.                           |
| `remote_data`                                                        | *T::Boolean*                                                         | :heavy_minus_sign:                                                   | Set to true to include data from the original File Storage software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveFilestorageUserResponse)](../../models/operations/retrievefilestorageuserresponse.md)**

