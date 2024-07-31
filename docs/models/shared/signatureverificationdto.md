# SignatureVerificationDto


## Fields

| Field                                                           | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `payload`                                                       | [::OpenApiSDK::Shared::Payload](../../models/shared/payload.md) | :heavy_check_mark:                                              | The payload event of the webhook.                               |
| `signature`                                                     | *::String*                                                      | :heavy_check_mark:                                              | The signature of the webhook.                                   |
| `secret`                                                        | *::String*                                                      | :heavy_check_mark:                                              | The secret of the webhook.                                      |