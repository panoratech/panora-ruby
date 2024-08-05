# AtsActivities


### Available Operations

* [list](#list) - List  Activities
* [create](#create) - Create Activities
* [retrieve](#retrieve) - Retrieve Activities

## list

List  Activities

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats_activities.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListAtsActivityResponse)](../../models/operations/listatsactivityresponse.md)**


## create

Create Activities in any supported Ats software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats_activities.create(x_connection_token="<value>", unified_ats_activity_input=::OpenApiSDK::Shared::UnifiedAtsActivityInput.new(
    activity_type: ::OpenApiSDK::Shared::UnifiedAtsActivityInputActivityType::NOTE,
    subject: "Email subject",
    body: "Dear Diana, I love you",
    visibility: ::OpenApiSDK::Shared::UnifiedAtsActivityInputVisibility::PUBLIC,
    candidate_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    remote_created_at: DateTime.iso8601('2024-10-01T12:00:00Z'),
    field_mappings: {
      "online": "<value>",
    },
  ), remote_data=false)

if ! res.unified_ats_activity_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     | Example                                                                                         |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                            | *::String*                                                                                      | :heavy_check_mark:                                                                              | The connection token                                                                            |                                                                                                 |
| `unified_ats_activity_input`                                                                    | [::OpenApiSDK::Shared::UnifiedAtsActivityInput](../../models/shared/unifiedatsactivityinput.md) | :heavy_check_mark:                                                                              | N/A                                                                                             |                                                                                                 |
| `remote_data`                                                                                   | *T::Boolean*                                                                                    | :heavy_minus_sign:                                                                              | Set to true to include data from the original Ats software.                                     | false                                                                                           |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateAtsActivityResponse)](../../models/operations/createatsactivityresponse.md)**


## retrieve

Retrieve Activities from any connected Ats software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats_activities.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_ats_activity_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 | Example                                                     |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `x_connection_token`                                        | *::String*                                                  | :heavy_check_mark:                                          | The connection token                                        |                                                             |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | id of the activity you want to retrieve.                    | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                        |
| `remote_data`                                               | *T::Boolean*                                                | :heavy_minus_sign:                                          | Set to true to include data from the original Ats software. | false                                                       |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveAtsActivityResponse)](../../models/operations/retrieveatsactivityresponse.md)**

