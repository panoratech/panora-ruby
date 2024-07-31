# TicketingComments


### Available Operations

* [list](#list) - List  Comments
* [create](#create) - Create Comments
* [retrieve](#retrieve) - Retrieve Comments

## list

List  Comments

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.ticketing_comments.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                               | Type                                                    | Required                                                | Description                                             |
| ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- |
| `x_connection_token`                                    | *::String*                                              | :heavy_check_mark:                                      | The connection token                                    |
| `remote_data`                                           | *T::Boolean*                                            | :heavy_minus_sign:                                      | Set to true to include data from the original software. |
| `limit`                                                 | *::Float*                                               | :heavy_minus_sign:                                      | Set to get the number of records.                       |
| `cursor`                                                | *::String*                                              | :heavy_minus_sign:                                      | Set to get the number of records after this cursor.     |


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
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.ticketing_comments.create(x_connection_token="<value>", unified_ticketing_comment_input=::OpenApiSDK::Shared::UnifiedTicketingCommentInput.new(
    body: "<value>",
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

Retrieve Comments from any connected Ticketing software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.ticketing_comments.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

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

