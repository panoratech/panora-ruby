# Email


## Fields

| Field                                                                  | Type                                                                   | Required                                                               | Description                                                            |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| `email_address`                                                        | *::String*                                                             | :heavy_check_mark:                                                     | The email address                                                      |
| `email_address_type`                                                   | *::String*                                                             | :heavy_check_mark:                                                     | The email address type. Authorized values are either PERSONAL or WORK. |
| `owner_type`                                                           | *T.nilable(::String)*                                                  | :heavy_minus_sign:                                                     | The owner type of an email                                             |