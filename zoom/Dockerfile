FROM archlinux:latest
LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

RUN pacman --noconfirm -Syu && \
    pacman -S --noconfirm fontconfig glib2 ibus libpulse libsm libx11 libxcb \
    			  libxcursor libxfixes libxi libxkbcommon-x11 libxrandr libxrender libxshmfence \
			  libxslt mesa nss ttf-font xcb-util-image xcb-util-keysyms picom \
			  pulseaudio-alsa qt5-webengine xcompmgr wget
RUN wget https://zoom.us/client/latest/zoom_x86_64.pkg.tar.xz && pacman -U --noconfirm zoom_x86_64.pkg.tar.xz && \
	 rm zoom_x86_64.pkg.tar.xz
CMD ["zoom"]
