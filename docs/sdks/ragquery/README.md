# RagQuery

## Overview

### Available Operations

* [query](#query) - Query using RAG Search

## query

Query across your connected data sources using RAG Search

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.rag_query.query(x_connection_token="<value>", query_body=::OpenApiSDK::Shared::QueryBody.new(
  query: "When does Panora incorporated?",
  top_k: 3,
))

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `x_connection_token`                                                | *::String*                                                          | :heavy_check_mark:                                                  | The connection token                                                |
| `query_body`                                                        | [::OpenApiSDK::Shared::QueryBody](../../models/shared/querybody.md) | :heavy_check_mark:                                                  | N/A                                                                 |

### Response

**[T.nilable(::OpenApiSDK::Operations::QueryResponse)](../../models/operations/queryresponse.md)**


