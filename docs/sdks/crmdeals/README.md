# CrmDeals


### Available Operations

* [list](#list) - List Deals
* [create](#create) - Create Deals
* [retrieve](#retrieve) - Retrieve Deals

## list

List Deals

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.crm_deals.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListCrmDealsResponse)](../../models/operations/listcrmdealsresponse.md)**


## create

Create Deals in any supported Crm software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.crm_deals.create(x_connection_token="<value>", unified_crm_deal_input=::OpenApiSDK::Shared::UnifiedCrmDealInput.new(
    name: "Huge Contract with Acme",
    description: "Contract with Sales Operations Team",
    amount: 1000.0,
    user_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    stage_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    company_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    field_mappings: {
      "online": "<value>",
    },
  ), remote_data=false)

if ! res.unified_crm_deal_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | The connection token                                                                    |
| `unified_crm_deal_input`                                                                | [::OpenApiSDK::Shared::UnifiedCrmDealInput](../../models/shared/unifiedcrmdealinput.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `remote_data`                                                                           | *T::Boolean*                                                                            | :heavy_minus_sign:                                                                      | Set to true to include data from the original Crm software.                             |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateCrmDealResponse)](../../models/operations/createcrmdealresponse.md)**


## retrieve

Retrieve Deals from any connected Crm software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.crm_deals.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_crm_deal_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 | Example                                                     |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `x_connection_token`                                        | *::String*                                                  | :heavy_check_mark:                                          | The connection token                                        |                                                             |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | id of the deal you want to retrieve.                        | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                        |
| `remote_data`                                               | *T::Boolean*                                                | :heavy_minus_sign:                                          | Set to true to include data from the original Crm software. | false                                                       |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveCrmDealResponse)](../../models/operations/retrievecrmdealresponse.md)**

