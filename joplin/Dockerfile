FROM archlinux:latest
LABEL maintainer "Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

RUN pacman --noconfirm -Syu && \
    pacman -S --noconfirm sudo gtk3 libappimage fontconfig nss \
    			  cantarell-fonts adobe-source-code-pro-fonts noto-fonts \
			  noto-fonts-cjk noto-fonts-emoji okular libreoffice-fresh \
			  shared-mime-info vlc perl-file-mimeinfo
							
COPY ./squashfs-root /joplin/squashfs-root/
RUN chmod -R o=rx /joplin/
CMD ["/joplin/squashfs-root/AppRun"]
