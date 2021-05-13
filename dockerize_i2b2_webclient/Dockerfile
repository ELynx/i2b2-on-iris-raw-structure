FROM php:apache

USER root

RUN apt update && apt-get -y install git

# check out i2b2-webclient
WORKDIR /opt
RUN git clone https://github.com/i2b2/i2b2-webclient.git

# add changes that make webclient refer to docker host, not localhost
WORKDIR /opt/i2b2-webclient
COPY dockerize.diff dockerize.diff
RUN git apply dockerize.diff

# copy to apache web folder
RUN cp -r * /var/www/html
