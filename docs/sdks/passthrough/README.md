# Passthrough


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

    
res = s.passthrough.request(integration_id="<value>", linked_user_id="<value>", vertical="<value>", pass_through_request_dto=::OpenApiSDK::Shared::PassThroughRequestDto.new(
    method: ::OpenApiSDK::Shared::Method::GET,
    path: "/dev",
  ))

if ! res.pass_through_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `integration_id`                                                                            | *::String*                                                                                  | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `linked_user_id`                                                                            | *::String*                                                                                  | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `vertical`                                                                                  | *::String*                                                                                  | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `pass_through_request_dto`                                                                  | [::OpenApiSDK::Shared::PassThroughRequestDto](../../models/shared/passthroughrequestdto.md) | :heavy_check_mark:                                                                          | N/A                                                                                         |


### Response

**[T.nilable(::OpenApiSDK::Operations::RequestResponse)](../../models/operations/requestresponse.md)**

