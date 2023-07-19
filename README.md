# README

## アプリケーション名
PawDo

## アプリケーション概要
ねこの足跡で楽しく効率的なToDo管理アプリです。

予定漏れ防止を解決したい個人のため作成しました。

ユーザーはPCで通知を受けることができ、入力項目の少ないフォームと既存のサービスではないねこの足跡付箋を使用して一覧表示にすることで見やすいのが特徴です。

## URL
後日記載します

## テスト用アカウント
後日記載します

## 利用方法
1. トップページよりユーザー新規登録を行う
2. 予定作成ボタンから予定を入力し、登録する
3. TODO一覧を別ウインドウで開いて表示し、リマインドを受ける

## アプリケーションを作成した背景
自分が別の作業に没頭すると予定を忘れてしまうことが多く、PCでリマインドしてくれるアプリが欲しいと感じました。

似たようなPCアプリはあるが直感的な入力がしにくく、リマインドに気づきにくいことが多かった為です。

スマホアプリは入力しやすいですが、仕事中にスマホをみていないので予定に気付けず、予定が漏れることがありました。

欲しいものがないなら自分で作ってみようと思い、作成しました。

## 洗い出した要件
| 機能<br>（大分類） | 機能<br>（小分類） | 目的 | 要件 | 所要時間の目安<br>（単位：時間[h]） | 優先順位<br>（高：3、中：2、低：1） |
| --- | --- | --- | --- | --- | --- |
| ユーザー新規登録機能 | ログイン | 個人アカウントへログインして予定を確認できる | ログインしたらメインのページへ遷移すること<br>ログインしたら登録した内容が確認できること | 3 | 3 |
|  | ログアウト | 内容を確認できないよう閉じる | ログアウトしたらトップページへ遷移すること | 3 | 3 |
| カレンダー | 月の予定表示機能 | 月毎に予定があるか見やすく表示 | 月のカレンダーは予定のある日に足跡マークが出ること<br>足跡をクリックすると今日の予定表示へ遷移すること<br>予定のない日をクリックすると予定作成フォームへ遷移すること | 20 | 3 |
|  | 週の予定表示機能 | 週毎に予定を表示 | カレンダーの予定をクリックすると削除と編集ができること | 30 | 3 |
|  | 今日の予定表示機能 | 今日の予定を表示 | カレンダーの予定をクリックすると削除と編集ができること<br>今日の予定は最大10件まで登録と表示ができること | 10 | 3 |
| TODO一覧 | TODO一覧表示 | 付箋形式で今日の予定を表示 | 付箋の予定をクリックすると削除と編集ができること<br>最大10件まで表示ができること<br>付箋は10色で色分けができること<br>別ウインドウで開いて置けること | 20 | 2 |
|  | 通知機能 | ユーザーが予定時刻にリマインドを受けられる | 通知時刻に通知音が鳴るように設定すること<br>通知時刻に背景変更が変わるように設定すること<br>最小化時の通知時刻にポップアップで通知ができるよう設定すること | 10 | 2 |
| 予定入力フォーム | タイトル | 予定の内容がわかるようにする | 予定（タイトル）が手入力できること<br>繰り返しの予定（タイトル）がプルダウンでも選択して入力できること<br>チェックボックスで選択して上記どちらかを選べること | 5 | 3 |
|  | 日時入力 | リマインドを受ける時間を指定 | 日時（○月○日　通知予定時間00:00）の入力ができること<br>日付けのデフォルトは今日の日付が表示されること<br>日付は日付をクリックして出てくるカレンダーから選択できること<br>時間は手入力できること<br>時間のデフォルトは00:00で表示されること | 10 | 3 |
|  | 付箋色分け | 付箋によってみやすくする | 予定は10色で色分けができること<br>色分けのデフォルトは白で表示されること | 10 | 2 |
|  | 通知予定時間 | 通知を予定時間より前に受けられるように設定する | 通知予定時間（通知なし・5・10・15分前・1時間前）が選択できること | 15 | 3 |
|  | 通知繰り返し日程 | 通知を繰り返し使用したい場合に設定する | 繰り返し日程（通知なし・毎日・毎週・毎月・毎年）が選択できること | 15 | 3 |
|  | 通知方法 | 3種類の通知方法をチェックを入れることで設定する | 通知時刻に通知音が鳴るように設定すること<br>通知時刻に背景変更が変わるように設定すること<br>最小化時の通知時刻にポップアップで通知ができるよう設定すること | 10 | 1 |
|  | 予定詳細メモ | タイトル以外に詳細をメモできる（任意） | 予定の詳細をメモできること | 5 | 1 |
|  | 登録 | 予定をカレンダーへ反映させる | 登録ボタンで予定を今日・今週・今月のカレンダーへ反映できること | 3 | 3 |
| 予定入力後フォーム | 編集・削除 | 予定を入力した後に同じフォームで編集削除を行う | 週と１日のカレンダーより予定をクリックして編集と削除のボタンが<br>出る様になった予定入力フォームへ遷移できること | 5 | 2 |
| 繰り返し予定機能 | 予定タイトル登録 | 予定のタイトルを繰り返し使いたいものを10件登録<br>しておける | 予定入力フォームのタイトル選択へ反映されること | 5 | 2 |

## 実装した機能についての画像やGIF　及びその説明
- 予定入力ボタン
- 予定入力フォーム（予定、予定時間、色分け、PCとスマホへのリマインド表示チェック）

## 実装予定の機能
現在、カレンダー表示機能を実装中。

今後、通知機能と繰り返しタイトル機能を実装予定。

## データベース設計
[![Image from Gyazo](https://i.gyazo.com/85d0b5f9935f76b87c8c48ad14f87b99.png)](https://gyazo.com/85d0b5f9935f76b87c8c48ad14f87b99)

## 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/09dcfbe40bf776d3c215ff63d241d430.png)](https://gyazo.com/09dcfbe40bf776d3c215ff63d241d430)


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
後日記載します