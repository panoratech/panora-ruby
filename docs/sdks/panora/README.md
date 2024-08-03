# Panora SDK


## Overview

Panora API: A unified API to ship integrations

### Available Operations

* [hello](#hello)
* [health](#health)

## hello

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hello()

if ! res.res.nil?
  # handle response
end

```


### Response

**[T.nilable(::OpenApiSDK::Operations::HelloResponse)](../../models/operations/helloresponse.md)**


## health

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.health()

if ! res.number.nil?
  # handle response
end

```


### Response

**[T.nilable(::OpenApiSDK::Operations::HealthResponse)](../../models/operations/healthresponse.md)**

