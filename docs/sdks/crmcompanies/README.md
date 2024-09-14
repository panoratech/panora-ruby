# CrmCompanies

## Overview

### Available Operations

* [list](#list) - List Companies
* [create](#create) - Create Companies
* [retrieve](#retrieve) - Retrieve Companies

## list

List Companies

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.crm_companies.list(x_connection_token="<value>", remote_data=true, limit=10.0, cursor="1b8b05bb-5273-4012-b520-8657b0b90874")

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

**[T.nilable(::OpenApiSDK::Operations::ListCrmCompanyResponse)](../../models/operations/listcrmcompanyresponse.md)**




## create

Create Companies in any supported CRM software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.crm_companies.create(x_connection_token="<value>", unified_crm_company_input=::OpenApiSDK::Shared::UnifiedCrmCompanyInput.new(
  name: "Acme",
  industry: "ACCOUNTING",
  number_of_employees: 10.0,
  user_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  email_addresses: [
    ::OpenApiSDK::Shared::Email.new(
      email_address: "acme@gmail.com",
      email_address_type: "WORK",
    ),
  ],
  addresses: [
    ::OpenApiSDK::Shared::Address.new(
      street_1: "5th Avenue",
      street_2: "Street 2",
      city: "New York",
      state: "NY",
      postal_code: "10001",
      country: "USA",
      address_type: "WORK",
      owner_type: "<value>",
    ),
  ],
  phone_numbers: [
    ::OpenApiSDK::Shared::Phone.new(
      phone_number: "+33660606067",
      phone_type: "WORK",
    ),
  ],
  field_mappings: {
    "fav_dish": "broccoli",
    "fav_color": "red",
  },
), remote_data=false)

if ! res.unified_crm_company_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   | Example                                                                                       |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                          | *::String*                                                                                    | :heavy_check_mark:                                                                            | The connection token                                                                          |                                                                                               |
| `unified_crm_company_input`                                                                   | [::OpenApiSDK::Shared::UnifiedCrmCompanyInput](../../models/shared/unifiedcrmcompanyinput.md) | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `remote_data`                                                                                 | *T::Boolean*                                                                                  | :heavy_minus_sign:                                                                            | Set to true to include data from the original CRM software.                                   | false                                                                                         |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateCrmCompanyResponse)](../../models/operations/createcrmcompanyresponse.md)**




## retrieve

Retrieve Companies from any connected Crm software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.crm_companies.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_crm_company_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 | Example                                                     |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `x_connection_token`                                        | *::String*                                                  | :heavy_check_mark:                                          | The connection token                                        |                                                             |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | id of the company you want to retrieve.                     | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                        |
| `remote_data`                                               | *T::Boolean*                                                | :heavy_minus_sign:                                          | Set to true to include data from the original Crm software. | false                                                       |

### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveCrmCompanyResponse)](../../models/operations/retrievecrmcompanyresponse.md)**


