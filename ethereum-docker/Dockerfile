FROM golang:alpine as builder

ENV BUILD_FROM_SRC 0

ADD gpgKey.key /

ADD install.sh /
RUN chmod +x /install.sh
RUN /install.sh


# -----------------------
FROM alpine:latest

RUN apk add --no-cache ca-certificates
COPY --from=builder /usr/local/bin/geth /usr/local/bin/

ADD entry.sh /
RUN chmod +x /entry.sh

EXPOSE 8545 8546 30303 30303/udp 30304/udp

ENTRYPOINT ["geth"]
