# WebhookDto


## Fields

| Field                                  | Type                                   | Required                               | Description                            |
| -------------------------------------- | -------------------------------------- | -------------------------------------- | -------------------------------------- |
| `url`                                  | *::String*                             | :heavy_check_mark:                     | The endpoint url of the webhook.       |
| `description`                          | *::String*                             | :heavy_check_mark:                     | The description of the webhook.        |
| `scope`                                | T::Array<*::String*>                   | :heavy_check_mark:                     | The events that the webhook listen to. |