# syntax=docker/dockerfile:1.4
FROM golang:1.19.1-bullseye AS build
ARG PLUGIN_VERSION
RUN test -n "${PLUGIN_VERSION}"
RUN --mount=type=cache,target=/go/pkg/mod \
    CGO_ENABLED=0 \
    go install -ldflags "-s -w" -trimpath github.com/martinxsliu/protoc-gen-graphql@latest

FROM scratch
COPY --from=build --link --chown=root:root /etc/passwd /etc/passwd
COPY --from=build --link --chown=root:root /go/bin/protoc-gen-graphql /
USER nobody
ENTRYPOINT [ "/protoc-gen-graphql" ]
