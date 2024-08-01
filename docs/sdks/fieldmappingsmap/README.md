# FieldMappingsMap


### Available Operations

* [map](#map) - Map Custom Field

## map

Map Custom Field

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new


req = ::OpenApiSDK::Shared::MapFieldToProviderDto.new(
  attribute_id: "<value>",
  source_custom_field_id: "<value>",
  source_provider: "<value>",
  linked_user_id: "<value>",
)
    
res = s.field_mappings_map.map(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [::OpenApiSDK::Shared::MapFieldToProviderDto](../../models/shared/mapfieldtoproviderdto.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(::OpenApiSDK::Operations::MapResponse)](../../models/operations/mapresponse.md)**

