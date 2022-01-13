# Kuapir::FilmSearchResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keyword** | **String** |  |  |
| **pages_count** | **Integer** |  |  |
| **search_films_count_result** | **Integer** |  |  |
| **films** | [**Array&lt;FilmSearchResponseFilms&gt;**](FilmSearchResponseFilms.md) |  |  |

## Example

```ruby
require 'kuapir'

instance = Kuapir::FilmSearchResponse.new(
  keyword: мстители,
  pages_count: 7,
  search_films_count_result: 134,
  films: null
)
```

