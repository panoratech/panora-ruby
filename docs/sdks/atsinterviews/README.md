# AtsInterviews


### Available Operations

* [list](#list) - List  Interviews
* [create](#create) - Create Interviews
* [retrieve](#retrieve) - Retrieve Interviews

## list

List  Interviews

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.ats_interviews.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListAtsInterviewResponse)](../../models/operations/listatsinterviewresponse.md)**


## create

Create Interviews in any supported Ats software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.ats_interviews.create(x_connection_token="<value>", unified_ats_interview_input=::OpenApiSDK::Shared::UnifiedAtsInterviewInput.new(
    field_mappings: ::OpenApiSDK::Shared::UnifiedAtsInterviewInputFieldMappings.new(),
  ), remote_data=false)

if ! res.unified_ats_interview_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                              | *::String*                                                                                        | :heavy_check_mark:                                                                                | The connection token                                                                              |
| `unified_ats_interview_input`                                                                     | [::OpenApiSDK::Shared::UnifiedAtsInterviewInput](../../models/shared/unifiedatsinterviewinput.md) | :heavy_check_mark:                                                                                | N/A                                                                                               |
| `remote_data`                                                                                     | *T::Boolean*                                                                                      | :heavy_minus_sign:                                                                                | Set to true to include data from the original Ats software.                                       |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateAtsInterviewResponse)](../../models/operations/createatsinterviewresponse.md)**


## retrieve

Retrieve Interviews from any connected Ats software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.ats_interviews.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_ats_interview_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `x_connection_token`                                        | *::String*                                                  | :heavy_check_mark:                                          | The connection token                                        |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | id of the interview you want to retrieve.                   |
| `remote_data`                                               | *T::Boolean*                                                | :heavy_minus_sign:                                          | Set to true to include data from the original Ats software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveAtsInterviewResponse)](../../models/operations/retrieveatsinterviewresponse.md)**

