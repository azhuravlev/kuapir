# Kuapir::RelatedFilmResponseItems

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **film_id** | **Integer** |  | [optional] |
| **name_ru** | **String** |  | [optional] |
| **name_en** | **String** |  | [optional] |
| **name_original** | **String** |  | [optional] |
| **poster_url** | **String** |  | [optional] |
| **poster_url_preview** | **String** |  | [optional] |
| **relation_type** | **String** |  | [optional] |

## Example

```ruby
require 'kuapir'

instance = Kuapir::RelatedFilmResponseItems.new(
  film_id: 301,
  name_ru: Матрица,
  name_en: The Matrix,
  name_original: The Matrix,
  poster_url: https://kinopoiskapiunofficial.tech/images/posters/kp/301.jpg,
  poster_url_preview: https://kinopoiskapiunofficial.tech/images/posters/kp_small/301.jpg,
  relation_type: SIMILAR
)
```

