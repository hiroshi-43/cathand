# テーブル設計

## users テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false |
| name               | string  | null: false |
| number             | integer | null: false |

### Association
- has_many :projects

## projects テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| customer_name      | string  | null: false |
| item_text          | string  | null: false |
| schedule           | date    | null: false |
| total_task_id      | integer | null: false |
| container_task_id  | integer | null: false |
| package_task_id    | integer | null: false |
| inner_box_task_id  | integer | null: false |
| outer_box_task_id  | integer | null: false |
| lead_time_id       | integer | null: false |
| user_id            | references | null: false, foreign_key: true |

### Association
- belongs_to :uesr

