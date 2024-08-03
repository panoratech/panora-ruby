# Sync


### Available Operations

* [status](#status) - Retrieve sync status of a certain vertical
* [resync](#resync) - Resync common objects across a vertical

## status

Retrieve sync status of a certain vertical

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.sync.status(vertical="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `vertical`         | *::String*         | :heavy_check_mark: | N/A                |


### Response

**[T.nilable(::OpenApiSDK::Operations::StatusResponse)](../../models/operations/statusresponse.md)**


## resync

Resync common objects across a vertical

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.sync.resync()

if ! res.resync_status_dto.nil?
  # handle response
end

```


### Response

**[T.nilable(::OpenApiSDK::Operations::ResyncResponse)](../../models/operations/resyncresponse.md)**

