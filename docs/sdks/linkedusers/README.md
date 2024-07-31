# LinkedUsers


### Available Operations

* [create](#create) - Add Linked User
* [list](#list) - Retrieve Linked Users
* [import_batch](#import_batch) - Add Batch Linked Users
* [retrieve](#retrieve) - Retrieve a Linked User
* [remote_id](#remote_id) - Retrieve a Linked User From A Remote Id

## create

Add Linked User

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


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

Retrieve Linked Users

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.linked_users.list()

if res.status_code == 200
  # handle response
end

```


### Response

**[T.nilable(::OpenApiSDK::Operations::ListLinkedUsersResponse)](../../models/operations/listlinkedusersresponse.md)**


## import_batch

Add Batch Linked Users

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::OpenApiSDK::Shared::CreateBatchLinkedUserDto.new(
  linked_user_origin_ids: [
    "<value>",
  ],
  alias_: "<value>",
)
    
res = s.linked_users.import_batch(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [::OpenApiSDK::Shared::CreateBatchLinkedUserDto](../../models/shared/createbatchlinkeduserdto.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |


### Response

**[T.nilable(::OpenApiSDK::Operations::ImportBatchResponse)](../../models/operations/importbatchresponse.md)**


## retrieve

Retrieve a Linked User

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.linked_users.retrieve(id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | N/A                |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveLinkedUserResponse)](../../models/operations/retrievelinkeduserresponse.md)**


## remote_id

Retrieve a Linked User From A Remote Id

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.linked_users.remote_id(remote_id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `remote_id`        | *::String*         | :heavy_check_mark: | N/A                |


### Response

**[T.nilable(::OpenApiSDK::Operations::RemoteIdResponse)](../../models/operations/remoteidresponse.md)**

