# Kuapir::Distribution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **sub_type** | **String** |  |  |
| **date** | **String** |  |  |
| **re_release** | **Boolean** |  |  |
| **country** | [**Country**](Country.md) |  |  |
| **companies** | [**Array&lt;Company&gt;**](Company.md) |  |  |

## Example

```ruby
require 'kuapir'

instance = Kuapir::Distribution.new(
  type: PREMIERE,
  sub_type: CINEMA,
  date: 1999-05-07,
  re_release: false,
  country: null,
  companies: null
)
```

