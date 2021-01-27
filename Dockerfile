FROM alpine:3.13

RUN apk update && \
    apk add --no-cache pulseaudio pulseaudio-alsa

COPY ["default.pa", "daemon.conf", "/etc/pulse/"]
COPY asound.conf /etc/asound.conf

ENTRYPOINT [ "pulseaudio", "-v" ]
