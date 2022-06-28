FROM ttbb/base

WORKDIR /opt/sh

RUN wget https://binaries.cockroachdb.com/cockroach-v22.1.2.linux-amd64.tgz  && \
mkdir -p /opt/sh/cockroach && \
tar -xf cockroach-v22.1.2.linux-amd64.tgz -C /opt/sh/cockroach --strip-components 1 && \
rm -rf cockroach-v22.1.2.linux-amd64.tgz

ENV COCKROACH_HOME /opt/sh/cockroach

WORKDIR /opt/sh/cockroach
