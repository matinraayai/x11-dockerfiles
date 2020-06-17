FROM matinraayai/anaconda
LABEL maintainer "Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

ARG VERSION=2020.1.2
RUN apt-get update && apt-get install -y wget ca-certificates libxrender1 libxtst6 breeze \
    libxtst-dev libxext-dev libxrender-dev libfreetype6-dev libfontconfig1 \
    --no-install-recommends && \
    apt-get clean && rm -rf /var/lib/apt/lists/* 
RUN wget https://download-cf.jetbrains.com/python/pycharm-professional-$VERSION.tar.gz && \
    tar xfa pycharm-professional-$VERSION.tar.gz && rm pycharm-professional-$VERSION.tar.gz \
    mv /pycharm-$VERSION /pycharm
ENTRYPOINT ["/pycharm/bin/pycharm.sh"]