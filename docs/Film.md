# Kuapir::Film

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kinopoisk_id** | **Integer** |  |  |
| **imdb_id** | **String** |  |  |
| **name_ru** | **String** |  |  |
| **name_en** | **String** |  |  |
| **name_original** | **String** |  |  |
| **poster_url** | **String** |  |  |
| **poster_url_preview** | **String** |  |  |
| **reviews_count** | **Integer** |  |  |
| **rating_good_review** | **Float** |  |  |
| **rating_good_review_vote_count** | **Integer** |  |  |
| **rating_kinopoisk** | **Float** |  |  |
| **rating_kinopoisk_vote_count** | **Integer** |  |  |
| **rating_imdb** | **Float** |  |  |
| **rating_imdb_vote_count** | **Integer** |  |  |
| **rating_film_critics** | **Float** |  |  |
| **rating_film_critics_vote_count** | **Integer** |  |  |
| **rating_await** | **Float** |  |  |
| **rating_await_count** | **Integer** |  |  |
| **rating_rf_critics** | **Float** |  |  |
| **rating_rf_critics_vote_count** | **Integer** |  |  |
| **web_url** | **String** |  |  |
| **year** | **Integer** |  |  |
| **film_length** | **Integer** |  |  |
| **slogan** | **String** |  |  |
| **description** | **String** |  |  |
| **short_description** | **String** |  |  |
| **editor_annotation** | **String** |  |  |
| **is_tickets_available** | **Boolean** |  |  |
| **production_status** | **String** |  |  |
| **type** | **String** |  |  |
| **rating_mpaa** | **String** |  |  |
| **rating_age_limits** | **String** |  |  |
| **has_imax** | **Boolean** |  |  |
| **has3_d** | **Boolean** |  |  |
| **last_sync** | **String** |  |  |
| **countries** | [**Array&lt;Country&gt;**](Country.md) |  |  |
| **genres** | [**Array&lt;Genre&gt;**](Genre.md) |  |  |
| **start_year** | **Integer** |  |  |
| **end_year** | **Integer** |  |  |
| **serial** | **Boolean** |  | [optional] |
| **short_film** | **Boolean** |  | [optional] |
| **completed** | **Boolean** |  | [optional] |

## Example

```ruby
require 'kuapir'

instance = Kuapir::Film.new(
  kinopoisk_id: 301,
  imdb_id: tt0133093,
  name_ru: Матрица,
  name_en: The Matrix,
  name_original: The Matrix,
  poster_url: https://kinopoiskapiunofficial.tech/images/posters/kp/301.jpg,
  poster_url_preview: https://kinopoiskapiunofficial.tech/images/posters/kp_small/301.jpg,
  reviews_count: 293,
  rating_good_review: 88.9,
  rating_good_review_vote_count: 257,
  rating_kinopoisk: 8.5,
  rating_kinopoisk_vote_count: 524108,
  rating_imdb: 8.7,
  rating_imdb_vote_count: 1729087,
  rating_film_critics: 7.8,
  rating_film_critics_vote_count: 155,
  rating_await: 7.8,
  rating_await_count: 2,
  rating_rf_critics: 7.8,
  rating_rf_critics_vote_count: 31,
  web_url: https://www.kinopoisk.ru/film/301/,
  year: 1999,
  film_length: 136,
  slogan: Добро пожаловать в реальный мир,
  description: Жизнь Томаса Андерсона разделена на две части:,
  short_description: Хакер Нео узнает, что его мир — виртуальный. Выдающийся экшен, доказавший, что зрелищное кино может быть умным,
  editor_annotation: Фильм доступен только на языке оригинала с русскими субтитрами,
  is_tickets_available: false,
  production_status: POST_PRODUCTION,
  type: FILM,
  rating_mpaa: r,
  rating_age_limits: age16,
  has_imax: false,
  has3_d: false,
  last_sync: 2021-07-29T20:07:49.109817,
  countries: null,
  genres: null,
  start_year: 1996,
  end_year: 1996,
  serial: false,
  short_film: false,
  completed: false
)
```

