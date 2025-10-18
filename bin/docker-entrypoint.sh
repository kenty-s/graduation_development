#!/bin/bash
set -e

# マイグレーション実行
bundle exec rails db:migrate

# データが0件の時だけシード実行
if [ "$(bundle exec rails runner 'puts Dish.count')" = "0" ]; then
  echo "Database is empty. Running seeds..."
  bundle exec rails db:seed
fi

# サーバー起動
exec bundle exec rails server -b 0.0.0.0
