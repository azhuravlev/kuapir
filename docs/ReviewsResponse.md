# Kuapir::ReviewsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  |  |
| **film_id** | **Integer** |  |  |
| **review_all_count** | **Integer** |  |  |
| **review_all_positive_ratio** | **String** |  |  |
| **review_positive_count** | **Integer** |  |  |
| **review_negative_count** | **Integer** |  |  |
| **review_neutral_count** | **Integer** |  |  |
| **pages_count** | **Integer** |  |  |
| **reviews** | [**Array&lt;ReviewsResponseReviews&gt;**](ReviewsResponseReviews.md) |  |  |

## Example

```ruby
require 'kuapir'

instance = Kuapir::ReviewsResponse.new(
  page: 1,
  film_id: 301,
  review_all_count: 299,
  review_all_positive_ratio: 88.9%,
  review_positive_count: 247,
  review_negative_count: 24,
  review_neutral_count: 28,
  pages_count: 15,
  reviews: null
)
```

