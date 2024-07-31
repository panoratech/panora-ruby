# FieldMappings


### Available Operations

* [define](#define) - Define target Field
* [create](#create) - Create Custom Field
* [map](#map) - Map Custom Field

## define

Define target Field

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::OpenApiSDK::Shared::DefineTargetFieldDto.new(
  object_type_owner: "<value>",
  name: "<value>",
  description: "Optimized object-oriented emulation",
  data_type: "float",
)
    
res = s.field_mappings.define(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [::OpenApiSDK::Shared::DefineTargetFieldDto](../../models/shared/definetargetfielddto.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(::OpenApiSDK::Operations::DefineResponse)](../../models/operations/defineresponse.md)**


## create

Create Custom Field

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::OpenApiSDK::Shared::CustomFieldCreateDto.new(
  object_type_owner: "<value>",
  name: "<value>",
  description: "Multi-tiered human-resource model",
  data_type: "enum",
  source_custom_field_id: "<value>",
  source_provider: "<value>",
  linked_user_id: "<value>",
)
    
res = s.field_mappings.create(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [::OpenApiSDK::Shared::CustomFieldCreateDto](../../models/shared/customfieldcreatedto.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateResponse)](../../models/operations/createresponse.md)**


## map

Map Custom Field

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::OpenApiSDK::Shared::MapFieldToProviderDto.new(
  attribute_id: "<value>",
  source_custom_field_id: "<value>",
  source_provider: "<value>",
  linked_user_id: "<value>",
)
    
res = s.field_mappings.map(req)

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

