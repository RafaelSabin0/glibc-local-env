FROM alpine:latest

RUN apk update 


RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub

RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.35-r1/glibc-2.35-r1.apk && \
    apk add --allow-untrusted glibc-2.35-r1.apk

RUN apk add --no-cache tesseract-ocr

RUN apk add --no-cache gcc g++

RUN apk add --no-cache opencv-dev

# Limpeza
RUN rm -f /etc/apk/keys/sgerrand.rsa.pub && \
    rm -rf /var/cache/apk/*

