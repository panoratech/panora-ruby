# LinkedUsersSingle


### Available Operations

* [retrieve](#retrieve) - Retrieve Linked Users

## retrieve

Retrieve Linked Users

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.linked_users_single.retrieve(id="<value>")

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

