# Events

## Overview

### Available Operations

* [get_panora_core_events](#get_panora_core_events) - List Events

## get_panora_core_events

List Events

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.events.get_panora_core_events(page=5232.51, limit=1895.12)

if ! res.event_responses.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `page`             | *::Float*          | :heavy_minus_sign: | N/A                |
| `limit`            | *::Float*          | :heavy_minus_sign: | N/A                |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetPanoraCoreEventsResponse)](../../models/operations/getpanoracoreeventsresponse.md)**


