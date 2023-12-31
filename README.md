# README

## アプリケーション名
PawDo

## アプリケーション概要
ねこの足跡で楽しく効率的なToDo管理アプリです。  
予定漏れ防止を解決したい個人のため作成しました。  
ユーザーはPCで通知を受けることができます。  
入力項目の少ないフォームとねこの足跡付箋を使用して一覧表示にすることで可愛く見やすいのが特徴です。

## URL
https://pawdo.onrender.com

## Basic認証
ID:admin  
Pass:3456  

## テスト用アカウント
ID:test@test.com  
Pass:a11111  

## 利用方法
1.トップページよりユーザー新規登録を行う  
2.予定作成ボタンから予定を入力し、登録する  
3.TODO一覧を別ウインドウで開いて表示し、リマインドを受ける

## アプリケーションを作成した背景
自分が別の作業に没頭すると予定を忘れてしまうことが多く、PCでリマインドしてくれるアプリが欲しいと感じました。
似たようなPCアプリはあるが本当に簡単な入力ではなく、時間に気づきにくいことが多かった為です。
スマホアプリは入力しやすいですが、仕事中にスマホをみていないので予定に気付けず、予定が漏れることがありました。
自分の為に作ってみようと思い、作成しました。

## 洗い出した要件
https://docs.google.com/spreadsheets/d/1rqLCxmYMil92SZaM6ogCPJZP726x6PkYQMMLGkKFApA/edit?usp=sharing

## 実装した機能についての画像やGIF　及びその説明
・ユーザー登録機能  
・シンプルカレンダーによるカレンダー表示機能  
・予定入力ボタン  
・予定入力フォーム  
（予定、予定時間、色分け、メモ）  
・別タブでのTODO一覧表示、削除    

- TOPページ
[![Image from Gyazo](https://i.gyazo.com/35b103b1fb15b46e9b9b03493fbc15dc.png)](https://gyazo.com/35b103b1fb15b46e9b9b03493fbc15dc)
- メインページ
[![Image from Gyazo](https://i.gyazo.com/a5ef46f0da80b2fc5d0ffbc13244d29b.png)](https://gyazo.com/a5ef46f0da80b2fc5d0ffbc13244d29b)
- TODO表示画面
[![Image from Gyazo](https://i.gyazo.com/58ef2fa75fff8a8eae110b8a69198ee2.png)](https://gyazo.com/58ef2fa75fff8a8eae110b8a69198ee2)

## 実装予定の機能
時間になったら通知音を鳴らす

## データベース設計
[![Image from Gyazo](https://i.gyazo.com/28a96aeacf9c3f1397d014697159a184.png)](https://gyazo.com/28a96aeacf9c3f1397d014697159a184)

## 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/990f141051908c45b8304306bbb01836.png)](https://gyazo.com/990f141051908c45b8304306bbb01836)


## 開発環境
- フロントエンド
- バックエンド
- インフラ
- テスト
- テキストエディタ
- タスク管理

## ローカルでの動作方法
以下のコマンドを順に実行。  
% git clone https://github.com/pazuru25/pawdo.git  
% cd pawdo.git  
% bundle install  
% yarn install  


## 工夫したポイント
手軽に入力できて画面の端で時間になったら点滅通知でリマインドできるアプリを作成しました。
TODO一覧から予定を削除してもカレンダーには予定が残る様にしました。