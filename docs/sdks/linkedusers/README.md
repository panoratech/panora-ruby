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


req = ::OpenApiSDK::Shared::CreateLinkedUserDto.new(
  linked_user_origin_id: "<value>",
  alias_: "<value>",
)
    
res = s.linked_users.create(req)

if res.status_code == 200
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

    
res = s.linked_users.list()

if res.status_code == 200
  # handle response
end

```


### Response

**[T.nilable(::OpenApiSDK::Operations::ListLinkedUsersResponse)](../../models/operations/listlinkedusersresponse.md)**

