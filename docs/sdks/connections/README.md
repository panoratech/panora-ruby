# Connections

## Overview

### Available Operations

* [list](#list) - List Connections

## list

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

    
res = s.connections.list()

if ! res.connections.nil?
  # handle response
end

```

### Response

**[T.nilable(::OpenApiSDK::Operations::ListConnectionsResponse)](../../models/operations/listconnectionsresponse.md)**


