# Kuapir::StaffResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **staff_id** | **Integer** |  |  |
| **name_ru** | **String** |  |  |
| **name_en** | **String** |  |  |
| **description** | **String** |  |  |
| **poster_url** | **String** |  |  |
| **profession_text** | **String** |  |  |
| **profession_key** | **String** |  |  |

## Example

```ruby
require 'kuapir'

instance = Kuapir::StaffResponse.new(
  staff_id: 66539,
  name_ru: Винс Гиллиган,
  name_en: Vince Gilligan,
  description: Neo,
  poster_url: https://st.kp.yandex.net/images/actor/66539.jpg,
  profession_text: Режиссеры,
  profession_key: DIRECTOR
)
```

