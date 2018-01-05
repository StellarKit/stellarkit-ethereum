FROM golang:alpine as builder

RUN apk add --update go git make gcc musl-dev linux-headers ca-certificates && \
  git clone --depth 1 --branch release/1.7 https://github.com/ethereum/go-ethereum && \
  cd go-ethereum && make all

FROM alpine:latest

RUN apk add --no-cache ca-certificates
COPY --from=builder /go-ethereum/build/bin/* /usr/local/bin/

EXPOSE 8545 8546 30303 30303/udp 30304/udp

ENTRYPOINT ["/geth"]
