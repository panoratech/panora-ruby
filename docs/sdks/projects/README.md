# Projects

## Overview

### Available Operations

* [get_projects](#get_projects) - Retrieve projects
* [create](#create) - Create a project

## get_projects

Retrieve projects

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.projects.get_projects()

if ! res.project_responses.nil?
  # handle response
end

```

### Response

**[T.nilable(::OpenApiSDK::Operations::GetProjectsResponse)](../../models/operations/getprojectsresponse.md)**




## create

Create a project

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Shared::CreateProjectDto.new(
  name: "Project Name",
  id_organization: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
  id_user: "801f9ede-c698-4e66-a7fc-48d19eebaa4f",
)
    
res = s.projects.create(req)

if ! res.project_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `request`                                                                         | [::OpenApiSDK::Shared::CreateProjectDto](../../models/shared/createprojectdto.md) | :heavy_check_mark:                                                                | The request object to use for the request.                                        |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateProjectResponse)](../../models/operations/createprojectresponse.md)**


