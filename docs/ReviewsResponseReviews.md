# Kuapir::ReviewsResponseReviews

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **review_id** | **Integer** |  | [optional] |
| **review_type** | **String** |  | [optional] |
| **review_data** | **String** |  | [optional] |
| **user_positive_rating** | **String** |  | [optional] |
| **user_negative_rating** | **String** |  | [optional] |
| **review_autor** | **String** |  | [optional] |
| **review_title** | **String** |  | [optional] |
| **review_description** | **Float** |  | [optional] |

## Example

```ruby
require 'kuapir'

instance = Kuapir::ReviewsResponseReviews.new(
  review_id: 2879700,
  review_type: NEUTRAL,
  review_data: 2020-02-16T10:43:00,
  user_positive_rating: null,
  user_negative_rating: null,
  review_autor: Дегустатор,
  review_title: Иллюзорность мира и духовное пробуждение,
  review_description: null
)
```

