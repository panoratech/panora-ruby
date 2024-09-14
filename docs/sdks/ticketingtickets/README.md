# TicketingTickets

## Overview

### Available Operations

* [list](#list) - List  Tickets
* [create](#create) - Create Tickets
* [retrieve](#retrieve) - Retrieve Tickets

## list

List  Tickets

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing_tickets.list(x_connection_token="<value>", remote_data=true, limit=10.0, cursor="1b8b05bb-5273-4012-b520-8657b0b90874")

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

**[T.nilable(::OpenApiSDK::Operations::ListTicketingTicketResponse)](../../models/operations/listticketingticketresponse.md)**




## create

Create Tickets in any supported Ticketing software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing_tickets.create(x_connection_token="<value>", unified_ticketing_ticket_input=::OpenApiSDK::Shared::UnifiedTicketingTicketInput.new(
  name: "Customer Service Inquiry",
  status: "OPEN",
  description: "Help customer",
  due_date: DateTime.iso8601('2024-10-01T12:00:00Z'),
  type: "BUG",
  parent_ticket: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  collections: [
    "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  ],
  tags: [
    "my_tag",
    "urgent_tag",
  ],
  completed_at: DateTime.iso8601('2024-10-01T12:00:00Z'),
  priority: "HIGH",
  assigned_to: [
    "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  ],
  comment: ::OpenApiSDK::Shared::UnifiedTicketingTicketInputComment.new(
    body: "Assigned to Eric !",
    html_body: "<p>Assigned to Eric !</p>",
    is_private: false,
    creator_type: "USER",
    ticket_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    contact_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    user_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    attachments: [
      "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
    ],
  ),
  account_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  contact_id: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  attachments: [
    "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  ],
  field_mappings: {
    "fav_dish": "broccoli",
    "fav_color": "red",
  },
), remote_data=false)

if ! res.unified_ticketing_ticket_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             | Example                                                                                                 |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                    | *::String*                                                                                              | :heavy_check_mark:                                                                                      | The connection token                                                                                    |                                                                                                         |
| `unified_ticketing_ticket_input`                                                                        | [::OpenApiSDK::Shared::UnifiedTicketingTicketInput](../../models/shared/unifiedticketingticketinput.md) | :heavy_check_mark:                                                                                      | N/A                                                                                                     |                                                                                                         |
| `remote_data`                                                                                           | *T::Boolean*                                                                                            | :heavy_minus_sign:                                                                                      | Set to true to include data from the original Ticketing software.                                       | false                                                                                                   |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateTicketingTicketResponse)](../../models/operations/createticketingticketresponse.md)**




## retrieve

Retrieve Tickets from any connected Ticketing software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing_tickets.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_ticketing_ticket_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       | Example                                                           |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `x_connection_token`                                              | *::String*                                                        | :heavy_check_mark:                                                | The connection token                                              |                                                                   |
| `id`                                                              | *::String*                                                        | :heavy_check_mark:                                                | id of the `ticket` you want to retrive.                           | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                              |
| `remote_data`                                                     | *T::Boolean*                                                      | :heavy_minus_sign:                                                | Set to true to include data from the original Ticketing software. | false                                                             |

### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveTicketingTicketResponse)](../../models/operations/retrieveticketingticketresponse.md)**


