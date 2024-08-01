# Webhooks


### Available Operations

* [list](#list) - List webhooks
* [create](#create) - Add webhook metadata

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

    
res = s.webhooks.list()

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

