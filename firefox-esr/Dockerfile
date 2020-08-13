FROM debian:bullseye-slim
LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

RUN apt-get update && apt-get install -y firefox-esr pulseaudio \
    breeze fonts-noto fonts-noto-cjk \
    --no-install-recommends \
	&& rm -rf /var/lib/apt/lists/* && apt-get clean 
COPY local.conf /etc/fonts/local.conf
CMD ["firefox"]
