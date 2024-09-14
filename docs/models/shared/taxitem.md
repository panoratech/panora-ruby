# TaxItem


## Fields

| Field                                | Type                                 | Required                             | Description                          | Example                              |
| ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ |
| `name`                               | *T.nilable(::String)*                | :heavy_minus_sign:                   | The name of the tax                  | Federal Income Tax                   |
| `amount`                             | *T.nilable(::Float)*                 | :heavy_minus_sign:                   | The amount of the tax                | 250                                  |
| `employer_tax`                       | *T.nilable(T::Boolean)*              | :heavy_minus_sign:                   | Indicates if this is an employer tax | true                                 |