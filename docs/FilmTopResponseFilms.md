# Kuapir::FilmTopResponseFilms

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **film_id** | **Integer** |  | [optional] |
| **name_ru** | **String** |  | [optional] |
| **name_en** | **String** |  | [optional] |
| **year** | **String** |  | [optional] |
| **film_length** | **String** |  | [optional] |
| **countries** | [**Array&lt;Country&gt;**](Country.md) |  | [optional] |
| **genres** | [**Array&lt;Genre&gt;**](Genre.md) |  | [optional] |
| **rating** | **Float** |  | [optional] |
| **rating_vote_count** | **Integer** |  | [optional] |
| **poster_url** | **String** |  | [optional] |
| **poster_url_preview** | **String** |  | [optional] |

## Example

```ruby
require 'kuapir'

instance = Kuapir::FilmTopResponseFilms.new(
  film_id: 263531,
  name_ru: Мстители,
  name_en: The Avengers,
  year: 2012,
  film_length: 137,
  countries: null,
  genres: null,
  rating: 7.9,
  rating_vote_count: 284245,
  poster_url: http://kinopoiskapiunofficial.tech/images/posters/kp/263531.jpg,
  poster_url_preview: https://kinopoiskapiunofficial.tech/images/posters/kp_small/301.jpg
)
```

