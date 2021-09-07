# Portable Streaming Server for Stremio
This docker image allows you to run Stremio's streaming server as a standalone server (i.e. separate from the desktop application). For example, you could drop a streaming server container on a separate linux-based server and remotely connect your Stremio interface to it. Or, you could run this together with Stremio 5 (a.k.a [stremio-web](https://github.com/Stremio/stremio-web), which is currently in **alpha**).

If you're interested in building Stremio components yourself, check out the instructions at the [stremio-shell](https://github.com/Stremio/stremio-shell/) repository.

## Usage
`$ docker run -p 11470:11470 -v ${PWD}:/root/.stremio-server --name=stremio-streaming-server sleeyax/stremio-streaming-server`

## Developers
### Multi-Arch Builds
`$ docker buildx build --platform linux/arm64,linux/arm/v7 -t sleeyax/stremio-streaming-server .`

---

**This project is not maintained by or affiliated with Stremio.**
