# HrisDependents


### Available Operations

* [list](#list) - List  Dependents
* [retrieve](#retrieve) - Retrieve Dependents

## list

List  Dependents

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.hris_dependents.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListHrisDependentsResponse)](../../models/operations/listhrisdependentsresponse.md)**


## retrieve

Retrieve Dependents from any connected Hris software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.hris_dependents.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_hris_dependent_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                    | Type                                                         | Required                                                     | Description                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `x_connection_token`                                         | *::String*                                                   | :heavy_check_mark:                                           | The connection token                                         |
| `id`                                                         | *::String*                                                   | :heavy_check_mark:                                           | id of the dependent you want to retrieve.                    |
| `remote_data`                                                | *T::Boolean*                                                 | :heavy_minus_sign:                                           | Set to true to include data from the original Hris software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveHrisDependentResponse)](../../models/operations/retrievehrisdependentresponse.md)**

