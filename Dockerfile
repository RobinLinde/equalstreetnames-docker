FROM php:cli-alpine
MAINTAINER Robin van der Linde (robin.vanderlinde@gmail.com)
RUN apk add --no-cache git npm composer php-sqlite3
RUN git clone --recurse-submodules https://github.com/robinlinde/equalstreetnames.git
RUN cd equalstreetnames && composer install
RUN cd equalstreetnames && npm install
ENTRYPOINT cd equalstreetnames && npm run serve:assen