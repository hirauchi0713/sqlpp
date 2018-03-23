# sqlpp: SQL Pretty-Printer
これは日本語対応のSQL整形出力ツールです。
チームによる日本語SQLコーディングを支援します。

## ゴール
- [ ] 日本語識別子に対応している
- [ ] 予約語の大文字化・小文字化ができる
- [ ] 読みやすくインデントされる
- [ ] 標準SQLに対応する
- [ ] PostgresのSQLに対応する
- [ ] PL/PGSQLに対応する
- [ ] psqlに対応する

## AUTHOR
平内英之 <hirauchi@ideapump.net>

## LICENSE
MIT

# 開発

## .env
リポジトリオーナーは.envに以下の変数を環境に合わせて設定してください。
```
REPO=sqlpp
OWNER=hirauchi0713
GIT_SQLPP_TOKEN=xxxx
```

## コマンド
```
# 指定のプルリクをtest済みにします
$ yarn pr-test-ok <pr-number>
```
