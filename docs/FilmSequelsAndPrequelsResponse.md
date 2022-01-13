# Kuapir::FilmSequelsAndPrequelsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **film_id** | **Integer** |  |  |
| **name_ru** | **String** |  |  |
| **name_en** | **String** |  |  |
| **name_original** | **String** |  |  |
| **poster_url** | **String** |  |  |
| **poster_url_preview** | **String** |  |  |
| **relation_type** | **String** |  |  |

## Example

```ruby
require 'kuapir'

instance = Kuapir::FilmSequelsAndPrequelsResponse.new(
  film_id: 301,
  name_ru: Матрица,
  name_en: The Matrix,
  name_original: The Matrix,
  poster_url: https://kinopoiskapiunofficial.tech/images/posters/kp/301.jpg,
  poster_url_preview: https://kinopoiskapiunofficial.tech/images/posters/kp_small/301.jpg,
  relation_type: SEQUEL
)
```

