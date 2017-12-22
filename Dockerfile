FROM golang:alpine as builder

RUN \
  apk add --update go git make gcc musl-dev linux-headers ca-certificates && \
  git clone --depth 1 --branch release/1.7 https://github.com/ethereum/go-ethereum && \
  (cd go-ethereum && make geth) && \
  cp go-ethereum/build/bin/geth /geth

FROM alpine:latest

COPY --from=builder /geth /geth

EXPOSE 8545
EXPOSE 30303

ENTRYPOINT ["/geth"]
