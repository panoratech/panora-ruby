# FieldMappingsMap


### Available Operations

* [map](#map) - Map Custom Field

## map

Map Custom Field

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Shared::MapFieldToProviderDto.new(
  attribute_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  source_custom_field_id: "id_1",
  source_provider: "hubspot",
  linked_user_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
)
    
res = s.field_mappings_map.map(req)

if ! res.custom_field_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [::OpenApiSDK::Shared::MapFieldToProviderDto](../../models/shared/mapfieldtoproviderdto.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(::OpenApiSDK::Operations::MapResponse)](../../models/operations/mapresponse.md)**

