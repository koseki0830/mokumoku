# README

## 環境構築
```
$ bundle install --without=production
$ bin/rails db:setup
$ yarn install
$ bin/webpack
$ bin/rails s
```

## 事業をエンジニアリングしよう提案編の回答は以下に記述してください

## 選択した事業側の課題
直近一年間で、2回以上もくもく会に参加してくれた人は利用者全体の1%のみ。もくもく会で気の合う仲間を見つけられなかったのではないか？

## 提案内容
マイページに、ユーザーが過去に参加したもくもく会を表示する。
また、他のユーザーが過去に参加したもくもく会を見ることができるようにする。
現状では、もくもく会に参加予定の人がどのような人かわからないこと・その人がどのような目的で参加しているのかがわかりずらいため、過去に参加したもくもく会を表示することで、その人の目的や趣向が可視化でき、気の合うユーザー同士のマッチングが期待できる。

## 実装方針
- マイページに、自分が過去に参加したもくもく会のリンクが表示されるようにする。
- イベント詳細の主催者・参加者の名前をクリックすると、その人が過去に参加したイベント一覧が表示されるようにする。
