#!/bin/bash
set -e

# 残っている pid を毎回掃除
rm -f tmp/pids/server.pid

# マイグレーション実行
bundle exec rails db:migrate

# 明示的に実行する時だけ seed
if [ "${RUN_SEEDS:-false}" = "true" ]; then
  echo "RUN_SEEDS=true -> db:seed"
  bundle exec rails db:seed
fi

# サーバー起動
exec bundle exec rails server -b 0.0.0.0
