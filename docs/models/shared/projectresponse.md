# ProjectResponse


## Fields

| Field                                        | Type                                         | Required                                     | Description                                  | Example                                      |
| -------------------------------------------- | -------------------------------------------- | -------------------------------------------- | -------------------------------------------- | -------------------------------------------- |
| `id_project`                                 | *::String*                                   | :heavy_check_mark:                           | Unique identifier for the project            | 123e4567-e89b-12d3-a456-426614174000         |
| `name`                                       | *::String*                                   | :heavy_check_mark:                           | Name of the project                          | My Project                                   |
| `sync_mode`                                  | *::String*                                   | :heavy_check_mark:                           | Synchronization mode of the project          | automatic                                    |
| `pull_frequency`                             | *T.nilable(::Float)*                         | :heavy_minus_sign:                           | Frequency of pulling data in seconds         | 3600                                         |
| `redirect_url`                               | *T.nilable(::String)*                        | :heavy_minus_sign:                           | Redirect URL for the project                 | https://example.com/redirect                 |
| `id_user`                                    | *::String*                                   | :heavy_check_mark:                           | User ID associated with the project          | 123e4567-e89b-12d3-a456-426614174001         |
| `id_connector_set`                           | *::String*                                   | :heavy_check_mark:                           | Connector set ID associated with the project | 123e4567-e89b-12d3-a456-426614174002         |