# TicketingTickets


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

    
res = s.ticketing_tickets.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListTicketingTicketResponse)](../../models/operations/listticketingticketresponse.md)**


## create

Create Tickets in any supported Ticketing software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.ticketing_tickets.create(x_connection_token="<value>", unified_ticketing_ticket_input=::OpenApiSDK::Shared::UnifiedTicketingTicketInput.new(
    name: "<value>",
    description: "Multi-tiered human-resource model",
    field_mappings: ::OpenApiSDK::Shared::UnifiedTicketingTicketInputFieldMappings.new(),
  ), remote_data=false)

if ! res.unified_ticketing_ticket_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                                    | *::String*                                                                                              | :heavy_check_mark:                                                                                      | The connection token                                                                                    |
| `unified_ticketing_ticket_input`                                                                        | [::OpenApiSDK::Shared::UnifiedTicketingTicketInput](../../models/shared/unifiedticketingticketinput.md) | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `remote_data`                                                                                           | *T::Boolean*                                                                                            | :heavy_minus_sign:                                                                                      | Set to true to include data from the original Ticketing software.                                       |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateTicketingTicketResponse)](../../models/operations/createticketingticketresponse.md)**


## retrieve

Retrieve Tickets from any connected Ticketing software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.ticketing_tickets.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_ticketing_ticket_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `x_connection_token`                                              | *::String*                                                        | :heavy_check_mark:                                                | The connection token                                              |
| `id`                                                              | *::String*                                                        | :heavy_check_mark:                                                | id of the `ticket` you want to retrive.                           |
| `remote_data`                                                     | *T::Boolean*                                                      | :heavy_minus_sign:                                                | Set to true to include data from the original Ticketing software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveTicketingTicketResponse)](../../models/operations/retrieveticketingticketresponse.md)**

