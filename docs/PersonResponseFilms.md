# Kuapir::PersonResponseFilms

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **film_id** | **Integer** |  | [optional] |
| **name_ru** | **String** |  | [optional] |
| **name_en** | **String** |  | [optional] |
| **rating** | **String** |  | [optional] |
| **general** | **Boolean** |  | [optional] |
| **description** | **String** |  | [optional] |
| **profession_key** | **String** |  | [optional] |

## Example

```ruby
require 'kuapir'

instance = Kuapir::PersonResponseFilms.new(
  film_id: 32169,
  name_ru: Солист,
  name_en: The Soloist,
  rating: 7.2 or 76% if film has not released yet,
  general: false,
  description: Steve Lopez,
  profession_key: ACTOR
)
```

