# Passthrough

## Overview

### Available Operations

* [request](#request) - Make a passthrough request

## request

Make a passthrough request

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.passthrough.request(x_connection_token="<value>", pass_through_request_dto=::OpenApiSDK::Shared::PassThroughRequestDto.new(
  method: ::OpenApiSDK::Shared::PassThroughRequestDtoMethod::GET,
  path: "/dev",
))

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                        | *::String*                                                                                  | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `pass_through_request_dto`                                                                  | [::OpenApiSDK::Shared::PassThroughRequestDto](../../models/shared/passthroughrequestdto.md) | :heavy_check_mark:                                                                          | N/A                                                                                         |

### Response

**[T.nilable(::OpenApiSDK::Operations::RequestResponse)](../../models/operations/requestresponse.md)**


