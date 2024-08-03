# LinkedUsersFromremoteid


### Available Operations

* [remote_id](#remote_id) - Retrieve a Linked User From A Remote Id

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

    
res = s.linked_users_fromremoteid.remote_id(remote_id="<value>")

if ! res.linked_user_response.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `remote_id`        | *::String*         | :heavy_check_mark: | N/A                |


### Response

**[T.nilable(::OpenApiSDK::Operations::RemoteIdResponse)](../../models/operations/remoteidresponse.md)**

