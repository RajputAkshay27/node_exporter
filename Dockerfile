ARG ARCH="arm64"
ARG OS="linux"
FROM quay.io/prometheus/busybox-${OS}-${ARCH}:latest

ARG ARCH="arm64"
ARG OS="linux"
ADD .build/${OS}-${ARCH}/node_exporter /bin/node_exporter

# RUN chmod -R 777 ./bin/node_exporter

EXPOSE      9100
USER        nobody
ENTRYPOINT  [ "/bin/node_exporter" ]