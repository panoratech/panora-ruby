# MarketingautomationCampaigns


### Available Operations

* [list](#list) - List Campaigns
* [create](#create) - Create Campaign
* [retrieve](#retrieve) - Retrieve Campaign

## list

List Campaigns

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.marketingautomation_campaigns.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListMarketingautomationCampaignsResponse)](../../models/operations/listmarketingautomationcampaignsresponse.md)**


## create

Create a campaign in any supported Marketingautomation software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.marketingautomation_campaigns.create(x_connection_token="<value>", unified_marketingautomation_campaign_input=::OpenApiSDK::Shared::UnifiedMarketingautomationCampaignInput.new(), remote_data=false)

if ! res.unified_marketingautomation_campaign_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     | Example                                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                                            | *::String*                                                                                                                      | :heavy_check_mark:                                                                                                              | The connection token                                                                                                            |                                                                                                                                 |
| `unified_marketingautomation_campaign_input`                                                                                    | [::OpenApiSDK::Shared::UnifiedMarketingautomationCampaignInput](../../models/shared/unifiedmarketingautomationcampaigninput.md) | :heavy_check_mark:                                                                                                              | N/A                                                                                                                             |                                                                                                                                 |
| `remote_data`                                                                                                                   | *T::Boolean*                                                                                                                    | :heavy_minus_sign:                                                                                                              | Set to true to include data from the original Marketingautomation software.                                                     | false                                                                                                                           |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateMarketingautomationCampaignResponse)](../../models/operations/createmarketingautomationcampaignresponse.md)**


## retrieve

Retrieve a Campaign from any connected Marketingautomation software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.marketingautomation_campaigns.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_marketingautomation_campaign_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 | Example                                                                     |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `x_connection_token`                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | The connection token                                                        |                                                                             |
| `id`                                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | id of the campaign you want to retrieve.                                    | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                                        |
| `remote_data`                                                               | *T::Boolean*                                                                | :heavy_minus_sign:                                                          | Set to true to include data from the original Marketingautomation software. | false                                                                       |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveMarketingautomationCampaignResponse)](../../models/operations/retrievemarketingautomationcampaignresponse.md)**

