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
    api_key: "<YOUR_API_KEY_HERE>",
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
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats_interviews.create(x_connection_token="<value>", unified_ats_interview_input=::OpenApiSDK::Shared::UnifiedAtsInterviewInput.new(
    status: ::OpenApiSDK::Shared::UnifiedAtsInterviewInputStatus::SCHEDULED,
    application_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    job_interview_stage_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    organized_by: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    interviewers: [
      "<value>",
    ],
    location: "San Francisco",
    start_at: DateTime.iso8601('2024-10-01T12:00:00Z'),
    end_at: DateTime.iso8601('2024-10-01T12:00:00Z'),
    remote_created_at: DateTime.iso8601('2024-10-01T12:00:00Z'),
    remote_updated_at: DateTime.iso8601('2024-10-01T12:00:00Z'),
    field_mappings: {
      "online": "<value>",
    },
  ), remote_data=false)

if ! res.unified_ats_interview_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       | Example                                                                                           |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                              | *::String*                                                                                        | :heavy_check_mark:                                                                                | The connection token                                                                              |                                                                                                   |
| `unified_ats_interview_input`                                                                     | [::OpenApiSDK::Shared::UnifiedAtsInterviewInput](../../models/shared/unifiedatsinterviewinput.md) | :heavy_check_mark:                                                                                | N/A                                                                                               |                                                                                                   |
| `remote_data`                                                                                     | *T::Boolean*                                                                                      | :heavy_minus_sign:                                                                                | Set to true to include data from the original Ats software.                                       | false                                                                                             |


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
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats_interviews.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_ats_interview_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 | Example                                                     |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `x_connection_token`                                        | *::String*                                                  | :heavy_check_mark:                                          | The connection token                                        |                                                             |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | id of the interview you want to retrieve.                   | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                        |
| `remote_data`                                               | *T::Boolean*                                                | :heavy_minus_sign:                                          | Set to true to include data from the original Ats software. | false                                                       |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveAtsInterviewResponse)](../../models/operations/retrieveatsinterviewresponse.md)**

