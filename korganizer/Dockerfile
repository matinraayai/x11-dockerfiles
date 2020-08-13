FROM archlinux:latest
LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"
RUN pacman --noconfirm -Syu && pacman -S --noconfirm korganizer breeze noto-fonts \
			  noto-fonts-cjk noto-fonts-emoji
CMD ["korganizer"]
