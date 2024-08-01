# MarketingautomationLists


### Available Operations

* [list](#list) - List  Lists
* [create](#create) - Create Lists
* [retrieve](#retrieve) - Retrieve Lists

## list

List  Lists

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.marketingautomation_lists.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListMarketingautomationListsResponse)](../../models/operations/listmarketingautomationlistsresponse.md)**


## create

Create Lists in any supported Marketingautomation software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.marketingautomation_lists.create(x_connection_token="<value>", unified_marketingautomation_list_input=::OpenApiSDK::Shared::UnifiedMarketingautomationListInput.new(), remote_data=false)

if ! res.unified_marketingautomation_list_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                                    | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | The connection token                                                                                                    |
| `unified_marketingautomation_list_input`                                                                                | [::OpenApiSDK::Shared::UnifiedMarketingautomationListInput](../../models/shared/unifiedmarketingautomationlistinput.md) | :heavy_check_mark:                                                                                                      | N/A                                                                                                                     |
| `remote_data`                                                                                                           | *T::Boolean*                                                                                                            | :heavy_minus_sign:                                                                                                      | Set to true to include data from the original Marketingautomation software.                                             |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateMarketingautomationListResponse)](../../models/operations/createmarketingautomationlistresponse.md)**


## retrieve

Retrieve Lists from any connected Marketingautomation software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.marketingautomation_lists.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_marketingautomation_list_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `x_connection_token`                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | The connection token                                                        |
| `id`                                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | id of the list you want to retrieve.                                        |
| `remote_data`                                                               | *T::Boolean*                                                                | :heavy_minus_sign:                                                          | Set to true to include data from the original Marketingautomation software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveMarketingautomationListResponse)](../../models/operations/retrievemarketingautomationlistresponse.md)**

