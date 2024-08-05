# FieldMappingsDefine


### Available Operations

* [definitions](#definitions) - Define target Field

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
    
res = s.field_mappings_define.definitions(req)

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

