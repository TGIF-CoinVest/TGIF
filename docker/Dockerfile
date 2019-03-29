FROM debian:stretch
LABEL maintainer="CoinVest Developers <dev@coinvest.org>"
LABEL description="Dockerised CoinVestCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
