# AccountingVendorcredits


### Available Operations

* [list](#list) - List  VendorCredits
* [retrieve](#retrieve) - Retrieve Vendor Credits

## list

List  VendorCredits

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.accounting_vendorcredits.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListAccountingVendorCreditResponse)](../../models/operations/listaccountingvendorcreditresponse.md)**


## retrieve

Retrieve Vendor Credits from any connected Accounting software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.accounting_vendorcredits.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_accounting_vendorcredit_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                          | Type                                                               | Required                                                           | Description                                                        |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `x_connection_token`                                               | *::String*                                                         | :heavy_check_mark:                                                 | The connection token                                               |
| `id`                                                               | *::String*                                                         | :heavy_check_mark:                                                 | id of the vendorcredit you want to retrieve.                       |
| `remote_data`                                                      | *T::Boolean*                                                       | :heavy_minus_sign:                                                 | Set to true to include data from the original Accounting software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveAccountingVendorCreditResponse)](../../models/operations/retrieveaccountingvendorcreditresponse.md)**

