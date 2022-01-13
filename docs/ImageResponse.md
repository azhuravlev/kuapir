# Kuapir::ImageResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | Общее кол-во изображений |  |
| **total_pages** | **Integer** | Код-во доступных страниц |  |
| **items** | [**Array&lt;ImageResponseItems&gt;**](ImageResponseItems.md) |  |  |

## Example

```ruby
require 'kuapir'

instance = Kuapir::ImageResponse.new(
  total: 50,
  total_pages: 3,
  items: null
)
```

