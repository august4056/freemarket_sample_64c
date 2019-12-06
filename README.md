# freemarket_sample_64c DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
|password_confirmation|string|null: false|
### Association
- has_many :items, dependent: :destroy
- has_many :cards, dependent: :destroy
- has_many :addresses, dependent: :destroy
- has_many :profiles, dependent: :destroy
- has_many :SNSes, dependent: :destroy
- has_many :likes, dependent: :destroy


## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|state|text|null: false|
|price|integer|null: false|
|detail|text|null: false|
|address|string|null: false|
|category_id|integer|null: false|
|brand_id|integer|null: false|
|user_id|integer|null: false|
### Association
- has_many :images, dependent: :destroy
- has_many :likes, dependent: :destroy
- belongs_to :category
- belongs_to :brand
- belongs_to :user



## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|number|integer|null: false|
|expire|integer|null: false|
|name|string|null: false|
|user_id|integer|null: false|
### Association
- belongs_to :user


## addressesテーブル
|Column|Type|Options|
|------|----|-------|
|prefecture|string|null: false|
|city|string|null: false|
|block|string|null: false|
|user_id|integer|null: false|
### Association
- belongs_to :user


## profilesテーブル
|Column|Type|Options|
|------|----|-------|
|kanji__first|string|null: false|
|kanji_last|string|null: false|
|kana_first|string|null: false|
|kana_last|string|null: false|
|sex|string|null: false|
|age|integer|null: false|
|birthday|integer|null: false|
|user_id|integer|null: false|
### Association
- belongs_to :user


## SNSesテーブル
|Column|Type|Options|
|------|----|-------|
|facebook|string|null: false|
|twitter|string|null: false|
|user_id|integer|null: false|
### Association
- belongs_to :user


## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|genre|string|null: false|
### Association
- has_many :items


## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|genre|string|null: false|
### Association
- has_many :items


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|item_id|integer|null: false|
### Association
- belongs_to :item

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|string|null: false|
|user_id|string|null: false|
### Association
- belongs_to :item
- belongs_to :user


<!-- 実装しなくていいけど一応書いておく（中間テーブル必要だから簡略してます） -->
<!-- 
## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|string|null: false|
### Association
- belongs_to :user
- belongs_to :item -->