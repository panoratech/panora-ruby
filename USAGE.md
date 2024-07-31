<!-- Start SDK Example Usage [usage] -->
```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.hello()

if res.status_code == 200
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->