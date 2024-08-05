# CrmCompanies


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

    
res = s.crm_companies.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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
    industry: ::OpenApiSDK::Shared::UnifiedCrmCompanyInputIndustry::ACCOUNTING,
    number_of_employees: 10.0,
    user_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    email_addresses: [
      ::OpenApiSDK::Shared::Email.new(
        email_address: "Jena.Nienow28@yahoo.com",
        email_address_type: ::OpenApiSDK::Shared::EmailAddressType::PERSONAL,
      ),
    ],
    addresses: [
      ::OpenApiSDK::Shared::Address.new(
        street_1: "<value>",
        street_2: "<value>",
        city: "Bernhardworth",
        state: "South Carolina",
        postal_code: "98041",
        country: "French Polynesia",
        address_type: ::OpenApiSDK::Shared::AddressType::PERSONAL,
        owner_type: "<value>",
      ),
    ],
    phone_numbers: [
      ::OpenApiSDK::Shared::Phone.new(
        phone_number: "<value>",
        phone_type: ::OpenApiSDK::Shared::PhoneType::WORK,
      ),
    ],
    field_mappings: {
      "fuchsia": "<value>",
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

