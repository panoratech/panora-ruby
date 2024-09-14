# RagQuery

## Overview

### Available Operations

* [rag_controller_query_embeddings](#rag_controller_query_embeddings)

## rag_controller_query_embeddings

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.rag_query.rag_controller_query_embeddings()

if ! res.object.nil?
  # handle response
end

```

### Response

**[T.nilable(::OpenApiSDK::Operations::RagControllerQueryEmbeddingsResponse)](../../models/operations/ragcontrollerqueryembeddingsresponse.md)**


