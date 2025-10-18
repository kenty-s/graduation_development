FROM ruby:3.2.0

RUN apt-get update -qq && \
    apt-get install -y nodejs postgresql-client

ENV RAILS_ENV=production

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN gem install bundler && bundle install --jobs 4 --retry 3

COPY . .

# Tailwind CSS
RUN bundle exec rails assets:precompile
RUN bundle exec rails tailwindcss:build

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
