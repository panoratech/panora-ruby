# UnifiedAtsActivityInput


## Fields

| Field                                                                         | Type                                                                          | Required                                                                      | Description                                                                   | Example                                                                       |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `activity_type`                                                               | *T.nilable(::String)*                                                         | :heavy_minus_sign:                                                            | The type of activity. NOTE, EMAIL or OTHER                                    | NOTE                                                                          |
| `subject`                                                                     | *T.nilable(::String)*                                                         | :heavy_minus_sign:                                                            | The subject of the activity                                                   | Email subject                                                                 |
| `body`                                                                        | *T.nilable(::String)*                                                         | :heavy_minus_sign:                                                            | The body of the activity                                                      | Dear Diana, I love you                                                        |
| `visibility`                                                                  | *T.nilable(::String)*                                                         | :heavy_minus_sign:                                                            | The visibility of the activity. ADMIN_ONLY, PUBLIC or PRIVATE                 | PUBLIC                                                                        |
| `candidate_id`                                                                | *T.nilable(::String)*                                                         | :heavy_minus_sign:                                                            | The UUID of the candidate                                                     | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                                          |
| `remote_created_at`                                                           | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)          | :heavy_minus_sign:                                                            | The remote creation date of the activity                                      | 2024-10-01T12:00:00Z                                                          |
| `field_mappings`                                                              | T::Hash[Symbol, *::Object*]                                                   | :heavy_minus_sign:                                                            | The custom field mappings of the object between the remote 3rd party & Panora | {<br/>"fav_dish": "broccoli",<br/>"fav_color": "red"<br/>}                    |