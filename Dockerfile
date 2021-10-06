FROM alpine:3.12.3

RUN apk update && \
    apk add --no-cache pulseaudio pulseaudio-alsa pulseaudio-utils

COPY ["default.pa", "daemon.conf", "/etc/pulse/"]
COPY asound.conf /etc/asound.conf

ENTRYPOINT [ "pulseaudio", "-v" ]
