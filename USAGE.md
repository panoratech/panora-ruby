<!-- Start SDK Example Usage [usage] -->
```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hello()

if ! res.res.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->