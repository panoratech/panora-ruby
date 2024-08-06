# FieldMappings


### Available Operations

* [definitions](#definitions) - Define target Field
* [define_custom_field](#define_custom_field) - Create Custom Field
* [map](#map) - Map Custom Field

## definitions

Define target Field

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Shared::DefineTargetFieldDto.new(
  object_type_owner: ::OpenApiSDK::Shared::ObjectTypeOwner::COMPANY,
  name: "fav_dish",
  description: "My favorite dish",
  data_type: ::OpenApiSDK::Shared::DataType::STRING,
)
    
res = s.field_mappings.definitions(req)

if ! res.custom_field_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [::OpenApiSDK::Shared::DefineTargetFieldDto](../../models/shared/definetargetfielddto.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(::OpenApiSDK::Operations::DefinitionsResponse)](../../models/operations/definitionsresponse.md)**


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
    
res = s.field_mappings.map(req)

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

