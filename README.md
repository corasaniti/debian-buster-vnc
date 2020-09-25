## A Debian Buster Docker Image with x-server, Fluxbox DE and vnc-server


#### Build Image From Dockerfile and Run from locally build
```
git clone https://github.com/corasaniti/debian-buster-vnc.git
cd debian-buster-vnc
docker build -t debian-buster-vnc .
docker run -d -p 5900:5900 -e "VNC_PASSWORD=choose-password" debian-buster-vnc
```

#### Alternatively Pull and Run Container from Docker Registry
``` 
docker run -d -p 5900:5900 \
           --name buster-vnc \
           --hostname buster-vnc \
           -e "VNC_PASSWORD=choose-password" \
           corpie/debian-buster-vnc:latest
```
