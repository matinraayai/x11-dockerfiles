# Based on the Dockerfile provided by https://github.com/jessfraz/dockerfiles/
FROM nvidia/opengl:1.0-glvnd-runtime-ubuntu18.04
LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

# Install Chromium
RUN apt-get update && apt-get -y upgrade && apt-get install -y \
      chromium-browser \
      chromium-browser-l10n \
      fonts-liberation \
      fonts-roboto \
      hicolor-icon-theme \
      libcanberra-gtk-module \
      libexif-dev \
      libgl1-mesa-dri \
      libgl1-mesa-glx \
      libpango1.0-0 \
      libv4l-0 \
      fonts-symbola \
      breeze \
      --no-install-recommends \
      && rm -rf /var/lib/apt/lists/* \
      && mkdir -p /etc/chromium.d/ \
      && /bin/echo -e 'export GOOGLE_API_KEY="AIzaSyCkfPOPZXDKNn8hhgu3JrA62wIgC93d44k"\nexport GOOGLE_DEFAULT_CLIENT_ID="811574891467.apps.googleusercontent.com"\nexport GOOGLE_DEFAULT_CLIENT_SECRET="kdloedMFGdGla2P1zacGjAQh"' > /etc/chromium.d/googleapikeys


# Add chromium user
RUN groupadd -r chromium && useradd -r -g chromium -G audio,video chromium \
    && mkdir -p /home/chromium/Downloads && chown -R chromium:chromium /home/chromium

# Run as non privileged user
USER chromium

ENTRYPOINT [ "/usr/bin/chromium-browser" ]
CMD [ "--user-data-dir=/data" ]
