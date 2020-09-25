docker run -d -p 5900:5900 --name buster-vnc --hostname buster-vnc -e TZ=Europe/Rome -e "VNC_PASSWORD=choose-password" corpie/debian-buster-vnc:latest


