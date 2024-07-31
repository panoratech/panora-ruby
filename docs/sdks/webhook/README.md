# Webhook


### Available Operations

* [list](#list) - List webhooks 
* [create](#create) - Add webhook metadata
* [delete](#delete) - Delete Webhook
* [update_status](#update_status) - Update webhook status
* [verify_event](#verify_event) - Verify payload signature of the webhook

## list

List webhooks 

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.webhook.list()

if ! res.webhook_responses.nil?
  # handle response
end

```


### Response

**[T.nilable(::OpenApiSDK::Operations::ListWebhooksResponse)](../../models/operations/listwebhooksresponse.md)**


## create

Add webhook metadata

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::OpenApiSDK::Shared::WebhookDto.new(
  url: "http://limp-pastry.org",
  description: "Inverse discrete benchmark",
  scope: [
    "<value>",
  ],
)
    
res = s.webhook.create(req)

if ! res.webhook_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `request`                                                             | [::OpenApiSDK::Shared::WebhookDto](../../models/shared/webhookdto.md) | :heavy_check_mark:                                                    | The request object to use for the request.                            |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateWebhookResponse)](../../models/operations/createwebhookresponse.md)**


## delete

Delete Webhook

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.webhook.delete(id="<value>")

if ! res.webhook_response.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | N/A                |


### Response

**[T.nilable(::OpenApiSDK::Operations::DeleteResponse)](../../models/operations/deleteresponse.md)**


## update_status

Update webhook status

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.webhook.update_status(id="<value>")

if ! res.webhook_response.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | N/A                |


### Response

**[T.nilable(::OpenApiSDK::Operations::UpdateStatusResponse)](../../models/operations/updatestatusresponse.md)**


## verify_event

Verify payload signature of the webhook

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::OpenApiSDK::Shared::SignatureVerificationDto.new(
  payload: ::OpenApiSDK::Shared::Payload.new(),
  signature: "<value>",
  secret: "<value>",
)
    
res = s.webhook.verify_event(req)

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

