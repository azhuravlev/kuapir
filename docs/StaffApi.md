# Kuapir::StaffApi

All URIs are relative to *https://kinopoiskapiunofficial.tech*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_v1_staff_get**](StaffApi.md#api_v1_staff_get) | **GET** /api/v1/staff | получить данные об актерах, режисерах и т.д. по kinopoisk film id |
| [**api_v1_staff_id_get**](StaffApi.md#api_v1_staff_id_get) | **GET** /api/v1/staff/{id} | получить данные о конкретном человеке по kinopoisk person id |


## api_v1_staff_get

> <Array<StaffResponse>> api_v1_staff_get(film_id)

получить данные об актерах, режисерах и т.д. по kinopoisk film id

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

api_instance = Kuapir::StaffApi.new
film_id = 56 # Integer | kinopoisk film id

begin
  # получить данные об актерах, режисерах и т.д. по kinopoisk film id
  result = api_instance.api_v1_staff_get(film_id)
  p result
rescue Kuapir::ApiError => e
  puts "Error when calling StaffApi->api_v1_staff_get: #{e}"
end
```

#### Using the api_v1_staff_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<StaffResponse>>, Integer, Hash)> api_v1_staff_get_with_http_info(film_id)

```ruby
begin
  # получить данные об актерах, режисерах и т.д. по kinopoisk film id
  data, status_code, headers = api_instance.api_v1_staff_get_with_http_info(film_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<StaffResponse>>
rescue Kuapir::ApiError => e
  puts "Error when calling StaffApi->api_v1_staff_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **film_id** | **Integer** | kinopoisk film id |  |

### Return type

[**Array&lt;StaffResponse&gt;**](StaffResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v1_staff_id_get

> <PersonResponse> api_v1_staff_id_get(id)

получить данные о конкретном человеке по kinopoisk person id

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

api_instance = Kuapir::StaffApi.new
id = 56 # Integer | kinopoisk person id

begin
  # получить данные о конкретном человеке по kinopoisk person id
  result = api_instance.api_v1_staff_id_get(id)
  p result
rescue Kuapir::ApiError => e
  puts "Error when calling StaffApi->api_v1_staff_id_get: #{e}"
end
```

#### Using the api_v1_staff_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PersonResponse>, Integer, Hash)> api_v1_staff_id_get_with_http_info(id)

```ruby
begin
  # получить данные о конкретном человеке по kinopoisk person id
  data, status_code, headers = api_instance.api_v1_staff_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PersonResponse>
rescue Kuapir::ApiError => e
  puts "Error when calling StaffApi->api_v1_staff_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | kinopoisk person id |  |

### Return type

[**PersonResponse**](PersonResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

