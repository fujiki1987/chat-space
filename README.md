* Database creation
## usersテーブル
|Column       |Type  |Options                  |
|-------------|------|-------------------------|
|name         |string|null: false              |
|email        |string|null: false, unique: true|
|password     |string|null: false              |
### Association
- has_many :chat_groups, through: :join_groups
- has_many :join_groups
- has_many :messages

## chat_groupsテーブル
|Column    |Type   |Options    |
|----------|-------|-----------|
|name      |string |null: false|
### Association
- has_many :users, through: :join_groups
- has_many :join_groups
- has_many :messages

## messagesテーブル
|Column    |Type      |Options    |
|----------|----------|-----------|
|body      |text      |           |
|image     |string    |           |
|created_at|integer   |           |
|user      |references|foreign_key:true, null:false|
|chat_group|references|foreign_key:true, null:false|
### Association
- belongs_to :user
- belongs_to :chat_group

## join_groupsテーブル
|Column    |Type      |Options    |
|----------|----------|-----------|
|user      |references|foreign_key:true, null:false|
|chat_group|references|foreign_key:true, null:false|
### Association
- belongs_to :user
- belongs_to :chat_group