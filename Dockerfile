FROM ruby:2.4.1
RUN apt-get update -qq \
    && apt-get install -y postgresql-client apt-utils \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get install -y nodejs
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
COPY . /myapp
RUN npm install webpack@3.10.0 -g --ignore-warnings
RUN npm install
RUN gem install bundler -v 2.1.4
RUN bundle _2.1.4_ install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "127.0.0.1"]

