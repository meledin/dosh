FROM ubuntu
MAINTAINER github.com/meledin

RUN apt-get update && apt-get install -y wget libssl0.9.8 libpam0g curl openssl docker.io zsh
RUN wget "https://shellinabox.googlecode.com/files/shellinabox_2.10-1_amd64.deb"

RUN dpkg -i shellinabox_2.10-1_amd64.deb

ADD do.zsh /do.zsh
RUN chmod a+rx /do.zsh

ADD boot.sh /boot.sh
RUN chmod a+rx /boot.sh

ADD style.css /style.css

EXPOSE 4200
CMD /boot.sh
