## Stellar Ethereum  

### The simplest and cleanest Docker image for running ethereum

Build and run:
```
docker-compose build
docker-compose up -d
```

Defaults to testnet.

Edit docker-compose.yml for mainnet

Pull requests welcome!

docker-compose up -d

More details here: https://hub.docker.com/r/ethereum/client-go/

connect to testnet client
```
geth attach ipc://${HOME}/.ethereum/testnet/geth.ipc
```
