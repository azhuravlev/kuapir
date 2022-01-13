# Kuapir::PersonResponseSpouses

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **person_id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **divorced** | **Boolean** |  | [optional] |
| **divorced_reason** | **String** |  | [optional] |
| **sex** | **String** |  | [optional] |
| **children** | **Integer** |  | [optional] |
| **web_url** | **String** |  | [optional] |
| **relation** | **String** |  | [optional] |

## Example

```ruby
require 'kuapir'

instance = Kuapir::PersonResponseSpouses.new(
  person_id: 32169,
  name: Сьюзан Дауни,
  divorced: false,
  divorced_reason: ,
  sex: MALE,
  children: 2,
  web_url: https://www.kinopoisk.ru/name/32169/,
  relation: супруга
)
```

