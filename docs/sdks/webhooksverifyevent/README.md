# WebhooksVerifyevent


### Available Operations

* [verify_event](#verify_event) - Verify payload signature of the webhook

## verify_event

Verify payload signature of the webhook

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new


req = ::OpenApiSDK::Shared::SignatureVerificationDto.new(
  payload: ::OpenApiSDK::Shared::Payload.new(),
  signature: "<value>",
  secret: "<value>",
)
    
res = s.webhooks_verifyevent.verify_event(req)

if ! res.event_payload.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [::OpenApiSDK::Shared::SignatureVerificationDto](../../models/shared/signatureverificationdto.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |


### Response

**[T.nilable(::OpenApiSDK::Operations::VerifyEventResponse)](../../models/operations/verifyeventresponse.md)**

