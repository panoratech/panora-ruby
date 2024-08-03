# AtsApplications


### Available Operations

* [list](#list) - List  Applications
* [create](#create) - Create Applications
* [retrieve](#retrieve) - Retrieve Applications

## list

List  Applications

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats_applications.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListAtsApplicationResponse)](../../models/operations/listatsapplicationresponse.md)**


## create

Create Applications in any supported Ats software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats_applications.create(x_connection_token="<value>", unified_ats_application_input=::OpenApiSDK::Shared::UnifiedAtsApplicationInput.new(), remote_data=false)

if ! res.unified_ats_application_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                  | *::String*                                                                                            | :heavy_check_mark:                                                                                    | The connection token                                                                                  |
| `unified_ats_application_input`                                                                       | [::OpenApiSDK::Shared::UnifiedAtsApplicationInput](../../models/shared/unifiedatsapplicationinput.md) | :heavy_check_mark:                                                                                    | N/A                                                                                                   |
| `remote_data`                                                                                         | *T::Boolean*                                                                                          | :heavy_minus_sign:                                                                                    | Set to true to include data from the original Ats software.                                           |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateAtsApplicationResponse)](../../models/operations/createatsapplicationresponse.md)**


## retrieve

Retrieve Applications from any connected Ats software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats_applications.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_ats_application_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `x_connection_token`                                        | *::String*                                                  | :heavy_check_mark:                                          | The connection token                                        |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | id of the application you want to retrieve.                 |
| `remote_data`                                               | *T::Boolean*                                                | :heavy_minus_sign:                                          | Set to true to include data from the original Ats software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveAtsApplicationResponse)](../../models/operations/retrieveatsapplicationresponse.md)**

