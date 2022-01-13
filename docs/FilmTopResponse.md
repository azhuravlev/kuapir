# Kuapir::FilmTopResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pages_count** | **Integer** |  |  |
| **films** | [**Array&lt;FilmTopResponseFilms&gt;**](FilmTopResponseFilms.md) |  |  |

## Example

```ruby
require 'kuapir'

instance = Kuapir::FilmTopResponse.new(
  pages_count: 7,
  films: null
)
```

