# テーブル設計

## users テーブル

| Column            | Type   | Options                   |
| ----------------- | ------ | ------------------------- |
| name              | string | null: false               |
| email             | string | null: false, unique: true |
| password          | string | null: false               |

### Association

- has_many :diaries

## diaries テーブル

| Column            | Type     | Options     |
| ----------------- | -------- | ----------- |
| title             | string   |             |
| text              | text     | null: false |
| datetime          | datetime |             |

### Association

- has_many :diary_tag_relations
- has_many :tags, through: :diary_tag_relations
- belongs_to :user

## tags テーブル

| Column            | Type     | Options          |
| ----------------- | -------- | ---------------- |
| name              | string   | uniqueness: true |

### Association

- has_many :diary_tag_relations
- has_many :diaries, :through: :diary_tag_relations

## diary_tag_relation テーブル

| Column   | Type         | Options           |
| -------- | ------------ | ----------------- |
| diary    | references   | foreign_key: true |
| tag      | references   | foreign_key: true |