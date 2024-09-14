# AccountingContacts

## Overview

### Available Operations

* [list](#list) - List  Contacts
* [create](#create) - Create Contacts
* [retrieve](#retrieve) - Retrieve Contacts

## list

List  Contacts

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting_contacts.list(x_connection_token="<value>", remote_data=true, limit=10.0, cursor="1b8b05bb-5273-4012-b520-8657b0b90874")

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

**[T.nilable(::OpenApiSDK::Operations::ListAccountingContactsResponse)](../../models/operations/listaccountingcontactsresponse.md)**




## create

Create contacts in any supported Accounting software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting_contacts.create(x_connection_token="<value>", unified_accounting_contact_input=::OpenApiSDK::Shared::UnifiedAccountingContactInput.new(
  name: "John Doe",
  is_supplier: true,
  is_customer: false,
  email_address: "john.doe@example.com",
  tax_number: "123456789",
  status: "Active",
  currency: "USD",
  remote_updated_at: "2024-06-15T12:00:00Z",
  company_info_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  field_mappings: ::OpenApiSDK::Shared::UnifiedAccountingContactInputFieldMappings.new(),
), remote_data=false)

if ! res.unified_accounting_contact_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 | Example                                                                                                     |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                        | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | The connection token                                                                                        |                                                                                                             |
| `unified_accounting_contact_input`                                                                          | [::OpenApiSDK::Shared::UnifiedAccountingContactInput](../../models/shared/unifiedaccountingcontactinput.md) | :heavy_check_mark:                                                                                          | N/A                                                                                                         |                                                                                                             |
| `remote_data`                                                                                               | *T::Boolean*                                                                                                | :heavy_minus_sign:                                                                                          | Set to true to include data from the original Accounting software.                                          | false                                                                                                       |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateAccountingContactResponse)](../../models/operations/createaccountingcontactresponse.md)**




## retrieve

Retrieve Contacts from any connected Accounting software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting_contacts.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_accounting_contact_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                          | Type                                                               | Required                                                           | Description                                                        | Example                                                            |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `x_connection_token`                                               | *::String*                                                         | :heavy_check_mark:                                                 | The connection token                                               |                                                                    |
| `id`                                                               | *::String*                                                         | :heavy_check_mark:                                                 | id of the contact you want to retrieve.                            | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                               |
| `remote_data`                                                      | *T::Boolean*                                                       | :heavy_minus_sign:                                                 | Set to true to include data from the original Accounting software. | false                                                              |

### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveAccountingContactResponse)](../../models/operations/retrieveaccountingcontactresponse.md)**


