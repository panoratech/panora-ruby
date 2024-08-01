# LinkedUsersBatch


### Available Operations

* [import_batch](#import_batch) - Add Batch Linked Users

## import_batch

Add Batch Linked Users

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new


req = ::OpenApiSDK::Shared::CreateBatchLinkedUserDto.new(
  linked_user_origin_ids: [
    "<value>",
  ],
  alias_: "<value>",
)
    
res = s.linked_users_batch.import_batch(req)

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

