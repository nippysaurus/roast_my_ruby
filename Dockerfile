FROM ruby:2.2.2

MAINTAINER Michael Dawson "nippysaurus@me.com"

RUN gem install rubocop
RUN gem install reek
RUN gem install brakeman
RUN gem install cane
RUN gem install flay # flay .
RUN gem install roodi

# rails only
#RUN gem install rails_best_practices

COPY roast /usr/local/bin/roast

RUN mkdir /code

WORKDIR /code

CMD roast
