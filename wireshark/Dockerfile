FROM archlinux:latest
LABEL maintainer "Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

RUN pacman --noconfirm -Syu && pacman -S --noconfirm sudo gtk3 wireshark-qt
							
CMD ["wireshark"]
