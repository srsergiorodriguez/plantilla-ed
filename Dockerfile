FROM ruby:3.2.2

# Install apt dependencies
RUN apt-get update -y
RUN apt-get install -y --no-install-recommends \
                       build-essential \
                       git \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /ed
COPY Gemfile* *.gemspec /ed/
WORKDIR /ed
RUN bundle

EXPOSE 4000
