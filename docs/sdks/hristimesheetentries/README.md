# HrisTimesheetentries

## Overview

### Available Operations

* [list](#list) - List Timesheetentries
* [create](#create) - Create Timesheetentrys
* [retrieve](#retrieve) - Retrieve Timesheetentry

## list

List Timesheetentries

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris_timesheetentries.list(x_connection_token="<value>", remote_data=true, limit=10.0, cursor="1b8b05bb-5273-4012-b520-8657b0b90874")

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                               | Type                                                    | Required                                                | Description                                             | Example                                                 |
| ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- |
| `x_connection_token`                                    | *::String*                                              | :heavy_check_mark:                                      | The connection token                                    |                                                         |
| `remote_data`                                           | *T::Boolean*                                            | :heavy_minus_sign:                                      | Set to true to include data from the original software. | true                                                    |
| `limit`                                                 | *::Float*                                               | :heavy_minus_sign:                                      | Set to get the number of records.                       | 10                                                      |
| `cursor`                                                | *::String*                                              | :heavy_minus_sign:                                      | Set to get the number of records after this cursor.     | 1b8b05bb-5273-4012-b520-8657b0b90874                    |

### Response

**[T.nilable(::OpenApiSDK::Operations::ListHrisTimesheetentriesResponse)](../../models/operations/listhristimesheetentriesresponse.md)**




## create

Create Timesheetentrys in any supported Hris software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris_timesheetentries.create(x_connection_token="<value>", unified_hris_timesheet_entry_input=::OpenApiSDK::Shared::UnifiedHrisTimesheetEntryInput.new(
  hours_worked: 40.0,
  start_time: DateTime.iso8601('2024-10-01T08:00:00Z'),
  end_time: DateTime.iso8601('2024-10-01T16:00:00Z'),
  employee_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  remote_was_deleted: false,
  field_mappings: ::OpenApiSDK::Shared::UnifiedHrisTimesheetEntryInputFieldMappings.new(),
), remote_data=false)

if ! res.unified_hris_timesheet_entry_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                          | *::String*                                                                                                    | :heavy_check_mark:                                                                                            | The connection token                                                                                          |
| `unified_hris_timesheet_entry_input`                                                                          | [::OpenApiSDK::Shared::UnifiedHrisTimesheetEntryInput](../../models/shared/unifiedhristimesheetentryinput.md) | :heavy_check_mark:                                                                                            | N/A                                                                                                           |
| `remote_data`                                                                                                 | *T::Boolean*                                                                                                  | :heavy_minus_sign:                                                                                            | Set to true to include data from the original Hris software.                                                  |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateHrisTimesheetentryResponse)](../../models/operations/createhristimesheetentryresponse.md)**




## retrieve

Retrieve an Timesheetentry from any connected Hris software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris_timesheetentries.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_hris_timesheet_entry_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                    | Type                                                         | Required                                                     | Description                                                  | Example                                                      |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `x_connection_token`                                         | *::String*                                                   | :heavy_check_mark:                                           | The connection token                                         |                                                              |
| `id`                                                         | *::String*                                                   | :heavy_check_mark:                                           | id of the timesheetentry you want to retrieve.               | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                         |
| `remote_data`                                                | *T::Boolean*                                                 | :heavy_minus_sign:                                           | Set to true to include data from the original Hris software. | false                                                        |

### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveHrisTimesheetentryResponse)](../../models/operations/retrievehristimesheetentryresponse.md)**


