# freemarket_sample_64c DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
|password_confirmation|string|null: false|
### Association
- has_many :items
- has_many :cards
- has_many :addresses
- has_many :profiles
- has_many :SNSes
- has_many :likes


## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|state|text|null: false|
|price|integer|null: false|
|detail|text|null: false|
|address|string|null: false|
|user_id|integer|null: false|
### Association
- has_many :categories
- has_many :brands
- has_many :images
- belongs_to :user
- belongs_to :like



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
|item_id|integer|null: false|
### Association
- belongs_to :item


## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|genre|string|null: false|
|item_id|integer|null: false|
### Association
- belongs_to :item


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|main|string|null: false|
|sub1|string|null: false|
|sub2|string|null: false|
|sub3|string|null: false|
|sub4|string|null: false|
|item_id|integer|null: false|
### Association
- belongs_to :item

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|like|string|null: false|
|user_id|string|null: false|
|item_id|integer|null: false|
### Association
- has_many :items
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