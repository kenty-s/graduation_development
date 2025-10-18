FROM ruby:3.2.0

RUN apt-get update -qq && \
    apt-get install -y nodejs postgresql-client

ENV LANG=C.UTF-8
ENV TZ=Asia/Tokyo
ENV RAILS_ENV=production
ENV BUNDLE_PATH=/app/vendor/bundle
ENV BUNDLE_BIN=/app/vendor/bundle/bin
ENV PATH=$BUNDLE_BIN:$PATH

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN gem install bundler && bundle install --jobs 4 --retry 3

COPY . .

# Tailwind CSS
RUN bundle exec rails assets:precompile
RUN bundle exec rails tailwindcss:build

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
