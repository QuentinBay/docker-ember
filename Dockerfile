FROM node:5
MAINTAINER quentinbayart

COPY ./conf/.gitconfig /root/.gitconfig
COPY ./sbin/start-ember /usr/sbin/start-ember

RUN npm install -g bower \
    && npm install -g ember-cli

VOLUME DATA/app

ENTRYPOINT ["/usr/sbin/start-ember"]
