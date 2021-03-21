# 変顔大喜利
自分の変顔や、好きな変顔の画像を大喜利をする面白いサービスです

## 投稿画面

<img src="https://user-images.githubusercontent.com/76856353/111902736-2d943000-8a82-11eb-8f36-1520c33a2f8c.png" alt="![3のコピー]" width="50%">

## 投稿一覧

<img src="https://user-images.githubusercontent.com/76856353/111902697-0b9aad80-8a82-11eb-963c-4af6d291094d.png" alt="![1のコピー]" width="25%">

# URL(変顔大喜利)
https://hengao-ogiri.herokuapp.com/ <br >

# 使用技術
- Ruby 2.6.6
- Ruby on Rails 6.1.2
- MySQL
- JavaScrict
- HTML
- CSS
- Docker/Docker-compose
- Sequel Pro
- Heroku
- GitHub
- RSpec
- Web API(MediaDevices.getUserMedia)


# Setup
  このリポジトリをローカルに取り込む</br>
  git clone https://github.com/sogo7/my_servise

  dockerのセットアップ方法

  コンテナをbuildする</br>
  docker-compose build

  コンテナを起動</br>
  docker-compose up -d

  DBを作成する
  docker-compose run web rails db:create db:migrate
  
  DBに変更があった場合
  現在のDBを削除し、DBを再構築する
  docker-compose run web rails db:migrate:reset

  開発データを投入する
  docker-compose run web rails db:seed

  Gemfileの変更を取り込む
  docker-compose build

 
 



