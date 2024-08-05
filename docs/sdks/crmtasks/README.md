# CrmTasks


### Available Operations

* [list](#list) - List Tasks
* [create](#create) - Create Tasks
* [retrieve](#retrieve) - Retrieve Tasks

## list

List Tasks

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
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
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.crm_tasks.create(x_connection_token="<value>", unified_crm_task_input=::OpenApiSDK::Shared::UnifiedCrmTaskInput.new(
    subject: "Answer customers",
    content: "Prepare email campaign",
    status: ::OpenApiSDK::Shared::UnifiedCrmTaskInputStatus::PENDING,
    due_date: "2024-10-01T12:00:00Z",
    finished_date: "2024-10-01T12:00:00Z",
    user_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    company_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    deal_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    field_mappings: {
      "online": "<value>",
    },
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
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.crm_tasks.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_crm_task_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 | Example                                                     |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `x_connection_token`                                        | *::String*                                                  | :heavy_check_mark:                                          | The connection token                                        |                                                             |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | id of the task you want to retrieve.                        | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                        |
| `remote_data`                                               | *T::Boolean*                                                | :heavy_minus_sign:                                          | Set to true to include data from the original Crm software. | false                                                       |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveCrmTaskResponse)](../../models/operations/retrievecrmtaskresponse.md)**

