# Kuapir::FilmsApi

All URIs are relative to *https://kinopoiskapiunofficial.tech*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_v21_films_id_sequels_and_prequels_get**](FilmsApi.md#api_v21_films_id_sequels_and_prequels_get) | **GET** /api/v2.1/films/{id}/sequels_and_prequels | получить сиквелы и приквелы для фильма по kinopoisk film id |
| [**api_v21_films_releases_get**](FilmsApi.md#api_v21_films_releases_get) | **GET** /api/v2.1/films/releases | получить список цифровых релизов |
| [**api_v21_films_search_by_keyword_get**](FilmsApi.md#api_v21_films_search_by_keyword_get) | **GET** /api/v2.1/films/search-by-keyword | получить список фильмов по ключевым словам |
| [**api_v22_films_filters_get**](FilmsApi.md#api_v22_films_filters_get) | **GET** /api/v2.2/films/filters | получить id стран и жанров для использования в /api/v2.2/films |
| [**api_v22_films_get**](FilmsApi.md#api_v22_films_get) | **GET** /api/v2.2/films | получить список фильмов по различным фильтрам |
| [**api_v22_films_id_box_office_get**](FilmsApi.md#api_v22_films_id_box_office_get) | **GET** /api/v2.2/films/{id}/box_office | получить данные о бюджете и сборах фильма по kinopoisk film id |
| [**api_v22_films_id_distributions_get**](FilmsApi.md#api_v22_films_id_distributions_get) | **GET** /api/v2.2/films/{id}/distributions | получить данные о прокате фильма по kinopoisk film id |
| [**api_v22_films_id_facts_get**](FilmsApi.md#api_v22_films_id_facts_get) | **GET** /api/v2.2/films/{id}/facts | получить данные о фактах и ошибках в фильме по kinopoisk film id |
| [**api_v22_films_id_get**](FilmsApi.md#api_v22_films_id_get) | **GET** /api/v2.2/films/{id} | получить данные о фильме по kinopoisk id |
| [**api_v22_films_id_images_get**](FilmsApi.md#api_v22_films_id_images_get) | **GET** /api/v2.2/films/{id}/images | получить изображения(кадры, постеры, фан-арты, обои и т.д.) связанные с фильмом по kinopoisk film id |
| [**api_v22_films_id_seasons_get**](FilmsApi.md#api_v22_films_id_seasons_get) | **GET** /api/v2.2/films/{id}/seasons | получить данные о сезонах для сериала по kinopoisk film id |
| [**api_v22_films_id_similars_get**](FilmsApi.md#api_v22_films_id_similars_get) | **GET** /api/v2.2/films/{id}/similars | получить список похожих фильмов по kinopoisk film id |
| [**api_v22_films_id_videos_get**](FilmsApi.md#api_v22_films_id_videos_get) | **GET** /api/v2.2/films/{id}/videos | получить трейлеры,тизеры,видео для фильма по kinopoisk film id |
| [**api_v22_films_premieres_get**](FilmsApi.md#api_v22_films_premieres_get) | **GET** /api/v2.2/films/premieres | получить список кинопремьер |
| [**api_v22_films_top_get**](FilmsApi.md#api_v22_films_top_get) | **GET** /api/v2.2/films/top | получить список фильмов из различных топов или коллекций. Например https://www.kinopoisk.ru/top/lists/58/ |


## api_v21_films_id_sequels_and_prequels_get

> <Array<FilmSequelsAndPrequelsResponse>> api_v21_films_id_sequels_and_prequels_get(id)

получить сиквелы и приквелы для фильма по kinopoisk film id

tbd

### Examples

```ruby
require 'time'
require 'kuapir'
# setup authorization
Kuapir.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = Kuapir::FilmsApi.new
id = 56 # Integer | kinopoisk film id

begin
  # получить сиквелы и приквелы для фильма по kinopoisk film id
  result = api_instance.api_v21_films_id_sequels_and_prequels_get(id)
  p result
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v21_films_id_sequels_and_prequels_get: #{e}"
end
```

#### Using the api_v21_films_id_sequels_and_prequels_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FilmSequelsAndPrequelsResponse>>, Integer, Hash)> api_v21_films_id_sequels_and_prequels_get_with_http_info(id)

```ruby
begin
  # получить сиквелы и приквелы для фильма по kinopoisk film id
  data, status_code, headers = api_instance.api_v21_films_id_sequels_and_prequels_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FilmSequelsAndPrequelsResponse>>
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v21_films_id_sequels_and_prequels_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | kinopoisk film id |  |

### Return type

[**Array&lt;FilmSequelsAndPrequelsResponse&gt;**](FilmSequelsAndPrequelsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v21_films_releases_get

> <DigitalReleaseResponse> api_v21_films_releases_get(year, month, opts)

получить список цифровых релизов

Данный эндпоинт возвращает список цифровых релизов. Например https://www.kinopoisk.ru/comingsoon/digital/

### Examples

```ruby
require 'time'
require 'kuapir'
# setup authorization
Kuapir.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = Kuapir::FilmsApi.new
year = 56 # Integer | год релиза
month = 'JANUARY' # String | месяц релиза
opts = {
  page: 56 # Integer | номер страницы
}

begin
  # получить список цифровых релизов
  result = api_instance.api_v21_films_releases_get(year, month, opts)
  p result
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v21_films_releases_get: #{e}"
end
```

#### Using the api_v21_films_releases_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DigitalReleaseResponse>, Integer, Hash)> api_v21_films_releases_get_with_http_info(year, month, opts)

```ruby
begin
  # получить список цифровых релизов
  data, status_code, headers = api_instance.api_v21_films_releases_get_with_http_info(year, month, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DigitalReleaseResponse>
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v21_films_releases_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **year** | **Integer** | год релиза |  |
| **month** | **String** | месяц релиза |  |
| **page** | **Integer** | номер страницы | [optional][default to 1] |

### Return type

[**DigitalReleaseResponse**](DigitalReleaseResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v21_films_search_by_keyword_get

> <FilmSearchResponse> api_v21_films_search_by_keyword_get(keyword, opts)

получить список фильмов по ключевым словам

Возвращает список фильмов с пагинацией. Каждая страница содержит не более чем 20 фильмов.

### Examples

```ruby
require 'time'
require 'kuapir'
# setup authorization
Kuapir.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = Kuapir::FilmsApi.new
keyword = 'keyword_example' # String | ключивые слова для поиска
opts = {
  page: 56 # Integer | номер страницы
}

begin
  # получить список фильмов по ключевым словам
  result = api_instance.api_v21_films_search_by_keyword_get(keyword, opts)
  p result
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v21_films_search_by_keyword_get: #{e}"
end
```

#### Using the api_v21_films_search_by_keyword_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FilmSearchResponse>, Integer, Hash)> api_v21_films_search_by_keyword_get_with_http_info(keyword, opts)

```ruby
begin
  # получить список фильмов по ключевым словам
  data, status_code, headers = api_instance.api_v21_films_search_by_keyword_get_with_http_info(keyword, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FilmSearchResponse>
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v21_films_search_by_keyword_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keyword** | **String** | ключивые слова для поиска |  |
| **page** | **Integer** | номер страницы | [optional][default to 1] |

### Return type

[**FilmSearchResponse**](FilmSearchResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v22_films_filters_get

> <FiltersResponse> api_v22_films_filters_get

получить id стран и жанров для использования в /api/v2.2/films

Возвращает список id стран и жанров, которые могут быть использованы в /api/v2.2/films

### Examples

```ruby
require 'time'
require 'kuapir'
# setup authorization
Kuapir.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = Kuapir::FilmsApi.new

begin
  # получить id стран и жанров для использования в /api/v2.2/films
  result = api_instance.api_v22_films_filters_get
  p result
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_filters_get: #{e}"
end
```

#### Using the api_v22_films_filters_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FiltersResponse>, Integer, Hash)> api_v22_films_filters_get_with_http_info

```ruby
begin
  # получить id стран и жанров для использования в /api/v2.2/films
  data, status_code, headers = api_instance.api_v22_films_filters_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FiltersResponse>
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_filters_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**FiltersResponse**](FiltersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v22_films_get

> <FilmSearchByFiltersResponse> api_v22_films_get(opts)

получить список фильмов по различным фильтрам

Возвращает список фильмов с пагинацией. Каждая страница содержит не более чем 20 фильмов. Данный эндпоинт не возращает более 400 фильмов. <i>Используй /api/v2.2/films/filters чтобы получить id стран и жанров.</i>

### Examples

```ruby
require 'time'
require 'kuapir'
# setup authorization
Kuapir.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = Kuapir::FilmsApi.new
opts = {
  countries: [37], # Array<Integer> | список id стран разделенные запятой. Например <i>countries=1,2,3</i>. На данный момент можно указать не более одной страны.
  genres: [37], # Array<Integer> | список id жанров разделенные запятой. Например <i>genres=1,2,3</i>. На данный момент можно указать не более одного жанра.
  order: 'RATING', # String | сортировка
  type: 'FILM', # String | тип фильма
  rating_from: 56, # Integer | минимальный рейтинг
  rating_to: 56, # Integer | максимальный рейтинг
  year_from: 56, # Integer | минимальный год
  year_to: 56, # Integer | максимальный год
  imdb_id: 'imdb_id_example', # String | imdb id
  keyword: 'keyword_example', # String | ключевое слово, которое встречается в названии фильма
  page: 56 # Integer | номер страницы
}

begin
  # получить список фильмов по различным фильтрам
  result = api_instance.api_v22_films_get(opts)
  p result
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_get: #{e}"
end
```

#### Using the api_v22_films_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FilmSearchByFiltersResponse>, Integer, Hash)> api_v22_films_get_with_http_info(opts)

```ruby
begin
  # получить список фильмов по различным фильтрам
  data, status_code, headers = api_instance.api_v22_films_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FilmSearchByFiltersResponse>
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **countries** | [**Array&lt;Integer&gt;**](Integer.md) | список id стран разделенные запятой. Например &lt;i&gt;countries&#x3D;1,2,3&lt;/i&gt;. На данный момент можно указать не более одной страны. | [optional] |
| **genres** | [**Array&lt;Integer&gt;**](Integer.md) | список id жанров разделенные запятой. Например &lt;i&gt;genres&#x3D;1,2,3&lt;/i&gt;. На данный момент можно указать не более одного жанра. | [optional] |
| **order** | **String** | сортировка | [optional][default to &#39;RATING&#39;] |
| **type** | **String** | тип фильма | [optional][default to &#39;ALL&#39;] |
| **rating_from** | **Integer** | минимальный рейтинг | [optional][default to 0] |
| **rating_to** | **Integer** | максимальный рейтинг | [optional][default to 10] |
| **year_from** | **Integer** | минимальный год | [optional][default to 1000] |
| **year_to** | **Integer** | максимальный год | [optional][default to 3000] |
| **imdb_id** | **String** | imdb id | [optional] |
| **keyword** | **String** | ключевое слово, которое встречается в названии фильма | [optional] |
| **page** | **Integer** | номер страницы | [optional][default to 1] |

### Return type

[**FilmSearchByFiltersResponse**](FilmSearchByFiltersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v22_films_id_box_office_get

> <BoxOfficeResponse> api_v22_films_id_box_office_get(id)

получить данные о бюджете и сборах фильма по kinopoisk film id

Данный эндпоинт возвращает данные о бюджете и сборах.

### Examples

```ruby
require 'time'
require 'kuapir'
# setup authorization
Kuapir.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = Kuapir::FilmsApi.new
id = 56 # Integer | kinopoisk film id

begin
  # получить данные о бюджете и сборах фильма по kinopoisk film id
  result = api_instance.api_v22_films_id_box_office_get(id)
  p result
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_id_box_office_get: #{e}"
end
```

#### Using the api_v22_films_id_box_office_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BoxOfficeResponse>, Integer, Hash)> api_v22_films_id_box_office_get_with_http_info(id)

```ruby
begin
  # получить данные о бюджете и сборах фильма по kinopoisk film id
  data, status_code, headers = api_instance.api_v22_films_id_box_office_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BoxOfficeResponse>
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_id_box_office_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | kinopoisk film id |  |

### Return type

[**BoxOfficeResponse**](BoxOfficeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v22_films_id_distributions_get

> <DistributionResponse> api_v22_films_id_distributions_get(id)

получить данные о прокате фильма по kinopoisk film id

Данный эндпоинт возвращает данные о прокате в разных странах.

### Examples

```ruby
require 'time'
require 'kuapir'
# setup authorization
Kuapir.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = Kuapir::FilmsApi.new
id = 56 # Integer | kinopoisk film id

begin
  # получить данные о прокате фильма по kinopoisk film id
  result = api_instance.api_v22_films_id_distributions_get(id)
  p result
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_id_distributions_get: #{e}"
end
```

#### Using the api_v22_films_id_distributions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DistributionResponse>, Integer, Hash)> api_v22_films_id_distributions_get_with_http_info(id)

```ruby
begin
  # получить данные о прокате фильма по kinopoisk film id
  data, status_code, headers = api_instance.api_v22_films_id_distributions_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DistributionResponse>
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_id_distributions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | kinopoisk film id |  |

### Return type

[**DistributionResponse**](DistributionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v22_films_id_facts_get

> <FactResponse> api_v22_films_id_facts_get(id)

получить данные о фактах и ошибках в фильме по kinopoisk film id

Данный эндпоинт возвращает список фактов и ошибок в фильме. <br> type - <b>FACT</b>, обозначает интересный факт о фильме. <br> type - <b>BLOOPER</b>, обозначает ошибку в фильме.

### Examples

```ruby
require 'time'
require 'kuapir'
# setup authorization
Kuapir.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = Kuapir::FilmsApi.new
id = 56 # Integer | kinopoisk film id

begin
  # получить данные о фактах и ошибках в фильме по kinopoisk film id
  result = api_instance.api_v22_films_id_facts_get(id)
  p result
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_id_facts_get: #{e}"
end
```

#### Using the api_v22_films_id_facts_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FactResponse>, Integer, Hash)> api_v22_films_id_facts_get_with_http_info(id)

```ruby
begin
  # получить данные о фактах и ошибках в фильме по kinopoisk film id
  data, status_code, headers = api_instance.api_v22_films_id_facts_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FactResponse>
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_id_facts_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | kinopoisk film id |  |

### Return type

[**FactResponse**](FactResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v22_films_id_get

> <Film> api_v22_films_id_get(id)

получить данные о фильме по kinopoisk id

Данный эндпоинт возвращает базовые данные о фильме. Поле <b>lastSync</b> показывает дату последнего обновления данных.

### Examples

```ruby
require 'time'
require 'kuapir'
# setup authorization
Kuapir.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = Kuapir::FilmsApi.new
id = 56 # Integer | kinopoisk film id

begin
  # получить данные о фильме по kinopoisk id
  result = api_instance.api_v22_films_id_get(id)
  p result
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_id_get: #{e}"
end
```

#### Using the api_v22_films_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Film>, Integer, Hash)> api_v22_films_id_get_with_http_info(id)

```ruby
begin
  # получить данные о фильме по kinopoisk id
  data, status_code, headers = api_instance.api_v22_films_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Film>
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | kinopoisk film id |  |

### Return type

[**Film**](Film.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v22_films_id_images_get

> <ImageResponse> api_v22_films_id_images_get(id, opts)

получить изображения(кадры, постеры, фан-арты, обои и т.д.) связанные с фильмом по kinopoisk film id

Данный эндпоинт возвращает изображения связанные с фильмом с пагинацией. Каждая страница содержит <b>не более чем 20 фильмов</b>.</br> Доступные изображения:</br> <ul> <li>STILL - кадры</li> <li>SHOOTING - изображения со съемок</li> <li>POSTER - постеры</li> <li>FAN_ART - фан-арты</li> <li>PROMO - промо</li> <li>CONCEPT - концепт-арты</li> <li>WALLPAPER - обои</li> <li>COVER - обложки</li> <li>SCREENSHOT - скриншоты</li> </ul> 

### Examples

```ruby
require 'time'
require 'kuapir'
# setup authorization
Kuapir.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = Kuapir::FilmsApi.new
id = 56 # Integer | kinopoisk film id
opts = {
  type: 'STILL', # String | тип изображения
  page: 56 # Integer | номер страницы
}

begin
  # получить изображения(кадры, постеры, фан-арты, обои и т.д.) связанные с фильмом по kinopoisk film id
  result = api_instance.api_v22_films_id_images_get(id, opts)
  p result
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_id_images_get: #{e}"
end
```

#### Using the api_v22_films_id_images_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImageResponse>, Integer, Hash)> api_v22_films_id_images_get_with_http_info(id, opts)

```ruby
begin
  # получить изображения(кадры, постеры, фан-арты, обои и т.д.) связанные с фильмом по kinopoisk film id
  data, status_code, headers = api_instance.api_v22_films_id_images_get_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImageResponse>
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_id_images_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | kinopoisk film id |  |
| **type** | **String** | тип изображения | [optional][default to &#39;STILL&#39;] |
| **page** | **Integer** | номер страницы | [optional][default to 1] |

### Return type

[**ImageResponse**](ImageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v22_films_id_seasons_get

> <SeasonResponse> api_v22_films_id_seasons_get(id)

получить данные о сезонах для сериала по kinopoisk film id

Данный эндпоинт возвращает данные о сезонах для сериала.

### Examples

```ruby
require 'time'
require 'kuapir'
# setup authorization
Kuapir.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = Kuapir::FilmsApi.new
id = 56 # Integer | kinopoisk film id

begin
  # получить данные о сезонах для сериала по kinopoisk film id
  result = api_instance.api_v22_films_id_seasons_get(id)
  p result
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_id_seasons_get: #{e}"
end
```

#### Using the api_v22_films_id_seasons_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SeasonResponse>, Integer, Hash)> api_v22_films_id_seasons_get_with_http_info(id)

```ruby
begin
  # получить данные о сезонах для сериала по kinopoisk film id
  data, status_code, headers = api_instance.api_v22_films_id_seasons_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SeasonResponse>
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_id_seasons_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | kinopoisk film id |  |

### Return type

[**SeasonResponse**](SeasonResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v22_films_id_similars_get

> <RelatedFilmResponse> api_v22_films_id_similars_get(id)

получить список похожих фильмов по kinopoisk film id

### Examples

```ruby
require 'time'
require 'kuapir'
# setup authorization
Kuapir.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = Kuapir::FilmsApi.new
id = 56 # Integer | kinopoisk film id

begin
  # получить список похожих фильмов по kinopoisk film id
  result = api_instance.api_v22_films_id_similars_get(id)
  p result
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_id_similars_get: #{e}"
end
```

#### Using the api_v22_films_id_similars_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RelatedFilmResponse>, Integer, Hash)> api_v22_films_id_similars_get_with_http_info(id)

```ruby
begin
  # получить список похожих фильмов по kinopoisk film id
  data, status_code, headers = api_instance.api_v22_films_id_similars_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RelatedFilmResponse>
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_id_similars_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | kinopoisk film id |  |

### Return type

[**RelatedFilmResponse**](RelatedFilmResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v22_films_id_videos_get

> <VideoResponse> api_v22_films_id_videos_get(id)

получить трейлеры,тизеры,видео для фильма по kinopoisk film id

Данный эндпоинт возвращает трейлеры,тизеры,видео для фильма по kinopoisk film id. В данный момент доступно два site:  <br/> <ul><li>YOUTUBE - в этом случае <b>url</b> это просто ссылка на youtube видео.</li><li>KINOPOISK_WIDGET - в этом случае <b>url</b> это ссылка на кинопоиск виджет. Например https://widgets.kinopoisk.ru/discovery/trailer/123573?onlyPlayer=1&autoplay=1&cover=1. Если вы хотите вставить этот виджет на вашу страницу, вы можете сделать следующее:  <br/><br/>&lt;script src=&quot;https://unpkg.com/@ungap/custom-elements-builtin&quot;&gt;&lt;/script&gt;<br/>&lt;script type=&quot;module&quot; src=&quot;https://unpkg.com/x-frame-bypass&quot;&gt;&lt;/script&gt;<br/>&lt;iframe is=&quot;x-frame-bypass&quot; src=&quot;https://widgets.kinopoisk.ru/discovery/trailer/167560?onlyPlayer=1&amp;autoplay=1&amp;cover=1&quot; width=&quot;500&quot; height=&quot;500&quot;&gt;&lt;/iframe&gt;</li></ul>

### Examples

```ruby
require 'time'
require 'kuapir'
# setup authorization
Kuapir.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = Kuapir::FilmsApi.new
id = 56 # Integer | kinopoisk film id

begin
  # получить трейлеры,тизеры,видео для фильма по kinopoisk film id
  result = api_instance.api_v22_films_id_videos_get(id)
  p result
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_id_videos_get: #{e}"
end
```

#### Using the api_v22_films_id_videos_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VideoResponse>, Integer, Hash)> api_v22_films_id_videos_get_with_http_info(id)

```ruby
begin
  # получить трейлеры,тизеры,видео для фильма по kinopoisk film id
  data, status_code, headers = api_instance.api_v22_films_id_videos_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VideoResponse>
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_id_videos_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | kinopoisk film id |  |

### Return type

[**VideoResponse**](VideoResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v22_films_premieres_get

> <PremiereResponse> api_v22_films_premieres_get(year, month)

получить список кинопремьер

Данный эндпоинт возвращает список кинопремьер. Например https://www.kinopoisk.ru/premiere/

### Examples

```ruby
require 'time'
require 'kuapir'
# setup authorization
Kuapir.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = Kuapir::FilmsApi.new
year = 56 # Integer | год релиза
month = 'JANUARY' # String | месяц релиза

begin
  # получить список кинопремьер
  result = api_instance.api_v22_films_premieres_get(year, month)
  p result
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_premieres_get: #{e}"
end
```

#### Using the api_v22_films_premieres_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremiereResponse>, Integer, Hash)> api_v22_films_premieres_get_with_http_info(year, month)

```ruby
begin
  # получить список кинопремьер
  data, status_code, headers = api_instance.api_v22_films_premieres_get_with_http_info(year, month)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremiereResponse>
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_premieres_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **year** | **Integer** | год релиза |  |
| **month** | **String** | месяц релиза |  |

### Return type

[**PremiereResponse**](PremiereResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v22_films_top_get

> <FilmTopResponse> api_v22_films_top_get(opts)

получить список фильмов из различных топов или коллекций. Например https://www.kinopoisk.ru/top/lists/58/

Возвращает список фильмов с пагинацией. Каждая страница содержит не более чем 20 фильмов.

### Examples

```ruby
require 'time'
require 'kuapir'
# setup authorization
Kuapir.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = Kuapir::FilmsApi.new
opts = {
  type: 'TOP_250_BEST_FILMS', # String | тип топа или коллекции
  page: 56 # Integer | номер страницы
}

begin
  # получить список фильмов из различных топов или коллекций. Например https://www.kinopoisk.ru/top/lists/58/
  result = api_instance.api_v22_films_top_get(opts)
  p result
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_top_get: #{e}"
end
```

#### Using the api_v22_films_top_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FilmTopResponse>, Integer, Hash)> api_v22_films_top_get_with_http_info(opts)

```ruby
begin
  # получить список фильмов из различных топов или коллекций. Например https://www.kinopoisk.ru/top/lists/58/
  data, status_code, headers = api_instance.api_v22_films_top_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FilmTopResponse>
rescue Kuapir::ApiError => e
  puts "Error when calling FilmsApi->api_v22_films_top_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | тип топа или коллекции | [optional][default to &#39;TOP_250_BEST_FILMS&#39;] |
| **page** | **Integer** | номер страницы | [optional][default to 1] |

### Return type

[**FilmTopResponse**](FilmTopResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

