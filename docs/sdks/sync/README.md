# Sync

## Overview

### Available Operations

* [status](#status) - Retrieve sync status of a certain vertical
* [resync](#resync) - Resync common objects across a vertical
* [update_pull_frequency](#update_pull_frequency) - Update pull frequency for verticals
* [get_pull_frequency](#get_pull_frequency) - Get pull frequency for verticals

## status

Retrieve sync status of a certain vertical

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.sync.status(vertical=::OpenApiSDK::Operations::Vertical::TICKETING)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               | Example                                                                   |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `vertical`                                                                | [::OpenApiSDK::Operations::Vertical](../../models/operations/vertical.md) | :heavy_check_mark:                                                        | N/A                                                                       | ticketing                                                                 |

### Response

**[T.nilable(::OpenApiSDK::Operations::StatusResponse)](../../models/operations/statusresponse.md)**




## resync

Resync common objects across a vertical

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.sync.resync()

if ! res.resync_status_dto.nil?
  # handle response
end

```

### Response

**[T.nilable(::OpenApiSDK::Operations::ResyncResponse)](../../models/operations/resyncresponse.md)**




## update_pull_frequency

Update pull frequency for verticals

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Shared::UpdatePullFrequencyDto.new(
  crm: 1800.0,
  ats: 3600.0,
  hris: 7200.0,
  accounting: 14400.0,
  filestorage: 28800.0,
  ecommerce: 43200.0,
  ticketing: 86400.0,
)
    
res = s.sync.update_pull_frequency(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [::OpenApiSDK::Shared::UpdatePullFrequencyDto](../../models/shared/updatepullfrequencydto.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(::OpenApiSDK::Operations::UpdatePullFrequencyResponse)](../../models/operations/updatepullfrequencyresponse.md)**




## get_pull_frequency

Get pull frequency for verticals

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    api_key: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.sync.get_pull_frequency()

if ! res.update_pull_frequency_dto.nil?
  # handle response
end

```

### Response

**[T.nilable(::OpenApiSDK::Operations::GetPullFrequencyResponse)](../../models/operations/getpullfrequencyresponse.md)**


