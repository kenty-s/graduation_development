FROM ruby:3.2.0

RUN apt-get update -qq && \
    apt-get install -y nodejs postgresql-client

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN gem install bundler && bundle install --jobs 4 --retry 3

COPY . .

# Tailwind CSSをビルド（重要！）
RUN bundle exec rails assets:precompile
RUN bundle exec rails tailwindcss:build

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
