FROM php:cli-alpine
MAINTAINER Robin van der Linde (robin.vanderlinde@gmail.com)
RUN apk add --no-cache git npm composer php-sqlite3
RUN git clone --recurse-submodules https://github.com/openknowledgebe/equalstreetnames.git
RUN cd equalstreetnames && composer install
RUN cd equalstreetnames && npm install
RUN cd equalstreetnames && npm run build:leuven
ENTRYPOINT cd equalstreetnames && npm run serve:leuven