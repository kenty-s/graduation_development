FROM ruby:3.2.0

RUN apt-get update -qq && \
    apt-get install -y nodejs postgresql-client

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN gem install bundler && bundle install --jobs 4 --retry 3

COPY . .

# Tailwind CSS
RUN bundle exec rails assets:precompile
RUN bundle exec rails tailwindcss:build

EXPOSE 3000

COPY bin/docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

CMD ["docker-entrypoint.sh"]