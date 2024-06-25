ARG ARCH="amd64"
ARG OS="linux"
FROM quay.io/prometheus/busybox-${OS}-${ARCH}:latest

ARG ARCH="amd64"
ARG OS="linux"
COPY .build/${OS}-${ARCH}/node_exporter /bin/node_exporter

RUN ["sh", "-c", "chmod +x /bin/node_exporter"]
RUN ["sh", "-c", "ls -l /bin/node_exporter"]

EXPOSE      9100
USER        nobody
ENTRYPOINT  [ "sh", "-c","./bin/node_exporter" ]