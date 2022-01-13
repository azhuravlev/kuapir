# Kuapir::PremiereResponseItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kinopoisk_id** | **Integer** |  |  |
| **name_ru** | **String** |  |  |
| **name_en** | **String** |  |  |
| **year** | **Integer** |  |  |
| **poster_url** | **String** |  |  |
| **poster_url_preview** | **String** |  |  |
| **countries** | [**Array&lt;Country&gt;**](Country.md) |  |  |
| **genres** | [**Array&lt;Genre&gt;**](Genre.md) |  |  |
| **duration** | **Integer** |  |  |
| **premiere_ru** | **String** |  |  |

## Example

```ruby
require 'kuapir'

instance = Kuapir::PremiereResponseItem.new(
  kinopoisk_id: 301,
  name_ru: Дитя погоды,
  name_en: Tenki no ko,
  year: 2019,
  poster_url: http://kinopoiskapiunofficial.tech/images/posters/kp/1219417.jpg,
  poster_url_preview: https://kinopoiskapiunofficial.tech/images/posters/kp_small/301.jpg,
  countries: null,
  genres: null,
  duration: 112,
  premiere_ru: 2020-06-01
)
```

