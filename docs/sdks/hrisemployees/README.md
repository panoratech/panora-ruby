# HrisEmployees


### Available Operations

* [list](#list) - List  Employees
* [create](#create) - Create Employees
* [retrieve](#retrieve) - Retrieven Employees

## list

List  Employees

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris_employees.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListHrisEmployeeResponse)](../../models/operations/listhrisemployeeresponse.md)**


## create

Create Employees in any supported Hris software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris_employees.create(x_connection_token="<value>", unified_hris_employee_input=::OpenApiSDK::Shared::UnifiedHrisEmployeeInput.new(), remote_data=false)

if ! res.unified_hris_employee_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                              | *::String*                                                                                        | :heavy_check_mark:                                                                                | The connection token                                                                              |
| `unified_hris_employee_input`                                                                     | [::OpenApiSDK::Shared::UnifiedHrisEmployeeInput](../../models/shared/unifiedhrisemployeeinput.md) | :heavy_check_mark:                                                                                | N/A                                                                                               |
| `remote_data`                                                                                     | *T::Boolean*                                                                                      | :heavy_minus_sign:                                                                                | Set to true to include data from the original Hris software.                                      |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateHrisEmployeeResponse)](../../models/operations/createhrisemployeeresponse.md)**


## retrieve

Retrieven Employees from any connected Hris software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris_employees.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_hris_employee_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                    | Type                                                         | Required                                                     | Description                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `x_connection_token`                                         | *::String*                                                   | :heavy_check_mark:                                           | The connection token                                         |
| `id`                                                         | *::String*                                                   | :heavy_check_mark:                                           | id of the employee you want to retrieve.                     |
| `remote_data`                                                | *T::Boolean*                                                 | :heavy_minus_sign:                                           | Set to true to include data from the original Hris software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveHrisEmployeeResponse)](../../models/operations/retrievehrisemployeeresponse.md)**

