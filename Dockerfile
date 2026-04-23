ARG UBUNTU_VERSION=24.04
FROM ubuntu:${UBUNTU_VERSION}
ARG FASTNETMON_VERSION
ARG FASTNETMON_DISTR_NAME

ENV DEBIAN_FRONTEND=noninteractive

COPY resources/fastnetmon.asc /etc/apt/trusted.gpg.d/fastnetmon.asc
RUN apt-get update && \
    apt-get install --no-install-recommends -y ca-certificates wget systemd iproute2 gpg msmtp pwgen curl strace aggregate whois tcpdump mtr-tiny && \
    echo "deb [arch=amd64] https://repo.fastnetmon.com/fastnetmon_ubuntu_${FASTNETMON_DISTR_NAME} ${FASTNETMON_DISTR_NAME} fastnetmon" > /etc/apt/sources.list.d/fastnetmon.list &&\
    apt-get update && \
    apt-get install -y fastnetmon=$FASTNETMON_VERSION && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["/opt/fastnetmon/app/bin/fastnetmon"]
