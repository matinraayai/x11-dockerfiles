FROM debian:bullseye-slim
LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

RUN apt-get update && apt-get -y upgrade && apt-get install -y \
    gnupg thunderbird pulseaudio fonts-noto breeze \
    fonts-noto-cjk dbus dbus-x11 kdocker --no-install-recommends && \
    rm -rf /var/lib/apt/lists/* \
    && apt-get clean 
COPY local.conf /etc/fonts/local.conf
# Set correct timezone
RUN rm -rf /etc/localtime && ln -s /usr/share/zoneinfo/US/New_York /etc/localtime
CMD ["kdocker -d 10 thunderbird"]
