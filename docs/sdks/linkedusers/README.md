# LinkedUsers


### Available Operations

* [create](#create) - Create Linked Users
* [list](#list) - List Linked Users

## create

Create Linked Users

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Shared::CreateLinkedUserDto.new(
  linked_user_origin_id: "id_1",
  alias_: "acme",
)
    
res = s.linked_users.create(req)

if ! res.linked_user_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [::OpenApiSDK::Shared::CreateLinkedUserDto](../../models/shared/createlinkeduserdto.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateLinkedUserResponse)](../../models/operations/createlinkeduserresponse.md)**


## list

List Linked Users

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.linked_users.list()

if ! res.linked_user_responses.nil?
  # handle response
end

```


### Response

**[T.nilable(::OpenApiSDK::Operations::ListLinkedUsersResponse)](../../models/operations/listlinkedusersresponse.md)**

