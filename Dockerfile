FROM alpine:3.5

MAINTAINER Will Streeter <will.streeter@gmail.com>

#Install node


ENV APK_MIRROR http://dl-4.alpinelinux.org

RUN echo "$APK_MIRROR/alpine/v3.5/main" >> /etc/apk/repositories && \
    apk add --update-cache \
        autoconf \
        automake \
        ca-certificates \
        curl \
        g++ \
        gcc \
        linux-headers \
        libgcc \
        libstdc++ \
        nasm \
        nodejs \
        make \
        python \
        tar

RUN rm -rf /tmp/* /var/cache/apk/* \
    && npm config set progress false -g \
    && mkdir -p /app

ENV HOME /app