# MarketingautomationAutomations


### Available Operations

* [list](#list) - List  Automations
* [create](#create) - Create Automation
* [retrieve](#retrieve) - Retrieve Automations

## list

List  Automations

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.marketingautomation_automations.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListMarketingautomationAutomationResponse)](../../models/operations/listmarketingautomationautomationresponse.md)**


## create

Create a automation in any supported Marketingautomation software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.marketingautomation_automations.create(x_connection_token="<value>", unified_marketingautomation_automation_input=::OpenApiSDK::Shared::UnifiedMarketingautomationAutomationInput.new(), remote_data=false)

if ! res.unified_marketingautomation_automation_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                           | Type                                                                                                                                | Required                                                                                                                            | Description                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                                                | *::String*                                                                                                                          | :heavy_check_mark:                                                                                                                  | The connection token                                                                                                                |
| `unified_marketingautomation_automation_input`                                                                                      | [::OpenApiSDK::Shared::UnifiedMarketingautomationAutomationInput](../../models/shared/unifiedmarketingautomationautomationinput.md) | :heavy_check_mark:                                                                                                                  | N/A                                                                                                                                 |
| `remote_data`                                                                                                                       | *T::Boolean*                                                                                                                        | :heavy_minus_sign:                                                                                                                  | Set to true to include data from the original Marketingautomation software.                                                         |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateMarketingautomationAutomationResponse)](../../models/operations/createmarketingautomationautomationresponse.md)**


## retrieve

Retrieve Automations from any connected Marketingautomation software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.marketingautomation_automations.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_marketingautomation_automation_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `x_connection_token`                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | The connection token                                                        |
| `id`                                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | id of the automation you want to retrieve.                                  |
| `remote_data`                                                               | *T::Boolean*                                                                | :heavy_minus_sign:                                                          | Set to true to include data from the original Marketingautomation software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveMarketingautomationAutomationResponse)](../../models/operations/retrievemarketingautomationautomationresponse.md)**

