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

    
res = s.ats_candidates.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListAtsCandidateResponse)](../../models/operations/listatscandidateresponse.md)**


## create

Create Candidates in any supported Ats software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.ats_candidates.create(x_connection_token="<value>", unified_ats_candidate_input=::OpenApiSDK::Shared::UnifiedAtsCandidateInput.new(
    field_mappings: ::OpenApiSDK::Shared::UnifiedAtsCandidateInputFieldMappings.new(),
  ), remote_data=false)

if ! res.unified_ats_candidate_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `x_connection_token`                                                                              | *::String*                                                                                        | :heavy_check_mark:                                                                                | The connection token                                                                              |
| `unified_ats_candidate_input`                                                                     | [::OpenApiSDK::Shared::UnifiedAtsCandidateInput](../../models/shared/unifiedatscandidateinput.md) | :heavy_check_mark:                                                                                | N/A                                                                                               |
| `remote_data`                                                                                     | *T::Boolean*                                                                                      | :heavy_minus_sign:                                                                                | Set to true to include data from the original Ats software.                                       |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateAtsCandidateResponse)](../../models/operations/createatscandidateresponse.md)**


## retrieve

Retrieve Candidates from any connected Ats software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.ats_candidates.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_ats_candidate_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `x_connection_token`                                        | *::String*                                                  | :heavy_check_mark:                                          | The connection token                                        |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | id of the candidate you want to retrieve.                   |
| `remote_data`                                               | *T::Boolean*                                                | :heavy_minus_sign:                                          | Set to true to include data from the original Ats software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveAtsCandidateResponse)](../../models/operations/retrieveatscandidateresponse.md)**

