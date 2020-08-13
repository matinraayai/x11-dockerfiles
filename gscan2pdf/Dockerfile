FROM ubuntu:bionic
LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

RUN apt-get update && apt-get upgrade -y && apt-get -y install gscan2pdf okular breeze --no-install-recommends && \
    rm -rf /var/lib/apt/lists/* && apt-get clean
COPY ./imagescan-bundle-ubuntu-18.04-3.62.0.x64.deb.tar.gz /imagescan.deb.tar.gz
RUN tar xvf imagescan.deb.tar.gz && cd imagescan-bundle-ubuntu-18.04-3.62.0.x64.deb && ./install.sh
RUN cd .. && rm -rf imagescan-bundle-ubuntu-18.04-3.62.0.x64.deb imagescan.deb.tar.gz
CMD ["gscan2pdf"]
