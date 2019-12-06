# freemarket_sample_64c DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :items
- has_many :cards
- has_many :addresses
- has_many :profiles
- has_many :SNSes


## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|state|text|null: false|
|price|integer|null: false|
|detail|text|null: false|
|user_id|integer|null: false|
### Association
- has_many :categories
- has_many :brands
- has_many :images
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
|sex|string|null: false|
|age|integer|null: false|
|birthday|string|null: false|
|user_id|integer|null: false|
### Association
- belongs_to :user


## SNSesテーブル
|Column|Type|Options|
|------|----|-------|
|facebook|string|null: false|
|twitter|string|null: false|
|nuser_id|integer|null: false|
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



<!-- 実装しないけど一応書いておく（中間テーブル必要だから簡略してます） -->
<!-- 
## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|string|null: false|
### Association
- belongs_to :user
- belongs_to :item -->