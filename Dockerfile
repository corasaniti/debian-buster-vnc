FROM debian:buster

LABEL maintainer "piero_cory@hotmail.com"

RUN apt-get update && \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    x11vnc \
    xvfb \
    xterm \
    fluxbox \
    curl \
    lsb-release && \
    apt-get clean

# Create and configure the VNC user
ARG VNCPASS
ENV VNCPASS ${VNCPASS:-secret}

RUN useradd remote --create-home --shell /bin/bash --user-group --groups adm,sudo && \
    echo "remote:$VNCPASS" | chpasswd

EXPOSE 80
EXPOSE 5900

VOLUME /data
WORKDIR /data

COPY setup.sh /

ENTRYPOINT ["bash","/setup.sh"]
CMD ["xterm"]
