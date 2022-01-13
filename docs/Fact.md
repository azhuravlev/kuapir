# Kuapir::Fact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** |  |  |
| **type** | **String** |  |  |
| **spoiler** | **Boolean** |  |  |

## Example

```ruby
require 'kuapir'

instance = Kuapir::Fact.new(
  text: В эпизоде, где Тринити и Нео в поисках Морфиуса оказываются на крыше...,
  type: BLOOPER,
  spoiler: false
)
```

