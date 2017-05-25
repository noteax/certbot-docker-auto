FROM alpine:3.5
LABEL maintainer="Aidar <https://github.com/noteax>"

RUN \
    apk -U upgrade && \
    apk add --no-cache certbot

VOLUME /etc/letsencrypt
VOLUME /.well-known/acme-challenge

COPY crontab /var/spool/cron/crontabs/root
COPY certbot.ash /usr/local/bin/
RUN chmod +x /usr/local/bin/certbot.ash

CMD certbot && crond
