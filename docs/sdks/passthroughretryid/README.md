# PassthroughRetryid


### Available Operations

* [get_retried_request_response](#get_retried_request_response) - Retrieve response of a failed passthrough request due to rate limits

## get_retried_request_response

Retrieve response of a failed passthrough request due to rate limits

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.passthrough_retryid.get_retried_request_response(retry_id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `retry_id`                                                            | *::String*                                                            | :heavy_check_mark:                                                    | id of the retryJob returned when you initiated a passthrough request. |


### Response

**[T.nilable(::OpenApiSDK::Operations::GetRetriedRequestResponseResponse)](../../models/operations/getretriedrequestresponseresponse.md)**

