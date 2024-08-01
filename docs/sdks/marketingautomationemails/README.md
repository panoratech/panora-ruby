# MarketingautomationEmails


### Available Operations

* [list](#list) - List  Emails
* [retrieve](#retrieve) - Retrieve Emails

## list

List  Emails

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.marketingautomation_emails.list(x_connection_token="<value>", remote_data=false, limit=7685.78, cursor="<value>")

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

**[T.nilable(::OpenApiSDK::Operations::ListMarketingautomationEmailsResponse)](../../models/operations/listmarketingautomationemailsresponse.md)**


## retrieve

Retrieve Emails from any connected Marketingautomation software

### Example Usage

```ruby
require 'panora'


s = ::OpenApiSDK::Panora.new

    
res = s.marketingautomation_emails.retrieve(x_connection_token="<value>", id="<value>", remote_data=false)

if ! res.unified_marketingautomation_email_output.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `x_connection_token`                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | The connection token                                                        |
| `id`                                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | id of the email you want to retrieve.                                       |
| `remote_data`                                                               | *T::Boolean*                                                                | :heavy_minus_sign:                                                          | Set to true to include data from the original Marketingautomation software. |


### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveMarketingautomationEmailResponse)](../../models/operations/retrievemarketingautomationemailresponse.md)**

