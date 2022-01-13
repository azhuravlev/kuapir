# Kuapir::ReviewDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **review_id** | **Integer** |  |  |
| **review_type** | **String** |  |  |
| **review_data** | **String** |  |  |
| **user_positive_rating** | **Integer** |  |  |
| **user_negative_rating** | **Integer** |  |  |
| **review_autor** | **String** |  |  |
| **review_title** | **String** |  |  |
| **review_description** | **Float** |  |  |

## Example

```ruby
require 'kuapir'

instance = Kuapir::ReviewDetailsResponse.new(
  review_id: 2879700,
  review_type: NEUTRAL,
  review_data: 2020-02-16T10:43:00,
  user_positive_rating: 2,
  user_negative_rating: 0,
  review_autor: Дегустатор,
  review_title: Иллюзорность мира и духовное пробуждение,
  review_description: null
)
```

