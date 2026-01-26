#!/usr/bin/env bash
set -o errexit

bundle install
bundle exec rails assets:precompile
bundle exec rails tailwindcss:build
bundle exec rails db:migrate
bundle exec rails db:seed
