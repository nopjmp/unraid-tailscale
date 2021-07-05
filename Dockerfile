FROM alpine:edge
ADD https://github.com/just-containers/s6-overlay/releases/download/v2.2.0.3/s6-overlay-amd64-installer /tmp/
RUN chmod +x /tmp/s6-overlay-amd64-installer && /tmp/s6-overlay-amd64-installer /

RUN apk add --no-cache ca-certificates-bundle tailscale=1.10.0-r0
COPY rootfs /
ENTRYPOINT ["/init"]
EXPOSE 8088
CMD []
