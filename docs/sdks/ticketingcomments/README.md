# TicketingComments

## Overview

### Available Operations

* [list](#list) - List Comments
* [create](#create) - Create Comments
* [retrieve](#retrieve) - Retrieve Comment

## list

List Comments

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing_comments.list(x_connection_token="<value>", remote_data=true, limit=10.0, cursor="1b8b05bb-5273-4012-b520-8657b0b90874")

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                               | Type                                                    | Required                                                | Description                                             | Example                                                 |
| ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- |
| `x_connection_token`                                    | *::String*                                              | :heavy_check_mark:                                      | The connection token                                    |                                                         |
| `remote_data`                                           | *T::Boolean*                                            | :heavy_minus_sign:                                      | Set to true to include data from the original software. | true                                                    |
| `limit`                                                 | *::Float*                                               | :heavy_minus_sign:                                      | Set to get the number of records.                       | 10                                                      |
| `cursor`                                                | *::String*                                              | :heavy_minus_sign:                                      | Set to get the number of records after this cursor.     | 1b8b05bb-5273-4012-b520-8657b0b90874                    |

### Response

**[T.nilable(::OpenApiSDK::Operations::ListTicketingCommentsResponse)](../../models/operations/listticketingcommentsresponse.md)**




## create

Create Comments in any supported Ticketing software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing_comments.create(x_connection_token="<value>", unified_ticketing_comment_input=::OpenApiSDK::Shared::UnifiedTicketingCommentInput.new(
  body: "Assigned to Eric !",
  html_body: "<p>Assigned to Eric !</p>",
  is_private: false,
  creator_type: "USER",
  ticket_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  contact_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  user_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  attachments: [
    "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  ],
), remote_data=false)

if ! res.unified_ticketing_comment_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                      | *::String*                                                                                                | :heavy_check_mark:                                                                                        | The connection token                                                                                      |
| `unified_ticketing_comment_input`                                                                         | [::OpenApiSDK::Shared::UnifiedTicketingCommentInput](../../models/shared/unifiedticketingcommentinput.md) | :heavy_check_mark:                                                                                        | N/A                                                                                                       |
| `remote_data`                                                                                             | *T::Boolean*                                                                                              | :heavy_minus_sign:                                                                                        | Set to true to include data from the original Ticketing software.                                         |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateTicketingCommentResponse)](../../models/operations/createticketingcommentresponse.md)**




## retrieve

Retrieve a Comment from any connected Ticketing software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing_comments.retrieve(x_connection_token="<value>", id="<id>", remote_data=false)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `x_connection_token`                                              | *::String*                                                        | :heavy_check_mark:                                                | The connection token                                              |
| `id`                                                              | *::String*                                                        | :heavy_check_mark:                                                | id of the `comment` you want to retrive.                          |
| `remote_data`                                                     | *T::Boolean*                                                      | :heavy_minus_sign:                                                | Set to true to include data from the original Ticketing software. |

### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveTicketingCommentResponse)](../../models/operations/retrieveticketingcommentresponse.md)**


