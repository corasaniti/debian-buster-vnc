## A Debian Buster with x-server, Fluxbox DE and vnc-server


#### Build From Dockerfile
```docker build -t corpie/debian-buster-vnc```

#### Run Container from Docker Registry
``` 
docker run -d -p 5900:5900 \
           --name buster-vnc \
           --hostname buster-vnc \
           -e "VNC_PASSWORD=choose-password" \
           corpie/debian-buster-vnc:latest
```
