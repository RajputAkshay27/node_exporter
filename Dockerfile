ARG ARCH="arm64"
ARG OS="linux"
FROM quay.io/prometheus/busybox-${OS}-${ARCH}:latest

USER root

ARG ARCH="arm64"
ARG OS="linux"
ADD --chown=nobody .build/${OS}-${ARCH}/node_exporter /bin/node_exporter

EXPOSE      9100
USER        nobody
ENTRYPOINT  [ "/bin/node_exporter" ]