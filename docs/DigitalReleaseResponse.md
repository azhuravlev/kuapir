# Kuapir::DigitalReleaseResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  |  |
| **total** | **Integer** |  |  |
| **releases** | [**Array&lt;DigitalReleaseItem&gt;**](DigitalReleaseItem.md) |  |  |

## Example

```ruby
require 'kuapir'

instance = Kuapir::DigitalReleaseResponse.new(
  page: 1,
  total: 34,
  releases: null
)
```

