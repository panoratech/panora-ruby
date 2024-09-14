# Connections

## Overview

### Available Operations

* [retrieve](#retrieve) - List Connections

## retrieve

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

    
res = s.connections.retrieve()

if ! res.connections.nil?
  # handle response
end

```

### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveConnectionsResponse)](../../models/operations/retrieveconnectionsresponse.md)**


