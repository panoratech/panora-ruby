# TicketingCollections


### Available Operations

* [list](#list) - List Collections
* [retrieve](#retrieve) - Retrieve Collections

## list

List Collections

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing_collections.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListTicketingCollectionsResponse)](../../models/operations/listticketingcollectionsresponse.md)**


## retrieve

Retrieve Collections from any connected Ticketing software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing_collections.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_ticketing_collection_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       | Example                                                           |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `x_connection_token`                                              | *::String*                                                        | :heavy_check_mark:                                                | The connection token                                              |                                                                   |
| `id`                                                              | *::String*                                                        | :heavy_check_mark:                                                | id of the collection you want to retrieve.                        | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                              |
| `remote_data`                                                     | *T::Boolean*                                                      | :heavy_minus_sign:                                                | Set to true to include data from the original Ticketing software. | false                                                             |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveCollectionResponse)](../../models/operations/retrievecollectionresponse.md)**

