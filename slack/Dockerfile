FROM nvidia/opengl:1.2-glvnd-runtime-ubuntu20.04
LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

ARG SLACK_VERSION=4.10.3
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -y && apt-get install -y wget \
    firefox gconf2 gconf-service \
    libgtk2.0-0 libnotify4 libxtst6 libnss3 python gvfs-bin xdg-utils \
    libxss1 libappindicator1 libcurl4 libsecret-1-0 pulseaudio libxkbfile1 \
    libappindicator3-1 ca-certificates --no-install-recommends && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN wget "https://downloads.slack-edge.com/linux_releases/slack-desktop-$SLACK_VERSION-amd64.deb" && \
    dpkg -i "slack-desktop-$SLACK_VERSION-amd64.deb" && rm "slack-desktop-$SLACK_VERSION-amd64.deb"
COPY run-slack-and-wait-for-exit /usr/local/bin
CMD ["run-slack-and-wait-for-exit"]
