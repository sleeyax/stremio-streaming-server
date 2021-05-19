FROM node:14.15.0-alpine

WORKDIR /stremio

ARG VERSION=4.4.137

RUN apk add --no-cache wget ffmpeg
RUN wget https://dl.strem.io/four/v${VERSION}/server.js
RUN wget https://dl.strem.io/four/v${VERSION}/stremio.asar

VOLUME ["/root/.stremio-server"]

EXPOSE 11470

ENTRYPOINT [ "node", "server.js" ]
