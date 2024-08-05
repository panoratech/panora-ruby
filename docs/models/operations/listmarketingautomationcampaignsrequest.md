# ListMarketingautomationCampaignsRequest


## Fields

| Field                                                   | Type                                                    | Required                                                | Description                                             |
| ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- |
| `x_connection_token`                                    | *::String*                                              | :heavy_check_mark:                                      | The connection token                                    |
| `remote_data`                                           | *T.nilable(T::Boolean)*                                 | :heavy_minus_sign:                                      | Set to true to include data from the original software. |
| `limit`                                                 | *T.nilable(::Float)*                                    | :heavy_minus_sign:                                      | Set to get the number of records.                       |
| `cursor`                                                | *T.nilable(::String)*                                   | :heavy_minus_sign:                                      | Set to get the number of records after this cursor.     |