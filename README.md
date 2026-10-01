[![Docker Build and Publish](https://github.com/lapicidae/caddy-dynv6/actions/workflows/ghcr-publish.yml/badge.svg)](https://github.com/lapicidae/caddy-dynv6/actions/workflows/ghcr-publish.yml)
[![GitHub License](https://img.shields.io/github/license/lapicidae/caddy-dynv6)](https://github.com/lapicidae/caddy-dynv6/blob/main/LICENSE)

# caddy-dynv6

Please see the official [Caddy Docker Image](https://hub.docker.com/_/caddy) for deployment instructions.

Builds are available at the GitHub Container Registry (GHCR):

- GHCR: [`ghcr.io/lapicidae/caddy-dynv6`](https://github.com/lapicidae/caddy-dynv6/pkgs/container/caddy-dynv6)

Few things to note:

You should add `DYNV6_API_TOKEN` as an environment variable or you can directly replace it with the actual token in your Caddy configuration. Example:

```caddyfile
tls {
    dns dynv6 {env.DYNV6_API_TOKEN}
}
```
