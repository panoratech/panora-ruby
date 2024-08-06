# LinkedUsers


### Available Operations

* [create](#create) - Create Linked Users
* [list](#list) - List Linked Users
* [import_batch](#import_batch) - Add Batch Linked Users
* [retrieve](#retrieve) - Retrieve Linked Users
* [remote_id](#remote_id) - Retrieve a Linked User From A Remote Id

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


## import_batch

Add Batch Linked Users

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Shared::CreateBatchLinkedUserDto.new(
  linked_user_origin_ids: [
    "<value>",
  ],
  alias_: "acme",
)
    
res = s.linked_users.import_batch(req)

if ! res.linked_user_responses.nil?
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

    
res = s.linked_users.retrieve(id="801f9ede-c698-4e66-a7fc-48d19eebaa4f")

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


## remote_id

Retrieve a Linked User From A Remote Id

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.linked_users.remote_id(remote_id="id_1")

if ! res.linked_user_response.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        | Example            |
| ------------------ | ------------------ | ------------------ | ------------------ | ------------------ |
| `remote_id`        | *::String*         | :heavy_check_mark: | N/A                | id_1               |


### Response

**[T.nilable(::OpenApiSDK::Operations::RemoteIdResponse)](../../models/operations/remoteidresponse.md)**

