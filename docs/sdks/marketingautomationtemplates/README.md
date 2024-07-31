# MarketingautomationTemplates


### Available Operations

* [list](#list) - List  Templates
* [create](#create) - Create Template
* [retrieve](#retrieve) - Retrieve Templates

## list

List  Templates

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.marketingautomation_templates.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListMarketingautomationTemplatesResponse)](../../models/operations/listmarketingautomationtemplatesresponse.md)**


## create

Create a template in any supported Marketingautomation software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.marketingautomation_templates.create(x_connection_token="<value>", unified_marketingautomation_template_input=::OpenApiSDK::Shared::UnifiedMarketingautomationTemplateInput.new(), remote_data=false)

if ! res.unified_marketingautomation_template_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                                            | *::String*                                                                                                                      | :heavy_check_mark:                                                                                                              | The connection token                                                                                                            |
| `unified_marketingautomation_template_input`                                                                                    | [::OpenApiSDK::Shared::UnifiedMarketingautomationTemplateInput](../../models/shared/unifiedmarketingautomationtemplateinput.md) | :heavy_check_mark:                                                                                                              | N/A                                                                                                                             |
| `remote_data`                                                                                                                   | *T::Boolean*                                                                                                                    | :heavy_minus_sign:                                                                                                              | Set to true to include data from the original Marketingautomation software.                                                     |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateMarketingautomationTemplateResponse)](../../models/operations/createmarketingautomationtemplateresponse.md)**


## retrieve

Retrieve Templates from any connected Marketingautomation software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.marketingautomation_templates.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_marketingautomation_template_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `x_connection_token`                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | The connection token                                                        |
| `id`                                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | id of the template you want to retrieve.                                    |
| `remote_data`                                                               | *T::Boolean*                                                                | :heavy_minus_sign:                                                          | Set to true to include data from the original Marketingautomation software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveMarketingautomationTemplateResponse)](../../models/operations/retrievemarketingautomationtemplateresponse.md)**

