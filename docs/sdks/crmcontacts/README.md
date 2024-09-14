# CrmContacts

## Overview

### Available Operations

* [list](#list) - List CRM Contacts
* [create](#create) - Create Contacts
* [retrieve](#retrieve) - Retrieve Contacts

## list

List CRM Contacts

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.crm_contacts.list(x_connection_token="<value>", remote_data=true, limit=10.0, cursor="1b8b05bb-5273-4012-b520-8657b0b90874")

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

**[T.nilable(::OpenApiSDK::Operations::ListCrmContactsResponse)](../../models/operations/listcrmcontactsresponse.md)**




## create

Create Contacts in any supported CRM

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.crm_contacts.create(x_connection_token="<value>", unified_crm_contact_input=::OpenApiSDK::Shared::UnifiedCrmContactInput.new(
  first_name: "John",
  last_name: "Doe",
  email_addresses: [
    ::OpenApiSDK::Shared::Email.new(
      email_address: "Jena.Nienow28@yahoo.com",
      email_address_type: "<value>",
    ),
  ],
  phone_numbers: [
    ::OpenApiSDK::Shared::Phone.new(
      phone_number: "1-809-839-8041",
      phone_type: "<value>",
    ),
  ],
  addresses: [
    ::OpenApiSDK::Shared::Address.new(
      street_1: "5th Avenue",
      street_2: "Street 2",
      city: "Anytown",
      state: "CA",
      postal_code: "10001",
      country: "USA",
      address_type: "PERSONAL",
      owner_type: "<value>",
    ),
  ],
  user_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  field_mappings: {
    "fav_dish": "broccoli",
    "fav_color": "red",
  },
), remote_data=false)

if ! res.unified_crm_contact_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   | Example                                                                                       |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                          | *::String*                                                                                    | :heavy_check_mark:                                                                            | The connection token                                                                          |                                                                                               |
| `unified_crm_contact_input`                                                                   | [::OpenApiSDK::Shared::UnifiedCrmContactInput](../../models/shared/unifiedcrmcontactinput.md) | :heavy_check_mark:                                                                            | N/A                                                                                           |                                                                                               |
| `remote_data`                                                                                 | *T::Boolean*                                                                                  | :heavy_minus_sign:                                                                            | Set to true to include data from the original CRM software.                                   | false                                                                                         |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateCrmContactResponse)](../../models/operations/createcrmcontactresponse.md)**




## retrieve

Retrieve Contacts from any connected CRM

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.crm_contacts.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_crm_contact_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 | Example                                                     |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `x_connection_token`                                        | *::String*                                                  | :heavy_check_mark:                                          | The connection token                                        |                                                             |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | id of the `contact` you want to retrive.                    | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                        |
| `remote_data`                                               | *T::Boolean*                                                | :heavy_minus_sign:                                          | Set to true to include data from the original CRM software. | false                                                       |

### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveCrmContactResponse)](../../models/operations/retrievecrmcontactresponse.md)**


