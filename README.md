2019年4月13日開催の「[TechTrain出張メンタリング〜名古屋編〜](https://connpass.com/event/124681/)」で使うRails5のWebアプリケーション。

## サービス概要

1. 4択の質問を回答していく
2. 回答結果から「性格」だったり「数値」を可視化

## サービスURL

`???`

Herokuに挙げたら更新する

## ハンズオン資料

`???`

資料ができ次第、更新する

## ハンズオン準備

```
git clone https://github.com/pokohide/rails_app_for_tech_train
cd rails_app_for_tech_train
docker-compose up

# GET http://localhost:3000/
# => 「FATAL: database "rails_app_for_tech_train_development" does not exist」と表示されるはず

docker-compose run web rails db:create # DBを作成
```

