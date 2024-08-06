# AtsCandidates


### Available Operations

* [list](#list) - List  Candidates
* [create](#create) - Create Candidates
* [retrieve](#retrieve) - Retrieve Candidates

## list

List  Candidates

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats_candidates.list(x_connection_token="<value>", remote_data=true, limit=10.0, cursor="1b8b05bb-5273-4012-b520-8657b0b90874")

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

**[T.nilable(::OpenApiSDK::Operations::ListAtsCandidateResponse)](../../models/operations/listatscandidateresponse.md)**


## create

Create Candidates in any supported Ats software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats_candidates.create(x_connection_token="<value>", unified_ats_candidate_input=::OpenApiSDK::Shared::UnifiedAtsCandidateInput.new(
    first_name: "Joe",
    last_name: "Doe",
    company: "Acme",
    title: "Analyst",
    locations: "New York",
    is_private: false,
    email_reachable: true,
    remote_created_at: DateTime.iso8601('2024-10-01T12:00:00Z'),
    remote_modified_at: DateTime.iso8601('2024-10-01T12:00:00Z'),
    last_interaction_at: DateTime.iso8601('2024-10-01T12:00:00Z'),
    attachments: [
      "<value>",
    ],
    applications: [
      "<value>",
    ],
    tags: [
      "<value>",
    ],
    urls: [
      ::OpenApiSDK::Shared::Url.new(
        url: "http://limp-pastry.org",
        url_type: "<value>",
      ),
    ],
    phone_numbers: [
      ::OpenApiSDK::Shared::Phone.new(
        phone_number: "<value>",
        phone_type: ::OpenApiSDK::Shared::PhoneType::MOBILE,
      ),
    ],
    email_addresses: [
      ::OpenApiSDK::Shared::Email.new(
        email_address: "Bria99@gmail.com",
        email_address_type: ::OpenApiSDK::Shared::EmailAddressType::WORK,
      ),
    ],
    field_mappings: {
      "abnormally": "<value>",
    },
  ), remote_data=false)

if ! res.unified_ats_candidate_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       | Example                                                                                           |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                              | *::String*                                                                                        | :heavy_check_mark:                                                                                | The connection token                                                                              |                                                                                                   |
| `unified_ats_candidate_input`                                                                     | [::OpenApiSDK::Shared::UnifiedAtsCandidateInput](../../models/shared/unifiedatscandidateinput.md) | :heavy_check_mark:                                                                                | N/A                                                                                               |                                                                                                   |
| `remote_data`                                                                                     | *T::Boolean*                                                                                      | :heavy_minus_sign:                                                                                | Set to true to include data from the original Ats software.                                       | false                                                                                             |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateAtsCandidateResponse)](../../models/operations/createatscandidateresponse.md)**


## retrieve

Retrieve Candidates from any connected Ats software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats_candidates.retrieve(x_connection_token="<value>", id="801f9ede-c698-4e66-a7fc-48d19eebaa4f", remote_data=false)

if ! res.unified_ats_candidate_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 | Example                                                     |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `x_connection_token`                                        | *::String*                                                  | :heavy_check_mark:                                          | The connection token                                        |                                                             |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | id of the candidate you want to retrieve.                   | 801f9ede-c698-4e66-a7fc-48d19eebaa4f                        |
| `remote_data`                                               | *T::Boolean*                                                | :heavy_minus_sign:                                          | Set to true to include data from the original Ats software. | false                                                       |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveAtsCandidateResponse)](../../models/operations/retrieveatscandidateresponse.md)**

