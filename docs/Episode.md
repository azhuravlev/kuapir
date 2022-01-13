# Kuapir::Episode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **season_number** | **Integer** |  |  |
| **episode_number** | **Integer** |  |  |
| **name_ru** | **String** |  |  |
| **name_en** | **String** |  |  |
| **synopsis** | **String** |  |  |
| **release_date** | **String** |  |  |

## Example

```ruby
require 'kuapir'

instance = Kuapir::Episode.new(
  season_number: 1,
  episode_number: 1,
  name_ru: null,
  name_en: Chapter One: The Vanishing of Will Byers,
  synopsis: The Vanishing of Will Byers...,
  release_date: 2016-07-15
)
```

