# RetrieveAccountingInvoiceRequest


## Fields

| Field                                                              | Type                                                               | Required                                                           | Description                                                        |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `x_connection_token`                                               | *::String*                                                         | :heavy_check_mark:                                                 | The connection token                                               |
| `id`                                                               | *::String*                                                         | :heavy_check_mark:                                                 | id of the invoice you want to retrieve.                            |
| `remote_data`                                                      | *T.nilable(T::Boolean)*                                            | :heavy_minus_sign:                                                 | Set to true to include data from the original Accounting software. |