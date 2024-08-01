# WebhookDto


## Fields

| Field                                  | Type                                   | Required                               | Description                            |
| -------------------------------------- | -------------------------------------- | -------------------------------------- | -------------------------------------- |
| `url`                                  | *::String*                             | :heavy_check_mark:                     | The endpoint url of the webhook.       |
| `description`                          | *T.nilable(::String)*                  | :heavy_minus_sign:                     | The description of the webhook.        |
| `scope`                                | T::Array<*::String*>                   | :heavy_check_mark:                     | The events that the webhook listen to. |