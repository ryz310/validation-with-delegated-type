# validation-with-delegated-type

Ruby on Rails の delegated_type を使用したモデルで validation を扱うための検証用リポジトリです。
こちらでブログ記事を書いています。

:link: [DelegatedType のバリデーションが上手く動かない件](https://zenn.dev/socialplus/articles/317d29c9d46da1)

## 動作確認用スクリプト

_新規作成の場合_

```rb
MessageSendingConfig.create!(
  enabled: true,
  configurable: BackInStockAlert.new(api_key: '')
)
```

_更新の場合_

```rb
config = MessageSendingConfig.create!(
  enabled: false,
  configurable: BackInStockAlert.new(api_key: '')
)

config.configurable.api_key = ''
config.update!(enabled: true)
```
