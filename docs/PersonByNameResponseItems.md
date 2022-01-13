# Kuapir::PersonByNameResponseItems

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kinopoisk_id** | **Integer** |  | [optional] |
| **web_url** | **String** |  | [optional] |
| **name_ru** | **String** |  | [optional] |
| **name_en** | **String** |  | [optional] |
| **sex** | **String** |  | [optional] |
| **poster_url** | **String** |  | [optional] |

## Example

```ruby
require 'kuapir'

instance = Kuapir::PersonByNameResponseItems.new(
  kinopoisk_id: 66539,
  web_url: 10096,
  name_ru: Винс Гиллиган,
  name_en: Vince Gilligan,
  sex: MALE,
  poster_url: https://kinopoiskapiunofficial.tech/images/actor_posters/kp/10096.jpg
)
```

