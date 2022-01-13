# Kuapir::FilmSearchByFiltersResponseItems

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kinopoisk_id** | **Integer** |  | [optional] |
| **imdb_id** | **String** |  | [optional] |
| **name_ru** | **String** |  | [optional] |
| **name_en** | **String** |  | [optional] |
| **name_original** | **String** |  | [optional] |
| **countries** | [**Array&lt;Country&gt;**](Country.md) |  | [optional] |
| **genres** | [**Array&lt;Genre&gt;**](Genre.md) |  | [optional] |
| **rating_kinopoisk** | **Float** |  | [optional] |
| **rating_imdb** | **Float** |  | [optional] |
| **year** | **Float** |  | [optional] |
| **type** | **String** |  | [optional] |
| **poster_url** | **String** |  | [optional] |
| **poster_url_preview** | **String** |  | [optional] |

## Example

```ruby
require 'kuapir'

instance = Kuapir::FilmSearchByFiltersResponseItems.new(
  kinopoisk_id: 263531,
  imdb_id: tt0050561,
  name_ru: Мстители,
  name_en: The Avengers,
  name_original: The Avengers,
  countries: null,
  genres: null,
  rating_kinopoisk: 7.9,
  rating_imdb: 7.9,
  year: 2012,
  type: FILM,
  poster_url: http://kinopoiskapiunofficial.tech/images/posters/kp/263531.jpg,
  poster_url_preview: https://kinopoiskapiunofficial.tech/images/posters/kp_small/301.jpg
)
```

