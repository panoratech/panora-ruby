# Connections


### Available Operations

* [get_connections](#get_connections) - List Connections

## get_connections

List Connections

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.connections.get_connections()

if ! res.connections.nil?
  # handle response
end

```


### Response

**[T.nilable(::OpenApiSDK::Operations::GetConnectionsResponse)](../../models/operations/getconnectionsresponse.md)**

