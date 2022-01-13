# Kuapir::PersonResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **person_id** | **Integer** |  |  |
| **web_url** | **String** |  |  |
| **name_ru** | **String** |  |  |
| **name_en** | **String** |  |  |
| **sex** | **String** |  |  |
| **poster_url** | **String** |  |  |
| **growth** | **String** |  |  |
| **birthday** | **String** |  |  |
| **death** | **String** |  |  |
| **age** | **Integer** |  |  |
| **birthplace** | **String** |  |  |
| **deathplace** | **String** |  |  |
| **has_awards** | **Integer** |  |  |
| **profession** | **String** |  |  |
| **facts** | **Array&lt;String&gt;** |  |  |
| **spouses** | [**Array&lt;PersonResponseSpouses&gt;**](PersonResponseSpouses.md) |  |  |
| **films** | [**Array&lt;PersonResponseFilms&gt;**](PersonResponseFilms.md) |  |  |

## Example

```ruby
require 'kuapir'

instance = Kuapir::PersonResponse.new(
  person_id: 66539,
  web_url: 10096,
  name_ru: Винс Гиллиган,
  name_en: Vince Gilligan,
  sex: MALE,
  poster_url: https://kinopoiskapiunofficial.tech/images/actor_posters/kp/10096.jpg,
  growth: 174,
  birthday: 1965-04-04,
  death: 2008-01-22,
  age: 55,
  birthplace: Манхэттэн, Нью-Йорк, США,
  deathplace: Манхэттэн, Нью-Йорк, США,
  has_awards: 1,
  profession: Актер, Продюсер, Сценарист,
  facts: null,
  spouses: null,
  films: null
)
```

