# CrmTasks


### Available Operations

* [list](#list) - List  Tasks
* [create](#create) - Create Tasks
* [retrieve](#retrieve) - Retrieve Tasks

## list

List  Tasks

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.crm_tasks.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                               | Type                                                    | Required                                                | Description                                             |
| ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- |
| `x_connection_token`                                    | *::String*                                              | :heavy_check_mark:                                      | The connection token                                    |
| `remote_data`                                           | *T::Boolean*                                            | :heavy_minus_sign:                                      | Set to true to include data from the original software. |
| `limit`                                                 | *::Float*                                               | :heavy_minus_sign:                                      | Set to get the number of records.                       |
| `cursor`                                                | *::String*                                              | :heavy_minus_sign:                                      | Set to get the number of records after this cursor.     |


### Response

**[T.nilable(::OpenApiSDK::Operations::ListCrmTaskResponse)](../../models/operations/listcrmtaskresponse.md)**


## create

Create Tasks in any supported Crm software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.crm_tasks.create(x_connection_token="<value>", unified_crm_task_input=::OpenApiSDK::Shared::UnifiedCrmTaskInput.new(
    subject: "<value>",
    content: "<value>",
    status: "<value>",
    field_mappings: ::OpenApiSDK::Shared::UnifiedCrmTaskInputFieldMappings.new(),
  ), remote_data=false)

if ! res.unified_crm_task_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | The connection token                                                                    |
| `unified_crm_task_input`                                                                | [::OpenApiSDK::Shared::UnifiedCrmTaskInput](../../models/shared/unifiedcrmtaskinput.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `remote_data`                                                                           | *T::Boolean*                                                                            | :heavy_minus_sign:                                                                      | Set to true to include data from the original Crm software.                             |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateCrmTaskResponse)](../../models/operations/createcrmtaskresponse.md)**


## retrieve

Retrieve Tasks from any connected Crm software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.crm_tasks.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_crm_task_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `x_connection_token`                                        | *::String*                                                  | :heavy_check_mark:                                          | The connection token                                        |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | id of the task you want to retrieve.                        |
| `remote_data`                                               | *T::Boolean*                                                | :heavy_minus_sign:                                          | Set to true to include data from the original Crm software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveCrmTaskResponse)](../../models/operations/retrievecrmtaskresponse.md)**

