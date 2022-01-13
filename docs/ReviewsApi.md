# Kuapir::ReviewsApi

All URIs are relative to *https://kinopoiskapiunofficial.tech*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_v1_reviews_details_get**](ReviewsApi.md#api_v1_reviews_details_get) | **GET** /api/v1/reviews/details | получить полную рецензию по kinopoisk review id |
| [**api_v1_reviews_get**](ReviewsApi.md#api_v1_reviews_get) | **GET** /api/v1/reviews | получить рецензии зрителей |


## api_v1_reviews_details_get

> <ReviewDetailsResponse> api_v1_reviews_details_get(review_id)

получить полную рецензию по kinopoisk review id

Возвращает полную информацию о рецензии.

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

api_instance = Kuapir::ReviewsApi.new
review_id = 56 # Integer | kinopoisk review id

begin
  # получить полную рецензию по kinopoisk review id
  result = api_instance.api_v1_reviews_details_get(review_id)
  p result
rescue Kuapir::ApiError => e
  puts "Error when calling ReviewsApi->api_v1_reviews_details_get: #{e}"
end
```

#### Using the api_v1_reviews_details_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReviewDetailsResponse>, Integer, Hash)> api_v1_reviews_details_get_with_http_info(review_id)

```ruby
begin
  # получить полную рецензию по kinopoisk review id
  data, status_code, headers = api_instance.api_v1_reviews_details_get_with_http_info(review_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReviewDetailsResponse>
rescue Kuapir::ApiError => e
  puts "Error when calling ReviewsApi->api_v1_reviews_details_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **review_id** | **Integer** | kinopoisk review id |  |

### Return type

[**ReviewDetailsResponse**](ReviewDetailsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v1_reviews_get

> <ReviewsResponse> api_v1_reviews_get(film_id, opts)

получить рецензии зрителей

Возвращает список рецензий с пагинацией. Каждая страница содержит не более чем 20 рецензий. Поле <b>description</b> содержит не полный текст рецензии. Полный текст может быть получен из /api/v1/reviews/details

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

api_instance = Kuapir::ReviewsApi.new
film_id = 56 # Integer | kinopoisk film id
opts = {
  page: 56 # Integer | номер страницы
}

begin
  # получить рецензии зрителей
  result = api_instance.api_v1_reviews_get(film_id, opts)
  p result
rescue Kuapir::ApiError => e
  puts "Error when calling ReviewsApi->api_v1_reviews_get: #{e}"
end
```

#### Using the api_v1_reviews_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReviewsResponse>, Integer, Hash)> api_v1_reviews_get_with_http_info(film_id, opts)

```ruby
begin
  # получить рецензии зрителей
  data, status_code, headers = api_instance.api_v1_reviews_get_with_http_info(film_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReviewsResponse>
rescue Kuapir::ApiError => e
  puts "Error when calling ReviewsApi->api_v1_reviews_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **film_id** | **Integer** | kinopoisk film id |  |
| **page** | **Integer** | номер страницы | [optional][default to 1] |

### Return type

[**ReviewsResponse**](ReviewsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

