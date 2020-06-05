FROM nvidia/opengl:1.0-glvnd-runtime-ubuntu18.04
# Calibre Installation
RUN apt-get update && apt-get install -y wget sudo python \
    python-pyqt5 xdg-utils xz-utils locales ca-certificates \
    libgtk-3-0 libglib2.0-0 libexpat1 libx11-6 libfontconfig1 \
    libgl1-mesa-glx libgl1-mesa-dri libgl1 breeze okular \
    --no-install-recommends && rm -rf /var/lib/apt/lists/* && apt-get clean 

RUN sudo -v && wget --no-check-certificate -nv -O- \
    https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

COPY local.conf /etc/fonts/local.conf
CMD ["calibre"]
