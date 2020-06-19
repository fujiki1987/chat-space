* Database creation
## usersテーブル
|Column       |Type  |Options                  |
|-------------|------|-------------------------|
|name         |string|null: false              |
|email        |string|null: false, unique: true|
|password     |string|null: false              |
|join-group_id|string|null: false              |


## chat-groupテーブル
|Column    |Type   |Options    |
|----------|-------|-----------|
|name      |string |null: false|
|user_id   |integer|null: false|
|message_id|integer|           |

## messageテーブル
|Column       |Type   |Options    |
|-------------|-------|-----------|
|body         |text   |null: false|
|image        |string |null: false|
|created_at   |integer|           |
|user_id      |integer|           |
|chat-group_id|integer|           |

## join-groupテーブル
|Column       |Type   |Options    |
|-------------|-------|-----------|
|user_id      |integer|           |
|chat-group_id|integer|           |