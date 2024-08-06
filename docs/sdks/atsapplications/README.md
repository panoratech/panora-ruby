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

    
res = s.ats_applications.list(x_connection_token="<value>", remote_data=true, limit=10.0, cursor="1b8b05bb-5273-4012-b520-8657b0b90874")

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                               | Type                                                    | Required                                                | Description                                             | Example                                                 |
| ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- |
| `x_connection_token`                                    | *::String*                                              | :heavy_check_mark:                                      | The connection token                                    |                                                         |
| `remote_data`                                           | *T::Boolean*                                            | :heavy_minus_sign:                                      | Set to true to include data from the original software. | true                                                    |
| `limit`                                                 | *::Float*                                               | :heavy_minus_sign:                                      | Set to get the number of records.                       | 10                                                      |
| `cursor`                                                | *::String*                                              | :heavy_minus_sign:                                      | Set to get the number of records after this cursor.     | 1b8b05bb-5273-4012-b520-8657b0b90874                    |


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

    
res = s.ats_applications.create(x_connection_token="<value>", unified_ats_application_input=::OpenApiSDK::Shared::UnifiedAtsApplicationInput.new(
    applied_at: DateTime.iso8601('2024-10-01T12:00:00Z'),
    rejected_at: DateTime.iso8601('2024-10-01T12:00:00Z'),
    offers: [
      "<value>",
    ],
    source: "Source Name",
    credited_to: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    current_stage: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    reject_reason: "Candidate not experienced enough",
    candidate_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    job_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    field_mappings: {
      "online": "<value>",
    },
  ), remote_data=false)

if ! res.unified_ats_application_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           | Example                                                                                               |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                  | *::String*                                                                                            | :heavy_check_mark:                                                                                    | The connection token                                                                                  |                                                                                                       |
| `unified_ats_application_input`                                                                       | [::OpenApiSDK::Shared::UnifiedAtsApplicationInput](../../models/shared/unifiedatsapplicationinput.md) | :heavy_check_mark:                                                                                    | N/A                                                                                                   |                                                                                                       |
| `remote_data`                                                                                         | *T::Boolean*                                                                                          | :heavy_minus_sign:                                                                                    | Set to true to include data from the original Ats software.                                           | false                                                                                                 |


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

    
res = s.ats_applications.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_ats_application_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 | Example                                                     |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `x_connection_token`                                        | *::String*                                                  | :heavy_check_mark:                                          | The connection token                                        |                                                             |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | id of the application you want to retrieve.                 | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                        |
| `remote_data`                                               | *T::Boolean*                                                | :heavy_minus_sign:                                          | Set to true to include data from the original Ats software. | false                                                       |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveAtsApplicationResponse)](../../models/operations/retrieveatsapplicationresponse.md)**

