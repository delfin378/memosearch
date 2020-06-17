# README


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|

### Association 
- has_many : memos
- has_many : groups_users
- has_many : groups, through: :users_groups


## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|groups_id|integer|null: false, foreign_key: true|
|users_id|integer|null: false, foreign_key: true|

### Association 
- belongs_to : group
- belongs_to : user

## memosテーブル
|Column|Type|Options|
|------|----|-------|
|image|text|null: false|
|text|text|null: false|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to : user
- belongs_to : group