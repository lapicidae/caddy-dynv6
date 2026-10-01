# Define Caddy version as an argument with a default value.
# This allows overriding the version via CI/CD build arguments while providing a baseline for Dependabot.
ARG CADDY_VERSION=2.11.4

FROM caddy:${CADDY_VERSION}-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/KuyomieKurama/dynv6

FROM caddy:${CADDY_VERSION}-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
