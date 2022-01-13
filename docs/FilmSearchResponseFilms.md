# Kuapir::FilmSearchResponseFilms

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **film_id** | **Integer** |  | [optional] |
| **name_ru** | **String** |  | [optional] |
| **name_en** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **year** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **film_length** | **String** |  | [optional] |
| **countries** | [**Array&lt;Country&gt;**](Country.md) |  | [optional] |
| **genres** | [**Array&lt;Genre&gt;**](Genre.md) |  | [optional] |
| **rating** | **String** |  | [optional] |
| **rating_vote_count** | **Integer** |  | [optional] |
| **poster_url** | **String** |  | [optional] |
| **poster_url_preview** | **String** |  | [optional] |

## Example

```ruby
require 'kuapir'

instance = Kuapir::FilmSearchResponseFilms.new(
  film_id: 263531,
  name_ru: Мстители,
  name_en: The Avengers,
  type: FILM,
  year: 2012,
  description: США, Джосс Уидон(фантастика),
  film_length: 2:17,
  countries: null,
  genres: null,
  rating: NOTE!!! 7.9 for released film or 99% if film have not released yet,
  rating_vote_count: 284245,
  poster_url: http://kinopoiskapiunofficial.tech/images/posters/kp/263531.jpg,
  poster_url_preview: https://kinopoiskapiunofficial.tech/images/posters/kp_small/301.jpg
)
```

