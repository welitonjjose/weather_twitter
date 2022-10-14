FROM ruby:2.7.2

ENV BUNDLER_VERSION=2.0.2

RUN gem install bundler -v 2.0.2

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle config build.nokogiri --use-system-libraries
RUN bundle check || bundle install 

COPY . ./ 

ENTRYPOINT ["./docker-entrypoint.sh"]