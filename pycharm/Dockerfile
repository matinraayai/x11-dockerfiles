FROM matinraayai/anaconda
LABEL maintainer "Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

ARG VERSION=2020.1.2

# Upgrade
RUN apt-get update && apt-get -y upgrade
# Install dependencies
RUN apt-get install -y wget ca-certificates libxrender1 libxtst6 \
    --no-install-recommends
# Download and extract
RUN wget https://download-cf.jetbrains.com/python/pycharm-professional-$VERSION.tar.gz && \
    tar xfa pycharm-professional-$VERSION.tar.gz && rm pycharm-professional-$VERSION.tar.gz && \
    mv /pycharm-$VERSION /pycharm
# Icon and gtk-themes
RUN apt-get install -y libgtk-3-0 libglib2.0-0 libexpat1 libx11-6 libfontconfig1 \
	libgl1-mesa-glx libgl1-mesa-dri libgl1 breeze
# Cleanup
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["/pycharm/bin/pycharm.sh"]
