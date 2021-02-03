FROM node:8.17.0-alpine

WORKDIR /stremio

RUN apk add --no-cache wget
RUN wget https://dl.strem.io/four/v4.4.111/server.js
RUN wget https://dl.strem.io/four/v4.4.111/stremio.asar

EXPOSE 11470

ENTRYPOINT [ "node", "server.js" ]
