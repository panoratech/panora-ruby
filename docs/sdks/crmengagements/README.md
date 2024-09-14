# CrmEngagements

## Overview

### Available Operations

* [list](#list) - List Engagements
* [create](#create) - Create Engagements
* [retrieve](#retrieve) - Retrieve Engagements

## list

List Engagements

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.crm_engagements.list(x_connection_token="<value>", remote_data=true, limit=10.0, cursor="1b8b05bb-5273-4012-b520-8657b0b90874")

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

**[T.nilable(::OpenApiSDK::Operations::ListCrmEngagementsResponse)](../../models/operations/listcrmengagementsresponse.md)**




## create

Create Engagements in any supported Crm software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.crm_engagements.create(x_connection_token="<value>", unified_crm_engagement_input=::OpenApiSDK::Shared::UnifiedCrmEngagementInput.new(
  content: "Meeting call with CTO",
  direction: "INBOUND",
  subject: "Technical features planning",
  start_at: DateTime.iso8601('2024-10-01T12:00:00Z'),
  end_time: DateTime.iso8601('2024-10-01T22:00:00Z'),
  type: "MEETING",
  user_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  company_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  contacts: [
    "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  ],
  field_mappings: {
    "fav_dish": "broccoli",
    "fav_color": "red",
  },
), remote_data=false)

if ! res.unified_crm_engagement_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         | Example                                                                                             |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                | *::String*                                                                                          | :heavy_check_mark:                                                                                  | The connection token                                                                                |                                                                                                     |
| `unified_crm_engagement_input`                                                                      | [::OpenApiSDK::Shared::UnifiedCrmEngagementInput](../../models/shared/unifiedcrmengagementinput.md) | :heavy_check_mark:                                                                                  | N/A                                                                                                 |                                                                                                     |
| `remote_data`                                                                                       | *T::Boolean*                                                                                        | :heavy_minus_sign:                                                                                  | Set to true to include data from the original Crm software.                                         | false                                                                                               |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateCrmEngagementResponse)](../../models/operations/createcrmengagementresponse.md)**




## retrieve

Retrieve Engagements from any connected Crm software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.crm_engagements.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_crm_engagement_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 | Example                                                     |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `x_connection_token`                                        | *::String*                                                  | :heavy_check_mark:                                          | The connection token                                        |                                                             |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | id of the engagement you want to retrieve.                  | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                        |
| `remote_data`                                               | *T::Boolean*                                                | :heavy_minus_sign:                                          | Set to true to include data from the original Crm software. | false                                                       |

### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveCrmEngagementResponse)](../../models/operations/retrievecrmengagementresponse.md)**


