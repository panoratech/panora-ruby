# LinkedUsersBatch


### Available Operations

* [import_batch](#import_batch) - Add Batch Linked Users

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
    
res = s.linked_users_batch.import_batch(req)

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

