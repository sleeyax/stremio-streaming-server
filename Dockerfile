FROM node:14.15.0-alpine

WORKDIR /stremio

ARG VERSION=master

RUN apk add --no-cache wget ffmpeg
RUN wget http://dl.strem.io/four/${VERSION}/server.js
RUN wget http://dl.strem.io/four/${VERSION}/stremio.asar
RUN sed -i 's/if (ok) enginefs.sendCORSHeaders/if (true) enginefs.sendCORSHeaders/g' server.js

VOLUME ["/root/.stremio-server"]

EXPOSE 11470

ENTRYPOINT [ "node", "server.js" ]
