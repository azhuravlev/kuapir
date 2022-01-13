# Kuapir::BoxOffice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **amount** | **Integer** |  |  |
| **currency_code** | **String** |  |  |
| **name** | **String** |  |  |
| **symbol** | **String** |  |  |

## Example

```ruby
require 'kuapir'

instance = Kuapir::BoxOffice.new(
  type: BUDGET,
  amount: 63000000,
  currency_code: USD,
  name: US Dollar,
  symbol: $
)
```

