FROM node:14.15.0-alpine

WORKDIR /stremio

ARG VERSION=v4.4.148

RUN apk add --no-cache wget ffmpeg
RUN wget http://dl.strem.io/four/v${VERSION}/server.js
RUN wget http://dl.strem.io/four/v${VERSION}/stremio.asar

VOLUME ["/root/.stremio-server"]

EXPOSE 11470

ENTRYPOINT [ "node", "server.js" ]
