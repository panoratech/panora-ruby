# AtsEeocs


### Available Operations

* [list](#list) - List  Eeocss
* [retrieve](#retrieve) - Retrieve Eeocs

## list

List  Eeocss

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.ats_eeocs.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListAtsEeocsResponse)](../../models/operations/listatseeocsresponse.md)**


## retrieve

Retrieve a eeocs from any connected Ats software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.ats_eeocs.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_ats_eeocs_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `x_connection_token`                                        | *::String*                                                  | :heavy_check_mark:                                          | The connection token                                        |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | id of the eeocs you want to retrieve.                       |
| `remote_data`                                               | *T::Boolean*                                                | :heavy_minus_sign:                                          | Set to true to include data from the original Ats software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveAtsEeocsResponse)](../../models/operations/retrieveatseeocsresponse.md)**

