# AuthLogin

## Overview

### Available Operations

* [sign_in](#sign_in) - Log In

## sign_in

Log In

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Shared::LoginDto.new(
  email: "Oda.Treutel97@hotmail.com",
  password_hash: "<value>",
)
    
res = s.auth_login.sign_in(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `request`                                                         | [::OpenApiSDK::Shared::LoginDto](../../models/shared/logindto.md) | :heavy_check_mark:                                                | The request object to use for the request.                        |

### Response

**[T.nilable(::OpenApiSDK::Operations::SignInResponse)](../../models/operations/signinresponse.md)**


