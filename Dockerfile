FROM ghcr.io/linuxserver/baseimage-alpine:edge
LABEL maintainer=TechenPro

RUN apk add --update --no-cache python3 py3-pip
RUN pip install music-tag flask Flask-Assets pillow

WORKDIR /app

COPY /src /app
RUN cp /app/.config.example /app/.config

ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
