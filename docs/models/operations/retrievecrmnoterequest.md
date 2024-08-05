# RetrieveCrmNoteRequest


## Fields

| Field                                                       | Type                                                        | Required                                                    | Description                                                 | Example                                                     |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `x_connection_token`                                        | *::String*                                                  | :heavy_check_mark:                                          | The connection token                                        |                                                             |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | id of the note you want to retrieve.                        | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                        |
| `remote_data`                                               | *T.nilable(T::Boolean)*                                     | :heavy_minus_sign:                                          | Set to true to include data from the original Crm software. | false                                                       |