# DeductionItem


## Fields

| Field                            | Type                             | Required                         | Description                      | Example                          |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `name`                           | *T.nilable(::String)*            | :heavy_minus_sign:               | The name of the deduction        | Health Insurance                 |
| `employee_deduction`             | *T.nilable(::Float)*             | :heavy_minus_sign:               | The amount of employee deduction | 100                              |
| `company_deduction`              | *T.nilable(::Float)*             | :heavy_minus_sign:               | The amount of company deduction  | 200                              |