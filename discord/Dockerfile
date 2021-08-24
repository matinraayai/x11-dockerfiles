FROM ubuntu:latest
LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"
ARG DISCORD_VERSION=0.0.15
RUN apt-get update && apt-get -y install --no-install-recommends wget ca-certificates pulseaudio libatomic1 \
		      libgconf-2-4 libnotify4 libnspr4 libnss3 libxss1 libxtst6 libappindicator1 libc++1 libatk-bridge2.0-0 \
		      libgtk-3-0 libxcb-dri3-0 libdrm2 libgbm1
RUN wget https://dl.discordapp.net/apps/linux/$DISCORD_VERSION/discord-$DISCORD_VERSION.deb && dpkg -i discord-$DISCORD_VERSION.deb \
	 && rm discord-$DISCORD_VERSION.deb
CMD ["discord"]
