# Kuapir::PersonsApi

All URIs are relative to *https://kinopoiskapiunofficial.tech*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_v1_persons_get**](PersonsApi.md#api_v1_persons_get) | **GET** /api/v1/persons | поиск актеров, режиссеров и т.д. по имени |


## api_v1_persons_get

> <PersonByNameResponse> api_v1_persons_get(name, opts)

поиск актеров, режиссеров и т.д. по имени

Одна страница может содержать до 50 элементов в items.

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

api_instance = Kuapir::PersonsApi.new
name = 'name_example' # String | имя человека
opts = {
  page: 56 # Integer | номер страницы
}

begin
  # поиск актеров, режиссеров и т.д. по имени
  result = api_instance.api_v1_persons_get(name, opts)
  p result
rescue Kuapir::ApiError => e
  puts "Error when calling PersonsApi->api_v1_persons_get: #{e}"
end
```

#### Using the api_v1_persons_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PersonByNameResponse>, Integer, Hash)> api_v1_persons_get_with_http_info(name, opts)

```ruby
begin
  # поиск актеров, режиссеров и т.д. по имени
  data, status_code, headers = api_instance.api_v1_persons_get_with_http_info(name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PersonByNameResponse>
rescue Kuapir::ApiError => e
  puts "Error when calling PersonsApi->api_v1_persons_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | имя человека |  |
| **page** | **Integer** | номер страницы | [optional][default to 1] |

### Return type

[**PersonByNameResponse**](PersonByNameResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

