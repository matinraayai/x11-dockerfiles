FROM nvidia/opengl:1.2-glvnd-runtime-ubuntu20.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -y && apt-get install -y wget libasound2 libatk-bridge2.0-0 \
 		libatk1.0-0 libatspi2.0-0 libcairo2 libcups2 libgdk-pixbuf2.0-0 \
		libglib2.0-0 libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 libpangocairo-1.0 \
		libsecret-1-0 libxcomposite1 libxcursor1 libxi6 libxrandr2 libxrender1 \
		libxss1 libxtst6 gnome-keyring libfontconfig1 libdbus-1-3 pulseaudio \
		gnome-keyring

RUN wget https://go.skype.com/skypeforlinux-64.deb && dpkg -i skypeforlinux-64.deb && rm skypeforlinux-64.deb
COPY run-skype-and-wait-for-exit /usr/local/bin
CMD ["run-skype-and-wait-for-exit"]