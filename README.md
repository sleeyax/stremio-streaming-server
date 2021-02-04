# Portable Streaming Server for Stremio
This docker image allows you to run Stremio's streaming server as a standalone server (i.e. separate from the desktop application).

Usage: `docker run -p 11470:11470 --name=stremio-streaming-server sleeyax/stremio-streaming-server`

FYI: you can build Stremio yourself by following instructions at the [stremio-shell](https://github.com/Stremio/stremio-shell/) repository.

**NOTE: this project is not maintained by or affiliated with Stremio. It's a community project.**

## Developer commands
Multi arch builds: `docker buildx build --platform linux/arm64,linux/arm/v7 -t sleeyax/stremio-streaming-server --push .`
