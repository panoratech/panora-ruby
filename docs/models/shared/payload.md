# Payload

The payload event of the webhook.


## Fields

| Field                                  | Type                                   | Required                               | Description                            | Example                                |
| -------------------------------------- | -------------------------------------- | -------------------------------------- | -------------------------------------- | -------------------------------------- |
| `id_event`                             | *::String*                             | :heavy_check_mark:                     | The id of the event.                   | 801f9ede-c698-4e66-a7fc-48d19eebaa4f   |
| `type`                                 | *::String*                             | :heavy_check_mark:                     | The type of the event.                 | connection.created                     |
| `data`                                 | T::Hash[Symbol, *::Object*]            | :heavy_check_mark:                     | The data payload event of the webhook. |                                        |