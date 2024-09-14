# Webhooks

## Overview

### Available Operations

* [list](#list) - List webhooks
* [create](#create) - Create webhook
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
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.webhooks.list()

if ! res.webhook_responses.nil?
  # handle response
end

```

### Response

**[T.nilable(::OpenApiSDK::Operations::ListWebhooksResponse)](../../models/operations/listwebhooksresponse.md)**




## create

Create webhook

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Shared::WebhookDto.new(
  url: "https://acme.com/webhook_receiver",
  description: "Webhook to receive connection events",
  scope: [
    "connection.created",
  ],
)
    
res = s.webhooks.create(req)

if ! res.webhook_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `request`                                                             | [::OpenApiSDK::Shared::WebhookDto](../../models/shared/webhookdto.md) | :heavy_check_mark:                                                    | The request object to use for the request.                            |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateWebhookPublicResponse)](../../models/operations/createwebhookpublicresponse.md)**




## delete

Delete Webhook

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.webhooks.delete(id="801f9ede-c698-4e66-a7fc-48d19eebaa4f")

if ! res.webhook_response.nil?
  # handle response
end

```

### Parameters

| Parameter                            | Type                                 | Required                             | Description                          | Example                              |
| ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ |
| `id`                                 | *::String*                           | :heavy_check_mark:                   | id of the webhook to delete.         | 801f9ede-c698-4e66-a7fc-48d19eebaa4f |

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
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.webhooks.update_status(id="801f9ede-c698-4e66-a7fc-48d19eebaa4f")

if ! res.webhook_response.nil?
  # handle response
end

```

### Parameters

| Parameter                            | Type                                 | Required                             | Description                          | Example                              |
| ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ |
| `id`                                 | *::String*                           | :heavy_check_mark:                   | id of the webhook to update.         | 801f9ede-c698-4e66-a7fc-48d19eebaa4f |

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
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Shared::SignatureVerificationDto.new(
  payload: {
    "key": "<value>",
  },
  signature: "<value>",
  secret: "<value>",
)
    
res = s.webhooks.verify_event(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [::OpenApiSDK::Shared::SignatureVerificationDto](../../models/shared/signatureverificationdto.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(::OpenApiSDK::Operations::VerifyEventResponse)](../../models/operations/verifyeventresponse.md)**


