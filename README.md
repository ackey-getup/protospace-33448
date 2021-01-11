# テーブル設計

## usersテーブル

|   Column   |  Type   |    Options   |
| ---------- | ------- | ------------ |
| name       | string  | null : false |
| email      | string  | null : false |
| password   | string  | null : false |
| profile    | text    | null : false |
| occupation | text    | null : false |
| position   | text    | null : false |

### Association

- has_many : comments
- has_many : protospace, through: comments

## commentsテーブル

|  Column   |    Type    |             Options               |
| --------  | ---------- | --------------------------------- |
| text      | text       | null : false                      |
| user      | references | null : false, foreign_keys : true |
| prototype | references | null : false, foreign_keys : true |

### Association

- belongs_to : users
- belongs_to : protospace

## protospaceテーブル

|   Column   |    Type    |             Options               |
| ---------- | ---------- | --------------------------------- |
| title      | string     | null : false                      |
| catch_copy | text       | null : false                      |
| concept    | text       | null : false                      |
| user       | references | null : false, foreign_keys : true |
| image      | ActiveStorage, null : false

### Association

- has_many : comments
- belongs_to : user, through: comments