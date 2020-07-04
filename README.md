# README

# Memosearch

## 概要
画像付きでメモを投稿できるサイトです。過去に投稿した物を確認できるアプリをコンセプトに作成しました。

## 制作背景(意図)
仕事等で覚えておきたい事はメモ帳やメモアプリ等に入力します。しかし、必要な時に見つけるのに時間がかかったり、そもそも見つけられず、作った事自体を忘れてしまい新しく同じものを作ってしまう事がありませんか？
これらに対して覚えておきたい事をこのアプリに保存する事で簡単に調べたり確認する事ができるようにできる
アプリをコンセプトに作成しました。

## 本番環境
### デプロイ先
https://memosearch.herokuapp.com/

### テストアカウント
アドレス：aaa@aaa
ID：12345678a

## Basic認証
ユーザー名：test
パスワード：2222
## DEMO
![トップページ](https://github.com/delfin378/memosearch/blob/master/%E3%83%88%E3%83%83%E3%83%95%E3%82%9A%E3%83%98%E3%82%9A%E3%83%BC%E3%82%B7%E3%82%99.png)

![投稿ページ](https://github.com/delfin378/memosearch/blob/master/%E6%8A%95%E7%A8%BF%E3%83%98%E3%82%9A%E3%83%BC%E3%82%B7%E3%82%99.png)

## 今後実装したい機能
・検索機能
・マイページ機能

## 使用技術(開発環境)
Ruby 2.5.1
Ruby on Rails 2.5.3
MySQL
Github
Heroku
Visual Studio Code


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

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|text|null: false|
|text|text|null: false|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to : user
- belongs_to : group