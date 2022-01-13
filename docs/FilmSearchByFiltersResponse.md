# Kuapir::FilmSearchByFiltersResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** |  |  |
| **total_pages** | **Integer** |  |  |
| **items** | [**Array&lt;FilmSearchByFiltersResponseItems&gt;**](FilmSearchByFiltersResponseItems.md) |  |  |

## Example

```ruby
require 'kuapir'

instance = Kuapir::FilmSearchByFiltersResponse.new(
  total: 7,
  total_pages: 1,
  items: null
)
```

