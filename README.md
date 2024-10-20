# アプリケーション名：CAT'S HAND

# URL
[キャッツハンド](https://cathand.onrender.com)

# アプリケーションの概要
# 内容  
プロジェクト案件向けのスケジュール管理アプリ  
# ターゲット  
ODM・OEM 受託型企業で働く全体のスケジュールコントロールをしている人  
# ニーズ・課題  
スケジュール変更があった際、スケジュールを把握・管理の煩雑化を解消  
# 目的  
複数の案件 ( 約 20 ~ 30) を1人でさばく為、スケジュール変更業務の負担を減らす。  
顧客都合でスケジュールの変更が多い環境及び昨今の人手不足の為、個に負担が増えていいる。  
スケジュール変更の自動化を推進することでスケジュール変更業務量を減らし、  
今まで時間がなくてできなかった顧客に寄り添った提案業務の時間を創出していく。

# トップページのイメージ(仮)
[![トップページ](https://i.gyazo.com/17aa21ca78e5d5b00ae1670150a5a202.png)](https://gyazo.com/17aa21ca78e5d5b00ae1670150a5a202)
# スケジュール作成・編集・詳細ページのイメージ(仮)
[![スケジュール作成・編集・詳細ページ](https://i.gyazo.com/802ab72d11798f2bcbd7ba9246a73a15.png)](https://gyazo.com/802ab72d11798f2bcbd7ba9246a73a15)
# スケジュール管理機能のイメージ(仮)
[![スケジュール管理機能](https://i.gyazo.com/e0e37056b17dea4d37b130449003bb6e.png)](https://gyazo.com/e0e37056b17dea4d37b130449003bb6e)
# 画面遷移図(仮)
[![画面遷移図](https://i.gyazo.com/7d7f0ca856d0b9acca90cb78e465ed01.png)](https://gyazo.com/7d7f0ca856d0b9acca90cb78e465ed01)
# ER図(仮)
[![ER図](https://i.gyazo.com/5b0f543e210d80dfe2c087cac3f2bb5c.png)](https://gyazo.com/5b0f543e210d80dfe2c087cac3f2bb5c)

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
| capacity           | string  | null: false |
| schedule           | date    | null: false |
| total_task_id      | integer | null: false |
| container_task_id  | integer | null: false |
| package_task_id    | integer | null: false |
| inner_box_task_id  | integer | null: false |
| outer_box_task_id  | integer | null: false |
| lead_time_id       | integer | null: false |
| user_id            | references | null: false, foreign_key: true |

### Association
- belongs_to :user

