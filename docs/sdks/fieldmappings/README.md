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
  object_type_owner: ::OpenApiSDK::Shared::CustomFieldCreateDtoObjectTypeOwner::COMPANY,
  name: "my_favorite_dish",
  description: "Favorite Dish",
  data_type: ::OpenApiSDK::Shared::CustomFieldCreateDtoDataType::STRING,
  source_custom_field_id: "id_1",
  source_provider: "hubspot",
  linked_user_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
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

