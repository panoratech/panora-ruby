# CrmEngagements


### Available Operations

* [list](#list) - List  Engagements
* [create](#create) - Create Engagements
* [retrieve](#retrieve) - Retrieve Engagements

## list

List  Engagements

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.crm_engagements.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListCrmEngagementsResponse)](../../models/operations/listcrmengagementsresponse.md)**


## create

Create Engagements in any supported Crm software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.crm_engagements.create(x_connection_token="<value>", unified_crm_engagement_input=::OpenApiSDK::Shared::UnifiedCrmEngagementInput.new(
    type: "<value>",
    field_mappings: ::OpenApiSDK::Shared::UnifiedCrmEngagementInputFieldMappings.new(),
  ), remote_data=false)

if ! res.unified_crm_engagement_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                | *::String*                                                                                          | :heavy_check_mark:                                                                                  | The connection token                                                                                |
| `unified_crm_engagement_input`                                                                      | [::OpenApiSDK::Shared::UnifiedCrmEngagementInput](../../models/shared/unifiedcrmengagementinput.md) | :heavy_check_mark:                                                                                  | N/A                                                                                                 |
| `remote_data`                                                                                       | *T::Boolean*                                                                                        | :heavy_minus_sign:                                                                                  | Set to true to include data from the original Crm software.                                         |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateCrmEngagementResponse)](../../models/operations/createcrmengagementresponse.md)**


## retrieve

Retrieve Engagements from any connected Crm software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.crm_engagements.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_crm_engagement_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `x_connection_token`                                        | *::String*                                                  | :heavy_check_mark:                                          | The connection token                                        |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | id of the engagement you want to retrieve.                  |
| `remote_data`                                               | *T::Boolean*                                                | :heavy_minus_sign:                                          | Set to true to include data from the original Crm software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveCrmEngagementResponse)](../../models/operations/retrievecrmengagementresponse.md)**

