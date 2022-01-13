# Kuapir::DigitalReleaseItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **film_id** | **Integer** |  |  |
| **name_ru** | **String** |  |  |
| **name_en** | **String** |  |  |
| **year** | **Integer** |  |  |
| **poster_url** | **String** |  |  |
| **poster_url_preview** | **String** |  |  |
| **countries** | [**Array&lt;Country&gt;**](Country.md) |  |  |
| **genres** | [**Array&lt;Genre&gt;**](Genre.md) |  |  |
| **rating** | **Float** |  |  |
| **rating_vote_count** | **Integer** |  |  |
| **expectations_rating** | **Float** |  |  |
| **expectations_rating_vote_count** | **Integer** |  |  |
| **duration** | **Integer** |  |  |
| **release_date** | **String** |  |  |

## Example

```ruby
require 'kuapir'

instance = Kuapir::DigitalReleaseItem.new(
  film_id: 301,
  name_ru: Дитя погоды,
  name_en: Tenki no ko,
  year: 2019,
  poster_url: http://kinopoiskapiunofficial.tech/images/posters/kp/1219417.jpg,
  poster_url_preview: https://kinopoiskapiunofficial.tech/images/posters/kp_small/301.jpg,
  countries: null,
  genres: null,
  rating: 7.962,
  rating_vote_count: 14502,
  expectations_rating: 99.13,
  expectations_rating_vote_count: 1123,
  duration: 112,
  release_date: 2020-06-01
)
```

