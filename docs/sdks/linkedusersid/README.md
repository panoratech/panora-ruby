# LinkedUsersId


### Available Operations

* [retrieve](#retrieve) - Retrieve Linked Users

## retrieve

Retrieve Linked Users

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.linked_users_id.retrieve(id="801f9ede-c698-4e66-a7fc-48d19eebaa4f")

if ! res.linked_user_response.nil?
  # handle response
end

```

### Parameters

| Parameter                            | Type                                 | Required                             | Description                          | Example                              |
| ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ |
| `id`                                 | *::String*                           | :heavy_check_mark:                   | N/A                                  | 801f9ede-c698-4e66-a7fc-48d19eebaa4f |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveLinkedUserResponse)](../../models/operations/retrievelinkeduserresponse.md)**

