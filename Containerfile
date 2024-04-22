FROM quay.io/fedora/fedora:41@sha256:4e4fab56ed3e4819a44c729b390238f02f0c097daa22995d86d3c8175f40e16c

LABEL org.opencontainers.image.authors="CRCQE <devtools-cdkqe@redhat.com>"

RUN dnf install -y openssh-clients sshpass zip jq

COPY lib/common/* lib/os/ entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]