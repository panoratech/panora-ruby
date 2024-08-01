# FieldMappingsDefine


### Available Operations

* [definitions](#definitions) - Define target Field

## definitions

Define target Field

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new


req = ::OpenApiSDK::Shared::DefineTargetFieldDto.new(
  object_type_owner: "<value>",
  name: "<value>",
  description: "Universal heuristic matrices",
  data_type: "decimal",
)
    
res = s.field_mappings_define.definitions(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [::OpenApiSDK::Shared::DefineTargetFieldDto](../../models/shared/definetargetfielddto.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(::OpenApiSDK::Operations::DefinitionsResponse)](../../models/operations/definitionsresponse.md)**

