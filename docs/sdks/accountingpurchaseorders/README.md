# AccountingPurchaseorders


### Available Operations

* [list](#list) - List  PurchaseOrders
* [create](#create) - Create Purchase Orders
* [retrieve](#retrieve) - Retrieve Purchase Orders

## list

List  PurchaseOrders

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.accounting_purchaseorders.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListAccountingPurchaseOrderResponse)](../../models/operations/listaccountingpurchaseorderresponse.md)**


## create

Create Purchase Orders in any supported Accounting software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.accounting_purchaseorders.create(x_connection_token="<value>", unified_accounting_purchaseorder_input=::OpenApiSDK::Shared::UnifiedAccountingPurchaseorderInput.new(), remote_data=false)

if ! res.unified_accounting_purchaseorder_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                                    | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | The connection token                                                                                                    |
| `unified_accounting_purchaseorder_input`                                                                                | [::OpenApiSDK::Shared::UnifiedAccountingPurchaseorderInput](../../models/shared/unifiedaccountingpurchaseorderinput.md) | :heavy_check_mark:                                                                                                      | N/A                                                                                                                     |
| `remote_data`                                                                                                           | *T::Boolean*                                                                                                            | :heavy_minus_sign:                                                                                                      | Set to true to include data from the original Accounting software.                                                      |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateAccountingPurchaseOrderResponse)](../../models/operations/createaccountingpurchaseorderresponse.md)**


## retrieve

Retrieve Purchase Orders from any connected Accounting software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.accounting_purchaseorders.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_accounting_purchaseorder_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                          | Type                                                               | Required                                                           | Description                                                        |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `x_connection_token`                                               | *::String*                                                         | :heavy_check_mark:                                                 | The connection token                                               |
| `id`                                                               | *::String*                                                         | :heavy_check_mark:                                                 | id of the purchaseorder you want to retrieve.                      |
| `remote_data`                                                      | *T::Boolean*                                                       | :heavy_minus_sign:                                                 | Set to true to include data from the original Accounting software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveAccountingPurchaseOrderResponse)](../../models/operations/retrieveaccountingpurchaseorderresponse.md)**

