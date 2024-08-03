# LinkedUsersSingle


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

    
res = s.linked_users_single.retrieve(id="<value>")

if ! res.linked_user_response.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | N/A                |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveLinkedUserResponse)](../../models/operations/retrievelinkeduserresponse.md)**

