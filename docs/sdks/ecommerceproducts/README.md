# EcommerceProducts


### Available Operations

* [list](#list) - List a batch of Products
* [create](#create) - Create Products
* [retrieve](#retrieve) - Retrieve a Product

## list

List a batch of Products

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ecommerce_products.list(x_connection_token="<value>", remote_data=true, limit=10.0, cursor="1b8b05bb-5273-4012-b520-8657b0b90874")

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

**[T.nilable(::OpenApiSDK::Operations::ListEcommerceProductsResponse)](../../models/operations/listecommerceproductsresponse.md)**


## create

Create Products in any supported Ecommerce software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ecommerce_products.create(x_connection_token="<value>", unified_ecommerce_product_input=::OpenApiSDK::Shared::UnifiedEcommerceProductInput.new(), remote_data=false)

if ! res.unified_ecommerce_product_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               | Example                                                                                                   |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                      | *::String*                                                                                                | :heavy_check_mark:                                                                                        | The connection token                                                                                      |                                                                                                           |
| `unified_ecommerce_product_input`                                                                         | [::OpenApiSDK::Shared::UnifiedEcommerceProductInput](../../models/shared/unifiedecommerceproductinput.md) | :heavy_check_mark:                                                                                        | N/A                                                                                                       |                                                                                                           |
| `remote_data`                                                                                             | *T::Boolean*                                                                                              | :heavy_minus_sign:                                                                                        | Set to true to include data from the original Accounting software.                                        | false                                                                                                     |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateEcommerceProductResponse)](../../models/operations/createecommerceproductresponse.md)**


## retrieve

Retrieve a product from any connected Ats software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ecommerce_products.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_ecommerce_product_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `x_connection_token`                                        | *::String*                                                  | :heavy_check_mark:                                          | The connection token                                        |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | id of the product you want to retrieve.                     |
| `remote_data`                                               | *T::Boolean*                                                | :heavy_minus_sign:                                          | Set to true to include data from the original Ats software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveEcommerceProductResponse)](../../models/operations/retrieveecommerceproductresponse.md)**

