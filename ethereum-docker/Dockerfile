FROM golang:alpine as builder

RUN apk add --update go git make gcc musl-dev linux-headers ca-certificates
RUN  git clone --depth 1 --branch release/1.8 https://github.com/ethereum/go-ethereum
RUN cd /go/go-ethereum && make all

FROM alpine:latest

RUN apk add --no-cache ca-certificates
COPY --from=builder /go/go-ethereum/build/bin/* /usr/local/bin/

EXPOSE 8545 8546 30303 30303/udp 30304/udp

ENTRYPOINT ["geth"]
