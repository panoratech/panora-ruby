# FieldMappings


### Available Operations

* [define_custom_field](#define_custom_field) - Create Custom Field

## define_custom_field

Create Custom Field

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Shared::CustomFieldCreateDto.new(
  object_type_owner: "<value>",
  name: "<value>",
  description: "Balanced multimedia policy",
  data_type: "point",
  source_custom_field_id: "<value>",
  source_provider: "<value>",
  linked_user_id: "<value>",
)
    
res = s.field_mappings.define_custom_field(req)

if ! res.custom_field_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [::OpenApiSDK::Shared::CustomFieldCreateDto](../../models/shared/customfieldcreatedto.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(::OpenApiSDK::Operations::DefineCustomFieldResponse)](../../models/operations/definecustomfieldresponse.md)**

