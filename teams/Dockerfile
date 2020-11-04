FROM nvidia/opengl:1.2-glvnd-runtime-ubuntu20.04
LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

ARG DEBIAN_FRONTEND=noninteractive
ARG TEAMS_VERSION=1.3.00.25560
RUN apt-get update && apt-get upgrade -y && apt-get install -y wget libasound2 libatk-bridge2.0-0 \
	libatk1.0-0 libcairo2 libcups2 libexpat1 libgdk-pixbuf2.0-0 \
	libglib2.0-0 libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 \ 
	libpangocairo-1.0-0 libsecret-1-0 libx11-6 libx11-xcb1 \
	libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 \
	libxi6 libxkbfile1 libxrandr2 libxrender1 libxss1 libxtst6 \
	libfontconfig1 libdbus-1-3 pulseaudio ca-certificates \
	--no-install-recommends && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN wget "https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_"$TEAMS_VERSION"_amd64.deb" \
    && dpkg -i "teams_"$TEAMS_VERSION"_amd64.deb"
COPY run-teams-and-wait-for-exit /usr/local/bin
CMD ["run-teams-and-wait-for-exit"]
