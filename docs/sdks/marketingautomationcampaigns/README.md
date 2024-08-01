# MarketingautomationCampaigns


### Available Operations

* [list](#list) - List  Campaigns
* [create](#create) - Create Campaign
* [retrieve](#retrieve) - Retrieve Campaigns

## list

List  Campaigns

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
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

**[T.nilable(::OpenApiSDK::Operations::ListMarketingautomationCampaignResponse)](../../models/operations/listmarketingautomationcampaignresponse.md)**


## create

Create a campaign in any supported Marketingautomation software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.marketingautomation_campaigns.create(x_connection_token="<value>", unified_marketingautomation_campaign_input=::OpenApiSDK::Shared::UnifiedMarketingautomationCampaignInput.new(), remote_data=false)

if ! res.unified_campaign_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                                            | *::String*                                                                                                                      | :heavy_check_mark:                                                                                                              | The connection token                                                                                                            |
| `unified_marketingautomation_campaign_input`                                                                                    | [::OpenApiSDK::Shared::UnifiedMarketingautomationCampaignInput](../../models/shared/unifiedmarketingautomationcampaigninput.md) | :heavy_check_mark:                                                                                                              | N/A                                                                                                                             |
| `remote_data`                                                                                                                   | *T::Boolean*                                                                                                                    | :heavy_minus_sign:                                                                                                              | Set to true to include data from the original Marketingautomation software.                                                     |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateMarketingautomationCampaignResponse)](../../models/operations/createmarketingautomationcampaignresponse.md)**


## retrieve

Retrieve Campaigns from any connected Marketingautomation software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.marketingautomation_campaigns.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_campaign_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `x_connection_token`                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | The connection token                                                        |
| `id`                                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | id of the campaign you want to retrieve.                                    |
| `remote_data`                                                               | *T::Boolean*                                                                | :heavy_minus_sign:                                                          | Set to true to include data from the original Marketingautomation software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveMarketingautomationCampaignResponse)](../../models/operations/retrievemarketingautomationcampaignresponse.md)**

