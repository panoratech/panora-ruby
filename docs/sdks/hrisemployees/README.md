# HrisEmployees

## Overview

### Available Operations

* [list](#list) - List Employees
* [create](#create) - Create Employees
* [retrieve](#retrieve) - Retrieve Employee

## list

List Employees

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris_employees.list(x_connection_token="<value>", remote_data=true, limit=10.0, cursor="1b8b05bb-5273-4012-b520-8657b0b90874")

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

**[T.nilable(::OpenApiSDK::Operations::ListHrisEmployeesResponse)](../../models/operations/listhrisemployeesresponse.md)**




## create

Create Employees in any supported Hris software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris_employees.create(x_connection_token="<value>", unified_hris_employee_input=::OpenApiSDK::Shared::UnifiedHrisEmployeeInput.new(
  groups: [
    "Group1",
    "Group2",
  ],
  locations: [
    "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  ],
  employee_number: "EMP001",
  company_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  first_name: "John",
  last_name: "Doe",
  preferred_name: "Johnny",
  display_full_name: "John Doe",
  username: "johndoe",
  work_email: "john.doe@company.com",
  personal_email: "john.doe@personal.com",
  mobile_phone_number: "+1234567890",
  employments: [
    "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  ],
  ssn: "123-45-6789",
  gender: "MALE",
  ethnicity: "AMERICAN_INDIAN_OR_ALASKA_NATIVE",
  marital_status: "Married",
  date_of_birth: DateTime.iso8601('1990-01-01'),
  start_date: DateTime.iso8601('2020-01-01'),
  employment_status: "ACTIVE",
  termination_date: DateTime.iso8601('2025-01-01'),
  avatar_url: "https://example.com/avatar.jpg",
  manager_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  field_mappings: ::OpenApiSDK::Shared::UnifiedHrisEmployeeInputFieldMappings.new(),
), remote_data=false)

if ! res.unified_hris_employee_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                              | *::String*                                                                                        | :heavy_check_mark:                                                                                | The connection token                                                                              |
| `unified_hris_employee_input`                                                                     | [::OpenApiSDK::Shared::UnifiedHrisEmployeeInput](../../models/shared/unifiedhrisemployeeinput.md) | :heavy_check_mark:                                                                                | N/A                                                                                               |
| `remote_data`                                                                                     | *T::Boolean*                                                                                      | :heavy_minus_sign:                                                                                | Set to true to include data from the original Hris software.                                      |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateHrisEmployeeResponse)](../../models/operations/createhrisemployeeresponse.md)**




## retrieve

Retrieve an Employee from any connected Hris software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris_employees.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_hris_employee_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                    | Type                                                         | Required                                                     | Description                                                  | Example                                                      |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `x_connection_token`                                         | *::String*                                                   | :heavy_check_mark:                                           | The connection token                                         |                                                              |
| `id`                                                         | *::String*                                                   | :heavy_check_mark:                                           | id of the employee you want to retrieve.                     | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                         |
| `remote_data`                                                | *T::Boolean*                                                 | :heavy_minus_sign:                                           | Set to true to include data from the original Hris software. | false                                                        |

### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveHrisEmployeeResponse)](../../models/operations/retrievehrisemployeeresponse.md)**


