ARG UBUNTU_VERSION=24.04
FROM ubuntu:${UBUNTU_VERSION}
ARG FASTNETMON_VERSION
ARG FASTNETMON_DISTR_NAME


COPY resources/fastnetmon.asc /etc/apt/trusted.gpg.d/fastnetmon.asc
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y wget apt-transport-https systemd iproute2 gpg msmtp pwgen curl strace aggregate whois tcpdump mtr-tiny && \
    echo "deb [arch=amd64] https://repo.fastnetmon.com/fastnetmon_ubuntu_${FASTNETMON_DISTR_NAME} ${FASTNETMON_DISTR_NAME} fastnetmon" > /etc/apt/sources.list.d/fastnetmon.list &&\
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y fastnetmon=$FASTNETMON_VERSION

CMD exec /opt/fastnetmon/app/bin/fastnetmon
